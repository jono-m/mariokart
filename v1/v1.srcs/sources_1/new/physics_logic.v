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

    // Car 2
    input [9:0] car2_x,
    input [8:0] car2_y,
    output reg lap_completed2,
    output reg correct_direction2,

    input car1_banana_buff,
    input car1_mushroom_buff,
    input car1_lightning_buff,
    input car2_banana_buff,
    input car2_mushroom_buff,
    input car2_lightning_buff,

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

    input [20:0] banana1,
    input [20:0] banana2,
    input [20:0] banana3,
    input [20:0] banana4,
    input [20:0] banana5,
    input [20:0] banana6,
    input [20:0] banana7,
    input [20:0] banana8,

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

    output banana_hit1,
    output banana_hit2,

    output banana1_hit,
    output banana2_hit,
    output banana3_hit,
    output banana4_hit,
    output banana5_hit,
    output banana6_hit,
    output banana7_hit,
    output banana8_hit,

    input banana1_active,
    input banana2_active,
    input banana3_active,
    input banana4_active,
    input banana5_active,
    input banana6_active,
    input banana7_active,
    input banana8_active,

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
                end
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

    wire [1:0] road_speed1 = (car1_mushroom_buff ? `SPEED_BOOST :
            (car1_lightning_buff ? `SPEED_SLOW : `SPEED_NORMAL));
    wire [1:0] wall_speed1 = `SPEED_SLOW;
    wire [1:0] grass_speed1 = (car1_mushroom_buff ? `SPEED_NORMAL : `SPEED_SLOW);
    wire [1:0] finish_speed1 = road_speed1;
    assign speed1 = (car1_current_map_type == `MAPTYPE_ROAD ? road_speed1 : 
      (car1_current_map_type == `MAPTYPE_FINISH ? finish_speed1 :
      (car1_current_map_type == `MAPTYPE_GRASS ? grass_speed1 :
      (car1_current_map_type == `MAPTYPE_WALL ? wall_speed1 : 0))));

    wire [1:0] road_speed2 = (car2_mushroom_buff ? `SPEED_BOOST :
            (car2_lightning_buff ? `SPEED_SLOW : `SPEED_NORMAL));
    wire [1:0] wall_speed2 = `SPEED_SLOW;
    wire [1:0] grass_speed2 = (car2_mushroom_buff ? `SPEED_NORMAL : `SPEED_SLOW);
    wire [1:0] finish_speed2 = road_speed2;
    assign speed2 = (car2_current_map_type == `MAPTYPE_ROAD ? road_speed2 : 
      (car2_current_map_type == `MAPTYPE_FINISH ? finish_speed2 :
      (car2_current_map_type == `MAPTYPE_GRASS ? grass_speed2 :
      (car2_current_map_type == `MAPTYPE_WALL ? wall_speed2 : 0))));

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
    assign turn_left1 = (car1_banana_buff || car1_lightning_buff ? stickRight1 : stickLeft1) && (~wall_turn_left1 || (wall_turn_left1 && wall_turn_right1)) && race_begin;
    assign turn_right1 = (car1_banana_buff || car1_lightning_buff ? stickLeft1 : stickRight1) && (~wall_turn_right1 || (wall_turn_left1 && wall_turn_right1)) && race_begin;

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
    assign turn_left2 = (car2_banana_buff || car2_lightning_buff ? stickRight2 : stickLeft2) && (~wall_turn_left2 || (wall_turn_left2 && wall_turn_right2)) && race_begin;
    assign turn_right2 = (car2_banana_buff || car2_lightning_buff ? stickLeft2 : stickRight2) && (~wall_turn_right2 || (wall_turn_left2 && wall_turn_right2)) && race_begin;

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
    collision_detect c1ib1(.object(item_box1), .active(1), .collided(car1_item_box1), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib2(.object(item_box2), .active(1), .collided(car1_item_box2), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib3(.object(item_box3), .active(1), .collided(car1_item_box3), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib4(.object(item_box4), .active(1), .collided(car1_item_box4), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib5(.object(item_box5), .active(1), .collided(car1_item_box5), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib6(.object(item_box6), .active(1), .collided(car1_item_box6), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib7(.object(item_box7), .active(1), .collided(car1_item_box7), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ib8(.object(item_box8), .active(1), .collided(car1_item_box8), .car_x(car1_x), .car_y(car1_y));

    wire car2_item_box1;
    wire car2_item_box2;
    wire car2_item_box3;
    wire car2_item_box4;
    wire car2_item_box5;
    wire car2_item_box6;
    wire car2_item_box7;
    wire car2_item_box8;
    collision_detect c2ib1(.object(item_box1), .active(1), .collided(car2_item_box1), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib2(.object(item_box2), .active(1), .collided(car2_item_box2), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib3(.object(item_box3), .active(1), .collided(car2_item_box3), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib4(.object(item_box4), .active(1), .collided(car2_item_box4), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib5(.object(item_box5), .active(1), .collided(car2_item_box5), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib6(.object(item_box6), .active(1), .collided(car2_item_box6), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib7(.object(item_box7), .active(1), .collided(car2_item_box7), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ib8(.object(item_box8), .active(1), .collided(car2_item_box8), .car_x(car2_x), .car_y(car2_y));

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

    // -------
    // Collision with bananas
    
    wire car1_banana1;
    wire car1_banana2;
    wire car1_banana3;
    wire car1_banana4;
    wire car1_banana5;
    wire car1_banana6;
    wire car1_banana7;
    wire car1_banana8;
    collision_detect c1ban1(.object(banana1), .active(banana1_active), .collided(car1_banana1), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ban2(.object(banana2), .active(banana2_active), .collided(car1_banana2), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ban3(.object(banana3), .active(banana3_active), .collided(car1_banana3), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ban4(.object(banana4), .active(banana4_active), .collided(car1_banana4), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ban5(.object(banana5), .active(banana5_active), .collided(car1_banana5), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ban6(.object(banana6), .active(banana6_active), .collided(car1_banana6), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ban7(.object(banana7), .active(banana7_active), .collided(car1_banana7), .car_x(car1_x), .car_y(car1_y));
    collision_detect c1ban8(.object(banana8), .active(banana8_active), .collided(car1_banana8), .car_x(car1_x), .car_y(car1_y));

    wire car2_banana1;
    wire car2_banana2;
    wire car2_banana3;
    wire car2_banana4;
    wire car2_banana5;
    wire car2_banana6;
    wire car2_banana7;
    wire car2_banana8;
    collision_detect c2ban1(.object(banana1), .active(banana1_active), .collided(car2_banana1), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ban2(.object(banana2), .active(banana2_active), .collided(car2_banana2), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ban3(.object(banana3), .active(banana3_active), .collided(car2_banana3), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ban4(.object(banana4), .active(banana4_active), .collided(car2_banana4), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ban5(.object(banana5), .active(banana5_active), .collided(car2_banana5), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ban6(.object(banana6), .active(banana6_active), .collided(car2_banana6), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ban7(.object(banana7), .active(banana7_active), .collided(car2_banana7), .car_x(car2_x), .car_y(car2_y));
    collision_detect c2ban8(.object(banana8), .active(banana8_active), .collided(car2_banana8), .car_x(car2_x), .car_y(car2_y));

    assign banana_hit1 = car1_banana1 || car1_banana2 ||
                          car1_banana3 || car1_banana4 ||
                          car1_banana5 || car1_banana6 ||
                          car1_banana7 || car1_banana8;

    assign banana_hit2 = car2_banana1 || car2_banana2 ||
                          car2_banana3 || car2_banana4 ||
                          car2_banana5 || car2_banana6 ||
                          car2_banana7 || car2_banana8;

    assign banana1_hit = car1_banana1 || car2_banana1;
    assign banana2_hit = car1_banana2 || car2_banana2;
    assign banana3_hit = car1_banana3 || car2_banana3;
    assign banana4_hit = car1_banana4 || car2_banana4;
    assign banana5_hit = car1_banana5 || car2_banana5;
    assign banana6_hit = car1_banana6 || car2_banana6;
    assign banana7_hit = car1_banana7 || car2_banana7;
    assign banana8_hit = car1_banana8 || car2_banana8;
endmodule    