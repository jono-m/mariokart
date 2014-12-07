module N64_interpret(input clk_100mhz, rst, enabled, clk_1mhz,
					output A, B, Z, start, L, R,
					output dU, dD, dL, dR,
					output cU, cD, cL, cR,
					output signed [7:0] stickX, output signed [7:0] stickY, 
					inout controller_data);
	parameter send = 1'd0;
	parameter listen = 1'd1;

	parameter ZERO = 3;
	parameter ONE = 1;

	reg [7:0] command = 8'h01;
	
	reg dataReg = 1'bZ;
	assign controller_data = dataReg;

	reg state = send; 
	reg send2listen = 0;
	
	/////////////////////////////////////////////////////////////////////////////////
	// Counter registers //////
	/////////////////////////////////////////////////////////////////////////////////
	reg [1:0] usCount = 2'd0;		// counts up to 4us = 1 bit
	reg [8:0] clockCount = 9'd0;	// count the number of FPGA clock cycles
	reg [8:0] notClockCount = 9'd0;
	reg [3:0] sbitCount = 4'd7;		// counts bits during send state
	reg [5:0] lbitCount = 6'd32;	// counts down bits during listen state - the bit count represents the index of dataOut
    reg [24:0] holdCount = 25'd0;   // counts 20ms after rising edge of controller stop bit
	/////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////


	reg [31:0] dataOut = 32'd0;


	/////////////////////////////////////////////////////////////////////////////////
	// Output assignments /////
	/////////////////////////////////////////////////////////////////////////////////
	assign A = enabled ? dataOut[31] : 0;
	assign B = enabled ? dataOut[30] : 0;
	assign Z = enabled ? dataOut[29] : 0;
	assign start = enabled ? dataOut[28] : 0;
	assign dU = enabled ? dataOut[27] : 0;
	assign dD = enabled ? dataOut[26] : 0;
	assign dL = enabled ? dataOut[25] : 0;
	assign dR = enabled ? dataOut[24] : 0;

	// dataOut[23] not used
	// dataOut[22] not used 
	assign L = enabled ? dataOut[21] : 0;
	assign R = enabled ? dataOut[20] : 0;
	assign cU = enabled ? dataOut[19] : 0;
	assign cD = enabled ? dataOut[18] : 0;
	assign cL = enabled ? dataOut[17] : 0;
	assign cR = enabled ? dataOut[16] : 0;

	assign stickX = enabled ? dataOut[15:8] : 0;

	assign stickY = enabled ? dataOut[7:0] : 0;
	/////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////


        


	/////////////////////////////////////////////////////////////////////////////////
	// This block listens to the N64 data line and keeps track of what bit is being sent. 
	// Modifies:	lbitCount	6'd32
	/////////////////////////////////////////////////////////////////////////////////
	
	always @(negedge controller_data) begin
		if(rst) begin
			lbitCount <= 6'd32;
		end	
		else begin										
			case(state)
				listen: begin
                    if(notClockCount >= 9'd30) begin
                        lbitCount <= lbitCount - 6'd1;
                    end
				end
				send: begin 
                    lbitCount <= 6'd32;
				end
			endcase
		end
	end

	/////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////


    /////////////////////////////////////////////////////////////////////////////////
	// This block listens to the N64 data line and records 1's and 0's. 
	// Modifies:   dataOut 32'd0
	/////////////////////////////////////////////////////////////////////////////////

    always @(posedge controller_data) begin
        if(rst) begin
            dataOut = 32'd0;
        end
        else begin
            case(state)
                listen: begin
                    if(clockCount > 9'd80 && clockCount < 9'd115) begin
                        dataOut[lbitCount] <= 1;
                    end
                    else if(clockCount > 9'd280 && clockCount < 9'd315) begin 
                        dataOut[lbitCount] <= 0;
                    end
                end
            endcase
        end
    end

    /////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////
   




	/////////////////////////////////////////////////////////////////////////////////
	// This block counts clock cycles and updates state
	// Modifies:	state send
	//				clockCount 9'd0
	//              notClockCount 9'd0
	//              holdCount 25'd0
	/////////////////////////////////////////////////////////////////////////////////

	always @(posedge clk_100mhz) begin
		if(rst) begin 
			state <= send;
			clockCount <= 9'd0;
			notClockCount <= 9'd0;
			holdCount <= 25'd0;
		end
		else begin
			case(state)
				send: begin
					if(send2listen) state <= listen;
		          	clockCount <= 9'd0;
		          	notClockCount <= 9'd0;
				end
				
				listen: begin
                    if(controller_data) clockCount <= 9'd0;
                    else clockCount <= clockCount + 1; 
                    
                    if(~controller_data) notClockCount <= 9'd0;
                    else notClockCount <= notClockCount + 1;
                end
			endcase
		
            if(holdCount >= 25'd1000000) begin
                holdCount <= 25'd0;
                state <= send;
                clockCount <= 9'd0;
                notClockCount <= 9'd0;
            end
            else holdCount <= holdCount + 25'd1;            
        end
	end

	/////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////



	/////////////////////////////////////////////////////////////////////////////////
	// This block sends commands to the copntroller. The controller will respond the
	// command. 
	// Modifies:	dataLow 1'b0
	//				sbitCount 4'd7;
	// 				usCount 2'd0;
	// 				send2listen 1'd0;
	/////////////////////////////////////////////////////////////////////////////////

	reg dataLow = 1'd0;

	always @(posedge clk_1mhz) begin
		if(rst) begin
			dataLow <= 1'b0;
			sbitCount <= 4'd7;
			usCount <= 2'd0;
			send2listen <= 1'd0;

		end
		else begin
			case(state)
				send: begin
                    if(sbitCount[3] == 1'b0) begin
                        case(command[sbitCount])
                            1'b0: begin
                                if(usCount < ZERO) begin 			// send a zero (3us down, 1us up)
                                    dataLow <= 1'b1;
                                end
                                else begin
                                    dataLow <= 1'b0;
                                end
                            end
    
                            1'b1: begin
                                if(usCount < ONE) begin 			// send a one (1us down, 3us up)
                                    dataLow <= 1'b1;
                                end
                                else begin
                                    dataLow <= 1'b0;
                                end
                            end
                        endcase
                    end
					
					else if(sbitCount[3] == 1'b1) begin 				// Send a stop bit (1us donw, 2us up) and change to listen 
						if(usCount < ONE) begin
							dataLow <= 1'b1; 
						end
						else begin
							send2listen <= 1'b1;
							dataLow <= 1'b0;
						end

					end
	
					if(usCount == 2'b11) sbitCount <= sbitCount - 4'd1; 		// decrement sbitCount after every 4us bit
					usCount <= usCount + 2'd1; 										// usCount will reset every 4us 
				end

				listen: begin 
					dataLow <= 1'b0;
					usCount <= 2'd0;
					sbitCount <= 4'd7;
					send2listen <= 1'b0; 
				end
				
			endcase
		end
	end

	/////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////




	/////////////////////////////////////////////////////////////////////////////////
	// This block determines the state of the inout pin
	/////////////////////////////////////////////////////////////////////////////////

	always @(*) begin 						// Changes the output of the data line 
		if(dataLow) dataReg <= 1'b0;
		else dataReg <= 1'bZ;
	end

	/////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////

endmodule