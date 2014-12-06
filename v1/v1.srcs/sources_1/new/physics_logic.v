`timescale 1ns / 1ps

module physics_logic (input clk_100mhz, input rst,
    // Game logic connections
    input [2:0] phase,
    input [2:0] selected_character,
    input race_begin,
    input [9:0] car1_x,
    input [8:0] car1_y,
    output reg lap_completed,
    output reg correct_direction,

    // Controller connections
    input A,
    input B,
    input stickLeft,
    input stickRight,

    // Information map connections
    input [1:0] map_type,
    output reg [9:0] imap_x = 0,
    output reg [8:0] imap_y = 0,

    input [20:0] item_box1,
    input [20:0] item_box2,
    input [20:0] item_box3,
    input [20:0] item_box4,
    input [20:0] item_box5,
    input [20:0] item_box6,
    input [20:0] item_box7,
    input [20:0] item_box8,

    output item_box_hit,

    output item_box1_hit,
    output item_box2_hit,
    output item_box3_hit,
    output item_box4_hit,
    output item_box5_hit,
    output item_box6_hit,
    output item_box7_hit,
    output item_box8_hit,

    // Driver connections
    output forward,
    output backward,
    output turn_left,
    output turn_right, 
    output [1:0] speed
    );
        
    reg [18:0] counter_deltas = 0;
    reg clk_update_deltas = 1;
    always @(posedge clk_100mhz) begin
        if(counter_deltas == 500000) begin
            counter_deltas <= 0;
            clk_update_deltas <= ~clk_update_deltas;
        end
        else begin
            counter_deltas <= counter_deltas + 1;
        end
    end

    // -----------------
    // Compute deltas
    reg [9:0] car1_previous_x = 0;
    reg [9:0] car1_previous_y = 0;
    wire signed [10:0] car1_delta_x = $signed({1'b0, car1_x}) - $signed({1'b0, car1_previous_x});
    wire signed [9:0] car1_delta_y = $signed({1'b0, car1_y}) - $signed({1'b0, car1_previous_y});
    reg signed [10:0] car1_forward_delta_x = 0;
    reg signed [9:0] car1_forward_delta_y = 0;
    reg signed [10:0] car1_backward_delta_x = 0;
    reg signed [9:0] car1_backward_delta_y = 0;
    reg signed [10:0] car1_turn_left_delta_x = 0;
    reg signed [9:0] car1_turn_left_delta_y = 0;
    reg signed [10:0] car1_turn_right_delta_x = 0;
    reg signed [9:0] car1_turn_right_delta_y = 0;
    always @(posedge clk_update_deltas) begin
        if(rst == 1) begin
            car1_previous_x <= car1_x;
            car1_previous_y <= car1_y;

            car1_forward_delta_x <= 0;
            car1_forward_delta_y <= 0;

            car1_backward_delta_x <= 0;
            car1_backward_delta_y <= 0;

            car1_turn_left_delta_x <= 0;
            car1_turn_left_delta_y <= 0;

            car1_turn_right_delta_x <= 0;
            car1_turn_right_delta_y <= 0;
        end
        else begin
            car1_previous_x <= car1_x;
            car1_previous_y <= car1_y;
            if(forward == 1) begin
                if(car1_delta_x != 0) begin
                    car1_forward_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_forward_delta_y <= car1_delta_y;
                end
            end
            if(backward == 1) begin
                if(car1_delta_x != 0) begin
                    car1_backward_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_backward_delta_y <= car1_delta_y;
                end
            end
            if(turn_left == 1) begin
                if(car1_delta_x != 0) begin
                    car1_turn_left_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_turn_left_delta_y <= car1_delta_y;
                end
            end
            if(turn_right == 1) begin
                if(car1_delta_x != 0) begin
                    car1_turn_right_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_turn_right_delta_y <= car1_delta_y;
                end
            end
        end
    end

    // -------------------
    // Compute map types at deltas.

    reg [1:0] car1_previous_map_type = `MAPTYPE_ROAD;
    reg [1:0] car1_current_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar1_forward_x = $signed({1'b0, car1_x}) + car1_forward_delta_x;
    wire signed [9:0] scar1_forward_y = $signed({1'b0, car1_y}) + car1_forward_delta_y;
    wire [9:0] car1_forward_x = scar1_forward_x;
    wire [8:0] car1_forward_y = scar1_forward_y;
    reg [1:0] car1_forward_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar1_backward_x = $signed({1'b0, car1_x}) + car1_backward_delta_x;
    wire signed [9:0] scar1_backward_y = $signed({1'b0, car1_y}) + car1_backward_delta_y;
    wire [9:0] car1_backward_x = scar1_backward_x;
    wire [8:0] car1_backward_y = scar1_backward_y;
    reg [1:0] car1_backward_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar1_turn_left_x = $signed({1'b0, car1_x}) + car1_turn_left_delta_x;
    wire signed [9:0] scar1_turn_left_y = $signed({1'b0, car1_y}) + car1_turn_left_delta_y;
    wire [9:0] car1_turn_left_x = scar1_turn_left_x;
    wire [8:0] car1_turn_left_y = scar1_turn_left_y;
    reg [1:0] car1_turn_left_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar1_turn_right_x = $signed({1'b0, car1_x}) + car1_turn_right_delta_x;
    wire signed [9:0] scar1_turn_right_y = $signed({1'b0, car1_y}) + car1_turn_right_delta_y;
    wire [9:0] car1_turn_right_x = scar1_turn_right_x;
    wire [8:0] car1_turn_right_y = scar1_turn_right_y;
    reg [1:0] car1_turn_right_map_type = `MAPTYPE_ROAD;
    reg [3:0] imap_counter = 0;
    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            imap_counter <= 0;
            imap_x <= 0;
            imap_y <= 0;
            car1_previous_map_type <= `MAPTYPE_ROAD;
            car1_current_map_type <= `MAPTYPE_ROAD;
            car1_current_map_type <= `MAPTYPE_ROAD;
            car1_forward_map_type <= `MAPTYPE_ROAD;
            car1_backward_map_type <= `MAPTYPE_ROAD;
            car1_turn_left_map_type <= `MAPTYPE_ROAD;
            car1_turn_right_map_type <= `MAPTYPE_ROAD;
        end
        else begin
            imap_counter <= imap_counter + 1;
            case(imap_counter)
                0: begin
                    imap_x <= car1_x;
                    imap_y <= car1_y;
                end
                2: begin
                    car1_previous_map_type <= car1_current_map_type;
                    car1_current_map_type <= map_type;
                    imap_x <= car1_forward_x;
                    imap_y <= car1_forward_y;
                end
                4: begin
                    car1_forward_map_type <= map_type;
                    imap_x <= car1_backward_x;
                    imap_y <= car1_backward_y;
                end
                6: begin
                    car1_backward_map_type <= map_type;
                    imap_x <= car1_turn_left_x;
                    imap_y <= car1_turn_left_y;
                end
                8: begin
                    car1_turn_left_map_type <= map_type;
                    imap_x <= car1_turn_right_x;
                    imap_y <= car1_turn_right_y;
                end
                10: begin
                    car1_turn_right_map_type <= map_type;
                end
            endcase
        end
    end

    // -------
    // Detect finish line crossing.

    wire finish_entered = (car1_previous_map_type != `MAPTYPE_FINISH) &&
            (car1_current_map_type == `MAPTYPE_FINISH);
    wire finish_exited = (car1_previous_map_type == `MAPTYPE_FINISH) &&
            (car1_current_map_type != `MAPTYPE_FINISH);

    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            correct_direction <= 1;
            lap_completed <= 0;
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
                if(car1_delta_x >= 0) begin
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
      (car1_current_map_type == `MAPTYPE_WALL ? `SPEED_SLOW :
      (car1_current_map_type == `MAPTYPE_FINISH ? `SPEED_BOOST : 0
    ))));

    // -------
    // Detect wall collision

    wire wall_forward = (car1_forward_map_type == `MAPTYPE_WALL) ||
            (car1_forward_x >= 640 || car1_forward_y >= 480 || car1_forward_y == 0);
    wire wall_backward = (car1_backward_map_type == `MAPTYPE_WALL) ||
            (car1_backward_x >= 640 || car1_backward_y >= 480 || car1_backward_y == 0);
    wire wall_turn_left = (car1_turn_left_map_type == `MAPTYPE_WALL) ||
            (car1_turn_left_x >= 640 || car1_turn_left_y >= 480 || car1_turn_left_y == 0);
    wire wall_turn_right = (car1_turn_right_map_type == `MAPTYPE_WALL) ||
            (car1_turn_right_x >= 640 || car1_turn_right_y >= 480 || car1_turn_right_y == 0);

    assign forward = A && (~wall_forward || (wall_forward && wall_backward)) && race_begin;
    assign backward = B && (~wall_backward || (wall_forward && wall_backward)) && race_begin;
    assign turn_left = stickLeft && (~wall_turn_left || (wall_turn_left && wall_turn_right)) && race_begin;
    assign turn_right = stickRight && (~wall_turn_right || (wall_turn_left && wall_turn_right)) && race_begin;

    // -------
    // Collision with items
    
    wire car1_item_box1;
    wire car1_item_box2;
    wire car1_item_box3;
    wire car1_item_box4;
    wire car1_item_box5;
    wire car1_item_box6;
    wire car1_item_box7;
    wire car1_item_box8;
    collision_detect cib1(.object(item_box1), .collided(car1_item_box1), .car_x(car1_x), .car_y(car1_y));
    collision_detect cib2(.object(item_box2), .collided(car1_item_box2), .car_x(car1_x), .car_y(car1_y));
    collision_detect cib3(.object(item_box3), .collided(car1_item_box3), .car_x(car1_x), .car_y(car1_y));
    collision_detect cib4(.object(item_box4), .collided(car1_item_box4), .car_x(car1_x), .car_y(car1_y));
    collision_detect cib5(.object(item_box5), .collided(car1_item_box5), .car_x(car1_x), .car_y(car1_y));
    collision_detect cib6(.object(item_box6), .collided(car1_item_box6), .car_x(car1_x), .car_y(car1_y));
    collision_detect cib7(.object(item_box7), .collided(car1_item_box7), .car_x(car1_x), .car_y(car1_y));
    collision_detect cib8(.object(item_box8), .collided(car1_item_box8), .car_x(car1_x), .car_y(car1_y));

    assign item_box_hit = car1_item_box1 || car1_item_box2 ||
                          car1_item_box3 || car1_item_box4 ||
                          car1_item_box5 || car1_item_box6 ||
                          car1_item_box7 || car1_item_box8;

    assign item_box1_hit = car1_item_box1;
    assign item_box2_hit = car1_item_box2;
    assign item_box3_hit = car1_item_box3;
    assign item_box4_hit = car1_item_box4;
    assign item_box5_hit = car1_item_box5;
    assign item_box6_hit = car1_item_box6;
    assign item_box7_hit = car1_item_box7;
    assign item_box8_hit = car1_item_box8;
endmodule    