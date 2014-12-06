`timescale 1ns / 1ps

module shader(input [4:0] fader,
        input [3:0] bg_r, input [3:0] bg_g, input [3:0] bg_b, input bg_alpha,
        input [3:0] text_r, input [3:0] text_g, input [3:0] text_b, input text_alpha,
        input [3:0] csb1_r, input [3:0] csb1_g, input [3:0] csb1_b, input csb1_alpha,
        input [3:0] sprite1_r, input [3:0] sprite1_g, input [3:0] sprite1_b, input sprite1_alpha,
        input [3:0] item_box_r, input [3:0] item_box_g, input [3:0] item_box_b, input item_box_alpha,
        input [3:0] banana_r, input [3:0] banana_g, input [3:0] banana_b, input banana_alpha,
        input [3:0] mushroom_r, input [3:0] mushroom_g, input [3:0] mushroom_b, input mushroom_alpha,
        input [3:0] lightning_r, input [3:0] lightning_g, input [3:0] lightning_b, input lightning_alpha,
        input [3:0] timer_r, input [3:0] timer_g, input [3:0] timer_b, input timer_alpha,
        input [3:0] latiku_oym_r, input [3:0] latiku_oym_g, input [3:0] latiku_oym_b, input latiku_oym_alpha,
        input [3:0] laps1_r, input [3:0] laps1_g, input [3:0] laps1_b, input laps1_alpha,
        
        output [3:0] out_red, output [3:0] out_green, output [3:0] out_blue);
    
    wire [3:0] shader_red = (text_alpha ? text_r : 
            (latiku_oym_alpha ? latiku_oym_r :
            (laps1_alpha ? laps1_r :
            (sprite1_alpha ? sprite1_r : 
            (banana_alpha ? banana_r :
            (mushroom_alpha ? mushroom_r :
            (lightning_alpha ? lightning_r :
            (item_box_alpha ? item_box_r :
            (timer_alpha ? timer_r :
            (csb1_alpha ? csb1_r : 
            (bg_alpha ? bg_r : 
            (0)))))))));
    wire [3:0] shader_green = (text_alpha ? text_g : 
            (latiku_oym_alpha ? latiku_oym_g :
            (laps1_alpha ? laps1_g :
            (sprite1_alpha ? sprite1_g : 
            (banana_alpha ? banana_g :
            (mushroom_alpha ? mushroom_g :
            (lightning_alpha ? lightning_g :
            (item_box_alpha ? item_box_g :
            (timer_alpha ? timer_g :
            (csb1_alpha ? csb1_g : 
            (bg_alpha ? bg_g : 
            (0)))))))));
    wire [3:0] shader_blue = (text_alpha ? text_b : 
            (latiku_oym_alpha ? latiku_oym_b :
            (laps1_alpha ? laps1_g :
            (sprite1_alpha ? sprite1_b :
            (banana_alpha ? banana_b :
            (mushroom_alpha ? mushroom_b :
            (lightning_alpha ? lightning_b :
            (item_box_alpha ? item_box_b :
            (timer_alpha ? timer_b : 
            (csb1_alpha ? csb1_b : 
            (bg_alpha ? bg_b : 
            (0)))))))));
    
    wire [7:0] red_fade = (shader_red) * fader;
    wire [7:0] green_fade = (shader_green) * fader;
    wire [7:0] blue_fade = (shader_blue) * fader;
    
    assign out_red = red_fade[7:4];
    assign out_green = green_fade[7:4];
    assign out_blue = blue_fade[7:4];
endmodule
