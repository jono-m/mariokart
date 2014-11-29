`timescale 1ns / 1ps

module physics_logic #(UPDATE_CYCLES = 1) (input clk_100mhz, input rst,
    // Game logic connections
    input [2:0] phase,
    input [2:0] selected_character,
    input [9:0] car1_x,
    input [8:0] car1_y,
    output reg lap_completed,

    // Controller connections
    input A,
    input B,
    input stickLeft,
    input stickRight,

    // Information map connections
    input [1:0] map_type,
    output reg [9:0] imap_x = 0,
    output reg [8:0] imap_y = 0,

    // Driver connections
    output forward,
    output backward,
    output turn_left,
    output turn_right, 
    output [1:0] speed
    );
  
    // -----------------
    // Compute deltas

    reg [9:0] car1_previous_x = 0;
    reg [9:0] car1_previous_y = 0;
    reg signed [10:0] car1_delta_x = 0;
    reg signed [9:0] car1_delta_y = 0;
    reg [9:0] car1_forward_prev_x = 0;
    reg [8:0] car1_forward_prev_y = 0;
    reg signed [10:0] car1_forward_delta_x = 0;
    reg signed [9:0] car1_forward_delta_y = 0;
    reg [9:0] car1_backward_prev_x = 0;
    reg [8:0] car1_backward_prev_y = 0;
    reg signed [10:0] car1_backward_delta_x = 0;
    reg signed [9:0] car1_backward_delta_y = 0;
    reg [9:0] car1_turn_left_prev_x = 0;
    reg [8:0] car1_turn_left_prev_y = 0;
    reg signed [10:0] car1_turn_left_delta_x = 0;
    reg signed [9:0] car1_turn_left_delta_y = 0;
    reg [9:0] car1_turn_right_prev_x = 0;
    reg [8:0] car1_turn_right_prev_y = 0;
    reg signed [10:0] car1_turn_right_delta_x = 0;
    reg signed [9:0] car1_turn_right_delta_y = 0;
    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            car1_previous_x <= 0;
            car1_previous_y <= 0;
            car1_delta_x <= 0;
            car1_delta_y <= 0;

            car1_forward_prev_x <= 0;
            car1_forward_prev_y <= 0;
            car1_forward_delta_x <= 0;
            car1_forward_delta_y <= 0;

            car1_backward_prev_x <= 0;
            car1_backward_prev_y <= 0;
            car1_backward_delta_x <= 0;
            car1_backward_delta_y <= 0;

            car1_turn_left_prev_x <= 0;
            car1_turn_left_prev_y <= 0;
            car1_turn_left_delta_x <= 0;
            car1_turn_left_delta_y <= 0;

            car1_turn_right_prev_x <= 0;
            car1_turn_right_prev_y <= 0;
            car1_turn_right_delta_x <= 0;
            car1_turn_right_delta_y <= 0;
        end
        else begin
            car1_previous_x <= car1_x;
            car1_previous_y <= car1_y;
            car1_delta_x <= $signed(car1_x) - $signed(car1_previous_x);
            car1_delta_y <= $signed(car1_y) - $signed(car1_previous_y);
            
            if(forward == 1) begin
                car1_forward_prev_x <= car1_x;
                car1_forward_prev_y <= car1_y;
                if(car1_forward_prev_x != car1_x) begin
                    car1_forward_delta_x <= $signed(car1_x) - $signed(car1_forward_prev_x);
                end
                if(car1_forward_prev_y != car1_y) begin
                    car1_forward_delta_y <= $signed(car1_y) - $signed(car1_forward_prev_y);
                end
            end
            if(backward == 1) begin
                car1_backward_prev_x <= car1_x;
                car1_backward_prev_y <= car1_y;
                if(car1_backward_prev_x != car1_x) begin
                    car1_backward_delta_x <= $signed(car1_x) - $signed(car1_backward_prev_x);
                end
                if(car1_backward_prev_y != car1_y) begin
                    car1_backward_delta_y <= $signed(car1_y) - $signed(car1_backward_prev_y);
                end
            end
            if(turn_left == 1) begin
                car1_turn_left_prev_x <= car1_x;
                car1_turn_left_prev_y <= car1_y;
                if(car1_turn_left_prev_x != car1_x) begin
                    car1_turn_left_delta_x <= $signed(car1_x) - $signed(car1_turn_left_prev_x);
                end
                if(car1_turn_left_prev_y != car1_y) begin
                    car1_turn_left_delta_y <= $signed(car1_y) - $signed(car1_turn_left_prev_y);
                end
            end
            if(turn_right == 1) begin
                car1_turn_right_prev_x <= car1_x;
                car1_turn_right_prev_y <= car1_y;
                if(car1_turn_right_prev_x != car1_x) begin
                    car1_turn_right_delta_x <= $signed(car1_x) - $signed(car1_turn_right_prev_x);
                end
                if(car1_turn_right_prev_y != car1_y) begin
                    car1_turn_right_delta_y <= $signed(car1_y) - $signed(car1_turn_right_prev_y);
                end
            end
        end
    end

    // -------------------
    // Compute map types at deltas.

    reg [1:0] car1_previous_map_type = 0;
    reg [1:0] car1_current_map_type = 0;
    wire [9:0] car1_forward_x = $signed(car1_x) + car1_forward_delta_x;
    wire [8:0] car1_forward_y = $signed(car1_y) + car1_forward_delta_y;
    reg [1:0] car1_forward_map_type = 0;
    wire [9:0] car1_backward_x = $signed(car1_x) + car1_backward_delta_x;
    wire [8:0] car1_backward_y = $signed(car1_y) + car1_backward_delta_y;
    reg [1:0] car1_backward_map_type = 0;
    wire [9:0] car1_turn_left_x = $signed(car1_x) + car1_turn_left_delta_x;
    wire [8:0] car1_turn_left_y = $signed(car1_y) + car1_turn_left_delta_y;
    reg [1:0] car1_turn_left_map_type = 0;
    wire [9:0] car1_turn_right_x = $signed(car1_x) + car1_turn_right_delta_x;
    wire [8:0] car1_turn_right_y = $signed(car1_y) + car1_turn_right_delta_y;
    reg [1:0] car1_turn_right_map_type = 0;
    reg [3:0] imap_counter = 0;
    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            imap_counter <= 0;
            imap_x <= 0;
            imap_y <= 0;
            car1_current_map_type <= 0;
            car1_forward_map_type <= 0;
            car1_backward_map_type <= 0;
            car1_turn_left_map_type <= 0;
            car1_turn_right_map_type <= 0;
        end
        else begin
            imap_counter <= imap_counter + 1;
            case(imap_counter)
                0: begin
                    imap_x <= car1_x;
                    imap_y <= car1_y;
                end
                1: begin
                    car1_previous_map_type <= car1_current_map_type;
                    car1_current_map_type <= map_type;
                    imap_x <= car1_forward_x;
                    imap_y <= car1_forward_y;
                end
                2: begin
                    car1_forward_map_type <= map_type;
                    imap_x <= car1_backward_x;
                    imap_y <= car1_backward_y;
                end
                3: begin
                    car1_backward_map_type <= map_type;
                    imap_x <= car1_turn_left_x;
                    imap_y <= car1_turn_left_y;
                end
                4: begin
                    car1_turn_left_map_type <= map_type;
                    imap_x <= car1_turn_right_x;
                    imap_y <= car1_turn_right_y;
                end
                5: begin
                    car1_turn_right_map_type <= map_type;
                end
            endcase
        end
    end

    // -------
    // Detect finish line crossing.

    reg correct_direction = 1;
    wire finish_entered = (car1_previous_map_type != `MAPTYPE_FINISH) &&
            (car1_current_map_type == `MAPTYPE_FINISH);
    wire finish_exited = (car1_previous_map_type == `MAPTYPE_FINISH) &&
            (car1_current_map_type != `MAPTYPE_FINISH);

    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            correct_direction <= 1;
        end
        else begin
            if(finish_entered) begin
                if(car1_delta_x > 0) begin
                    if(correct_direction == 1) begin
                        lap_completed <= 1;
                    end
                end
            end
            if(finish_exited) begin
                if(car1_delta_x > 0) begin
                    lap_completed <= 0;
                    correct_direction <= 1;
                end
                else begin
                    correct_direction <= 0;
                end
            end
        end
    end

    // ------------------
    // Determine speed

    assign speed = (car1_current_map_type == `MAPTYPE_ROAD ? `SPEED_NORMAL : 
      (car1_current_map_type == `MAPTYPE_GRASS ? `SPEED_SLOW :
      (car1_current_map_type == `MAPTYPE_WALL ? `SPEED_STOP :
      (car1_current_map_type == `MAPTYPE_FINISH ? `SPEED_BOOST : 0
    ))));

    // -------
    // Detect wall collision


    wire wall_forward = (car1_forward_map_type == `MAPTYPE_WALL) ||
            (car1_forward_x > 640 || car1_forward_y > 480);
    assign forward = A && ~wall_forward;

    wire wall_backward = (car1_backward_map_type == `MAPTYPE_WALL) ||
            (car1_backward_x > 640 || car1_backward_y > 480);
    assign backward = B && ~wall_backward;

    wire wall_turn_left = (car1_turn_left_map_type == `MAPTYPE_WALL) ||
            (car1_turn_left_x > 640 || car1_turn_left_y > 480);
    assign turn_left = stickLeft && ~wall_turn_left;

    wire wall_turn_right = (car1_turn_right_map_type == `MAPTYPE_WALL) ||
            (car1_turn_right_x > 640 || car1_turn_right_y > 480);
    assign turn_right = stickRight && ~wall_turn_right;
endmodule    