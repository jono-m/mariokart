`timescale 1ns / 1ps

module sprite_painter
    #(WIDTH = 20, HEIGHT = 20)
    (input [9:0] x, input [8:0] y,
    output [9:0] sprite_x, output [8:0] sprite_y,
    output sprite_is_present,

    input [20:0] sprite1,
    input [20:0] sprite2,
    input [20:0] sprite3,
    input [20:0] sprite4,
    input [20:0] sprite5,
    input [20:0] sprite6,
    input [20:0] sprite7,
    input [20:0] sprite8,
    input [20:0] sprite9,
    input [20:0] sprite10);
    
    wire sprite1_present = sprite1[20];
    wire sprite1_collide = sprite1_present && 
        (x >= sprite1[19:10]) && (y >= sprite1[8:0]) &&
        (x < sprite1[19:10] + WIDTH) && (y < sprite1[8:0] + HEIGHT);
    wire [9:0] sprite1_x = sprite1_collide ? (x - sprite1[19:10]) : 0;
    wire [8:0] sprite1_y = sprite1_collide ? (y - sprite1[8:0]) : 0;

    wire sprite2_present = sprite2[20];
    wire sprite2_collide = sprite2_present && 
        (x >= sprite2[19:10]) && (y >= sprite2[8:0]) &&
        (x < sprite2[19:10] + WIDTH) && (y < sprite2[8:0] + HEIGHT);
    wire [9:0] sprite2_x = sprite2_collide ? (x - sprite2[19:10]) : 0;
    wire [8:0] sprite2_y = sprite2_collide ? (y - sprite2[8:0]) : 0;

    wire sprite3_present = sprite3[20];
    wire sprite3_collide = sprite3_present && 
        (x >= sprite3[19:10]) && (y >= sprite3[8:0]) &&
        (x < sprite3[19:10] + WIDTH) && (y < sprite3[8:0] + HEIGHT);
    wire [9:0] sprite3_x = sprite3_collide ? (x - sprite3[19:10]) : 0;
    wire [8:0] sprite3_y = sprite3_collide ? (y - sprite3[8:0]) : 0;

    wire sprite4_present = sprite4[20];
    wire sprite4_collide = sprite4_present && 
        (x >= sprite4[19:10]) && (y >= sprite4[8:0]) &&
        (x < sprite4[19:10] + WIDTH) && (y < sprite4[8:0] + HEIGHT);
    wire [9:0] sprite4_x = sprite4_collide ? (x - sprite4[19:10]) : 0;
    wire [8:0] sprite4_y = sprite4_collide ? (y - sprite4[8:0]) : 0;

    wire sprite5_present = sprite5[20];
    wire sprite5_collide = sprite5_present && 
        (x >= sprite5[19:10]) && (y >= sprite5[8:0]) &&
        (x < sprite5[19:10] + WIDTH) && (y < sprite5[8:0] + HEIGHT);
    wire [9:0] sprite5_x = sprite5_collide ? (x - sprite5[19:10]) : 0;
    wire [8:0] sprite5_y = sprite5_collide ? (y - sprite5[8:0]) : 0;

    wire sprite6_present = sprite6[20];
    wire sprite6_collide = sprite6_present && 
        (x >= sprite6[19:10]) && (y >= sprite6[8:0]) &&
        (x < sprite6[19:10] + WIDTH) && (y < sprite6[8:0] + HEIGHT);
    wire [9:0] sprite6_x = sprite6_collide ? (x - sprite6[19:10]) : 0;
    wire [8:0] sprite6_y = sprite6_collide ? (y - sprite6[8:0]) : 0;

    wire sprite7_present = sprite7[20];
    wire sprite7_collide = sprite7_present && 
        (x >= sprite7[19:10]) && (y >= sprite7[8:0]) &&
        (x < sprite7[19:10] + WIDTH) && (y < sprite7[8:0] + HEIGHT);
    wire [9:0] sprite7_x = sprite7_collide ? (x - sprite7[19:10]) : 0;
    wire [8:0] sprite7_y = sprite7_collide ? (y - sprite7[8:0]) : 0;

    wire sprite8_present = sprite8[20];
    wire sprite8_collide = sprite8_present && 
        (x >= sprite8[19:10]) && (y >= sprite8[8:0]) &&
        (x < sprite8[19:10] + WIDTH) && (y < sprite8[8:0] + HEIGHT);
    wire [9:0] sprite8_x = sprite8_collide ? (x - sprite8[19:10]) : 0;
    wire [8:0] sprite8_y = sprite8_collide ? (y - sprite8[8:0]) : 0;

    wire sprite9_present = sprite9[20];
    wire sprite9_collide = sprite9_present && 
        (x >= sprite9[19:10]) && (y >= sprite9[8:0]) &&
        (x < sprite9[19:10] + WIDTH) && (y < sprite9[8:0] + HEIGHT);
    wire [9:0] sprite9_x = sprite9_collide ? (x - sprite9[19:10]) : 0;
    wire [8:0] sprite9_y = sprite9_collide ? (y - sprite9[8:0]) : 0;

    wire sprite10_present = sprite10[20];
    wire sprite10_collide = sprite10_present && 
        (x >= sprite10[19:10]) && (y >= sprite10[8:0]) &&
        (x < sprite10[19:10] + WIDTH) && (y < sprite10[8:0] + HEIGHT);
    wire [9:0] sprite10_x = sprite10_collide ? (x - sprite10[19:10]) : 0;
    wire [8:0] sprite10_y = sprite10_collide ? (y - sprite10[8:0]) : 0;


    assign sprite_is_present = sprite1_collide || sprite2_collide ||
        sprite3_collide || sprite4_collide ||
        sprite5_collide || sprite6_collide ||
        sprite7_collide || sprite8_collide ||
        sprite9_collide || sprite10_collide;

    assign sprite_x = (sprite1_collide ? sprite1_x :
        (sprite2_collide ? sprite2_x :
        (sprite3_collide ? sprite3_x :
        (sprite4_collide ? sprite4_x :
        (sprite5_collide ? sprite5_x : 
        (sprite6_collide ? sprite6_x :
        (sprite7_collide ? sprite7_x :
        (sprite8_collide ? sprite8_x :
        (sprite9_collide ? sprite9_x :
        (sprite10_collide ? sprite10_x : 0
        ))))))))));
    assign sprite_y = (sprite1_collide ? sprite1_y :
        (sprite2_collide ? sprite2_y :
        (sprite3_collide ? sprite3_y :
        (sprite4_collide ? sprite4_y :
        (sprite5_collide ? sprite5_y : 
        (sprite6_collide ? sprite6_y :
        (sprite7_collide ? sprite7_y :
        (sprite8_collide ? sprite8_y :
        (sprite9_collide ? sprite9_y :
        (sprite10_collide ? sprite10_y : 0
        ))))))))));
endmodule