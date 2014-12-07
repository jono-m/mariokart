`timescale 1ns / 1ps

module physics_logic (input clk_100mhz, input rst,
    // Game logic connections
    input [2:0] phase,
    input [2:0] selected_character1, input [2:0] selected_character2,
    input race_begin,
    input [9:0] car1_x,
    input [8:0] car1_y,
    output reg lap_completed1,
    output reg correct_direction1,

    input [9:0] car2_x,
    input [8:0] car2_y,
    output reg lap_complete2,
    output reg correct_direction2,


    // Controller connections
    input A1,
    input B1,
    input stickLeft1,
    input stickRight1,

    input A2,
    input B2,
    input stickLeft2,
    input stickRight2,

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

    output item_box_hit1,
    output item_box_hit2,

    output item_box1_hit,
    output item_box2_hit,
    output item_box3_hit,
    output item_box4_hit,
    output item_box5_hit,
    output item_box6_hit,
    output item_box7_hit,
    output item_box8_hit,

    // Driver connections
    output forward1,
    output backward1,
    output turn_left1,
    output turn_right1, 
    output [1:0] speed1,
    output forward2,
    output backward2,
    output turn_left2,
    output turn_right2, 
    output [1:0] speed2
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
            if(forward1 == 1) begin
                if(car1_delta_x != 0) begin
                    car1_forward_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_forward_delta_y <= car1_delta_y;
                end
            end
            if(backward1 == 1) begin
                if(car1_delta_x != 0) begin
                    car1_backward_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_backward_delta_y <= car1_delta_y;
                end
            end
            if(turn_left1 == 1) begin
                if(car1_delta_x != 0) begin
                    car1_turn_left_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_turn_left_delta_y <= car1_delta_y;
                end
            end
            if(turn_right1 == 1) begin
                if(car1_delta_x != 0) begin
                    car1_turn_right_delta_x <= car1_delta_x;
                end
                if(car1_delta_y != 0) begin
                    car1_turn_right_delta_y <= car1_delta_y;
                end
            end
        end
    end

    reg [9:0] car2_previous_x = 0;
    reg [9:0] car2_previous_y = 0;
    wire signed [10:0] car2_delta_x = $signed({1'b0, car2_x}) - $signed({1'b0, car2_previous_x});
    wire signed [9:0] car2_delta_y = $signed({1'b0, car2_y}) - $signed({1'b0, car2_previous_y});
    reg signed [10:0] car2_forward_delta_x = 0;
    reg signed [9:0] car2_forward_delta_y = 0;
    reg signed [10:0] car2_backward_delta_x = 0;
    reg signed [9:0] car2_backward_delta_y = 0;
    reg signed [10:0] car2_turn_left_delta_x = 0;
    reg signed [9:0] car2_turn_left_delta_y = 0;
    reg signed [10:0] car2_turn_right_delta_x = 0;
    reg signed [9:0] car2_turn_right_delta_y = 0;
    always @(posedge clk_update_deltas) begin
        if(rst == 1) begin
            car2_previous_x <= car2_x;
            car2_previous_y <= car2_y;

            car2_forward_delta_x <= 0;
            car2_forward_delta_y <= 0;

            car2_backward_delta_x <= 0;
            car2_backward_delta_y <= 0;

            car2_turn_left_delta_x <= 0;
            car2_turn_left_delta_y <= 0;

            car2_turn_right_delta_x <= 0;
            car2_turn_right_delta_y <= 0;
        end
        else begin
            car2_previous_x <= car2_x;
            car2_previous_y <= car2_y;
            if(forward2 == 1) begin
                if(car2_delta_x != 0) begin
                    car2_forward_delta_x <= car2_delta_x;
                end
                if(car2_delta_y != 0) begin
                    car2_forward_delta_y <= car2_delta_y;
                end
            end
            if(backward2 == 1) begin
                if(car2_delta_x != 0) begin
                    car2_backward_delta_x <= car2_delta_x;
                end
                if(car2_delta_y != 0) begin
                    car2_backward_delta_y <= car2_delta_y;
                end
            end
            if(turn_left2 == 1) begin
                if(car2_delta_x != 0) begin
                    car2_turn_left_delta_x <= car2_delta_x;
                end
                if(car2_delta_y != 0) begin
                    car2_turn_left_delta_y <= car2_delta_y;
                end
            end
            if(turn_right2 == 1) begin
                if(car2_delta_x != 0) begin
                    car2_turn_right_delta_x <= car2_delta_x;
                end
                if(car2_delta_y != 0) begin
                    car2_turn_right_delta_y <= car2_delta_y;
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

    reg [1:0] car2_previous_map_type = `MAPTYPE_ROAD;
    reg [1:0] car2_current_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar2_forward_x = $signed({1'b0, car2_x}) + car2_forward_delta_x;
    wire signed [9:0] scar2_forward_y = $signed({1'b0, car2_y}) + car2_forward_delta_y;
    wire [9:0] car2_forward_x = scar2_forward_x;
    wire [8:0] car2_forward_y = scar2_forward_y;
    reg [1:0] car2_forward_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar2_backward_x = $signed({1'b0, car2_x}) + car2_backward_delta_x;
    wire signed [9:0] scar2_backward_y = $signed({1'b0, car2_y}) + car2_backward_delta_y;
    wire [9:0] car2_backward_x = scar2_backward_x;
    wire [8:0] car2_backward_y = scar2_backward_y;
    reg [1:0] car2_backward_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar2_turn_left_x = $signed({1'b0, car2_x}) + car2_turn_left_delta_x;
    wire signed [9:0] scar2_turn_left_y = $signed({1'b0, car2_y}) + car2_turn_left_delta_y;
    wire [9:0] car2_turn_left_x = scar2_turn_left_x;
    wire [8:0] car2_turn_left_y = scar2_turn_left_y;
    reg [1:0] car2_turn_left_map_type = `MAPTYPE_ROAD;
    wire signed [10:0] scar2_turn_right_x = $signed({1'b0, car2_x}) + car2_turn_right_delta_x;
    wire signed [9:0] scar2_turn_right_y = $signed({1'b0, car2_y}) + car2_turn_right_delta_y;
    wire [9:0] car2_turn_right_x = scar2_turn_right_x;
    wire [8:0] car2_turn_right_y = scar2_turn_right_y;
    reg [1:0] car2_turn_right_map_type = `MAPTYPE_ROAD;

    reg [4:0] imap_counter = 0;
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
            car2_previous_map_type <= `MAPTYPE_ROAD;
            car2_current_map_type <= `MAPTYPE_ROAD;
            car2_current_map_type <= `MAPTYPE_ROAD;
            car2_forward_map_type <= `MAPTYPE_ROAD;
            car2_backward_map_type <= `MAPTYPE_ROAD;
            car2_turn_left_map_type <= `MAPTYPE_ROAD;
            car2_turn_right_map_type <= `MAPTYPE_ROAD;
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
                    imap_x <= car2_x;
                    imap_y <= car2_y;
                12: begin
                    car2_previous_map_type <= car2_current_map_type;
                    car2_current_map_type <= map_type;
                    imap_x <= car2_forward_x;
                    imap_y <= car2_forward_y;
                end
                14: begin
                    car2_forward_map_type <= map_type;
                    imap_x <= car2_backward_x;
                    imap_y <= car2_backward_y;
                end
                16: begin
                    car2_backward_map_type <= map_type;
                    imap_x <= car2_turn_left_x;
                    imap_y <= car2_turn_left_y;
                end
                18: begin
                    car2_turn_left_map_type <= map_type;
                    imap_x <= car2_turn_right_x;
                    imap_y <= car2_turn_right_y;
                end
                20: begin
                    car2_turn_right_map_type <= map_type;
                end
            endcase
        end
    end

    // -------
    // Detect finish line crossing.

    wire finish_entered1 = (car1_previous_map_type != `MAPTYPE_FINISH) &&
            (car1_current_map_type == `MAPTYPE_FINISH);
    wire finish_exited1 = (car1_previous_map_type == `MAPTYPE_FINISH) &&
            (car1_current_map_type != `MAPTYPE_FINISH);

    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            correct_direction1 <= 1;
            lap_completed1 <= 0;
        end
        else begin
            if(finish_entered1) begin
                if(car1_delta_x > 0) begin
                    if(correct_direction1 == 1) begin
                        lap_completed1 <= 1;
                    end
                end
            end
            if(finish_exited1) begin
                if(car1_delta_x >= 0) begin
                    lap_completed1 <= 0;
                    correct_direction1 <= 1;
                end
                else begin
                    correct_direction1 <= 0;
                end
            end
        end
    end

    wire finish_entered2 = (car2_previous_map_type != `MAPTYPE_FINISH) &&
            (car2_current_map_type == `MAPTYPE_FINISH);
    wire finish_exited2 = (car2_previous_map_type == `MAPTYPE_FINISH) &&
            (car2_current_map_type != `MAPTYPE_FINISH);

    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            correct_direction2 <= 1;
            lap_completed2 <= 0;
        end
        else begin
            if(finish_entered2) begin
                if(car2_delta_x > 0) begin
                    if(correct_direction2 == 1) begin
                        lap_completed2 <= 1;
                    end
                end
            end
            if(finish_exited2) begin
                if(car2_delta_x >= 0) begin
                    lap_completed2 <= 0;
                    correct_direction2 <= 1;
                end
                else begin
                    correct_direction2 <= 0;
                end
            end
        end
    end

    // ------------------
    // Determine speed

    assign speed1 = (car1_current_map_type == `MAPTYPE_ROAD ? `SPEED_NORMAL : 
      (car1_current_map_type == `MAPTYPE_GRASS ? `SPEED_SLOW :
      (car1_current_map_type == `MAPTYPE_WALL ? `SPEED_SLOW :
      (car1_current_map_type == `MAPTYPE_FINISH ? `SPEED_BOOST : 0
    ))));

    assign speed2 = (car2_current_map_type == `MAPTYPE_ROAD ? `SPEED_NORMAL : 
      (car2_current_map_type == `MAPTYPE_GRASS ? `SPEED_SLOW :
      (car2_current_map_type == `MAPTYPE_WALL ? `SPEED_SLOW :
      (car2_current_map_type == `MAPTYPE_FINISH ? `SPEED_BOOST : 0
    ))));

    // -------
    // Detect wall collision

    wire wall_forward1 = (car1_forward_map_type == `MAPTYPE_WALL) ||
            (car1_forward_x >= 640 || car1_forward_y >= 480 || car1_forward_y == 0);
    wire wall_backward1 = (car1_backward_map_type == `MAPTYPE_WALL) ||
            (car1_backward_x >= 640 || car1_backward_y >= 480 || car1_backward_y == 0);
    wire wall_turn_left1 = (car1_turn_left_map_type == `MAPTYPE_WALL) ||
            (car1_turn_left_x >= 640 || car1_turn_left_y >= 480 || car1_turn_left_y == 0);
    wire wall_turn_right1 = (car1_turn_right_map_type == `MAPTYPE_WALL) ||
            (car1_turn_right_x >= 640 || car1_turn_right_y >= 480 || car1_turn_right_y == 0);

    assign forward1 = A1 && (~wall_forward1 || (wall_forward1 && wall_backward1)) && race_begin;
    assign backward1 = B1 && (~wall_backward1 || (wall_forward1 && wall_backward1)) && race_begin;
    assign turn_left1 = stickLeft1 && (~wall_turn_left1 || (wall_turn_left1 && wall_turn_right1)) && race_begin;
    assign turn_right1 = stickRight1 && (~wall_turn_right1 || (wall_turn_left1 && wall_turn_right1)) && race_begin;

    wire wall_forward2 = (car2_forward_map_type == `MAPTYPE_WALL) ||
            (car2_forward_x >= 640 || car2_forward_y >= 480 || car2_forward_y == 0);
    wire wall_backward2 = (car2_backward_map_type == `MAPTYPE_WALL) ||
            (car2_backward_x >= 640 || car2_backward_y >= 480 || car2_backward_y == 0);
    wire wall_turn_left2 = (car2_turn_left_map_type == `MAPTYPE_WALL) ||
            (car2_turn_left_x >= 640 || car2_turn_left_y >= 480 || car2_turn_left_y == 0);
    wire wall_turn_right2 = (car2_turn_right_map_type == `MAPTYPE_WALL) ||
            (car2_turn_right_x >= 640 || car2_turn_right_y >= 480 || car2_turn_right_y == 0);

    assign forward2 = A2 && (~wall_forward2 || (wall_forward2 && wall_backward2)) && race_begin;
    assign backward2 = B2 && (~wall_backward2 || (wall_forward2 && wall_backward2)) && race_begin;
    assign turn_left2 = stickLeft2 && (~wall_turn_left2 || (wall_turn_left2 && wall_turn_right2)) && race_begin;
    assign turn_right2 = stickRight2 && (~wall_turn_right2 || (wall_turn_left2 && wall_turn_right2)) && race_begin;

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
    collision_detect c1ib1(.object(item_box1), .collided(car1_item_box1), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib2(.object(item_box2), .collided(car1_item_box2), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib3(.object(item_box3), .collided(car1_item_box3), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib4(.object(item_box4), .collided(car1_item_box4), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib5(.object(item_box5), .collided(car1_item_box5), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib6(.object(item_box6), .collided(car1_item_box6), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib7(.object(item_box7), .collided(car1_item_box7), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib8(.object(item_box8), .collided(car1_item_box8), .car_x(car1_x), .car_y(car1_y));

    wire car2_item_box1;
    wire car2_item_box2;
    wire car2_item_box3;
    wire car2_item_box4;
    wire car2_item_box5;
    wire car2_item_box6;
    wire car2_item_box7;
    wire car2_item_box8;
    collision_detect c2ib1(.object(item_box1), .collided(car2_item_box1), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib2(.object(item_box2), .collided(car2_item_box2), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib3(.object(item_box3), .collided(car2_item_box3), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib4(.object(item_box4), .collided(car2_item_box4), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib5(.object(item_box5), .collided(car2_item_box5), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib6(.object(item_box6), .collided(car2_item_box6), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib7(.object(item_box7), .collided(car2_item_box7), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib8(.object(item_box8), .collided(car2_item_box8), .car_x(car2_x), .car_y(car2_y));

    assign item_box_hit1 = car1_item_box1 || car1_item_box2 ||
                          car1_item_box3 || car1_item_box4 ||
                          car1_item_box5 || car1_item_box6 ||
                          car1_item_box7 || car1_item_box8;

    assign item_box_hit2 = car2_item_box1 || car2_item_box2 ||
                          car2_item_box3 || car2_item_box4 ||
                          car2_item_box5 || car2_item_box6 ||
                          car2_item_box7 || car2_item_box8;

    assign item_box1_hit = car1_item_box1 || car2_item_box1;
    assign item_box2_hit = car1_item_box2 || car2_item_box2;
    assign item_box3_hit = car1_item_box3 || car2_item_box3;
    assign item_box4_hit = car1_item_box4 || car2_item_box4;
    assign item_box5_hit = car1_item_box5 || car2_item_box5;
    assign item_box6_hit = car1_item_box6 || car2_item_box6;
    assign item_box7_hit = car1_item_box7 || car2_item_box7;
    assign item_box8_hit = car1_item_box8 || car2_item_box8;
endmodule    