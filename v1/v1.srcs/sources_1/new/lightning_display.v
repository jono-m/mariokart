`timescale 1ps / 1ns

module lightning_display(input clk_100mhz, input rst,
		input lightning_used, output reg lightning_display);
    reg [3:0] lightning_counter = 0;
    reg [26:0] lightning_clk_counter = 0;
	wire displaying_lightning = lightning_counter > 0;

    reg prev_lightning_used = 0;
    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            prev_lightning_used <= 0;
            lightning_counter <= 0;
            lightning_clk_counter <= 0;
        end
        else begin
            prev_lightning_used <= lightning_used;
            if(prev_lightning_used == 0 && lightning_used == 1) begin
                lightning_counter <= `LIGHTNING_FLASH_SECONDS;
            end
            if(displaying_lightning) begin
            	if(lightning_clk_counter < 100000000) begin
            		lightning_clk_counter <= lightning_clk_counter + 1;
            	end
            	else begin
            		lightning_clk_counter <= 0;
            		lightning_counter <= lightning_counter - 1;
            	end
            end
        end
    end

    reg [26:0] flash_counter = 0;
    always @(posedge clk_100mhz) begin
    	if(rst == 1) begin
    		lightning_display <= 0;
    		flash_counter <= 0;
    	end
    	else begin
    		if(displaying_lightning) begin
	    		if(flash_counter < 5000000) begin
	    			flash_counter <= flash_counter + 1;
	    		end
	    		else begin
	    			flash_counter <= 0;
	    			lightning_display <= ~lightning_display;
	    		end
            end
	    	else begin
	    		flash_counter <= 0;
	    		lightning_display <= 0;
	    	end
    	end
    end
endmodule