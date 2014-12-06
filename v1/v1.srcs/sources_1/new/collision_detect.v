`timescale 1ns / 1ps

module collision_detect #(WIDTH = 20, HEIGHT = 20)
    (input [20:0] object, input [9:0] car_x, input [8:0] car_y,
    output collided);
  wire object_present = object[20];
  wire [9:0] obj_x = object[19:10];
  wire [8:0] obj_y = object[8:0];

  wire [9:0] ul_x = car_x - 10;
  wire [8:0] ul_y = car_y - 10;
  wire ul_in = (ul_x >= obj_x) && (ul_x < obj_x + WIDTH) &&
               (ul_y >= obj_y) && (ul_y < obj_y + HEIGHT);

  wire [9:0] ur_x = car_x + 10;
  wire [8:0] ur_y = car_y - 10;
  wire ur_in = (ur_x >= obj_x) && (ur_x < obj_x + WIDTH) &&
               (ur_y >= obj_y) && (ur_y < obj_y + HEIGHT);
               
  wire [9:0] bl_x = car_x - 10;
  wire [8:0] bl_y = car_y + 10;
  wire bl_in = (bl_x >= obj_x) && (bl_x < obj_x + WIDTH) &&
               (bl_y >= obj_y) && (bl_y < obj_y + HEIGHT);
  wire [9:0] br_x = car_x + 10;
  wire [8:0] br_y = car_y + 10;
  wire br_in = (br_x >= obj_x) && (br_x < obj_x + WIDTH) &&
               (br_y >= obj_y) && (br_y < obj_y + HEIGHT);
               
  assign collided = object_present && (ul_in || ur_in || bl_in || br_in);
endmodule