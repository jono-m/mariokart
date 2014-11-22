`timescale 1ns / 1ps

module shader(input [4:0] fader,

        input [3:0] bg_r, input [3:0] bg_g, input [3:0] bg_b, input bg_alpha,
        input [3:0] text_r, input [3:0] text_g, input [3:0] text_b, input text_alpha,
        input [3:0] csb1_r, input [3:0] csb1_g, input [3:0] csb1_b, input csb1_alpha,
        input [3:0] sprite1_r, input [3:0] sprite1_g, input [3:0] sprite1_b, input sprite1_alpha,
        
        output [3:0] out_red, output [3:0] out_green, output [3:0] out_blue);
    
    wire [3:0] shader_red = (text_alpha ? text_r : 
            (sprite1_alpha ? sprite1_r : 
            (csb1_alpha ? csb1_r : 
            (bg_alpha ? bg_r : 
            (0)))));
    wire [3:0] shader_green = (text_alpha ? text_g : 
            (sprite1_alpha ? sprite1_g : 
            (csb1_alpha ? csb1_g : 
            (bg_alpha ? bg_g : 
            (0)))));
    wire [3:0] shader_blue = (text_alpha ? text_b : 
            (sprite1_alpha ? sprite1_b :
            (csb1_alpha ? csb1_b : 
            (bg_alpha ? bg_b : 
            (0)))));
    
    wire [7:0] red_fade = (shader_red) * fader;
    wire [7:0] green_fade = (shader_green) * fader;
    wire [7:0] blue_fade = (shader_blue) * fader;
    
    assign out_red = red_fade[7:4];
    assign out_green = green_fade[7:4];
    assign out_blue = blue_fade[7:4];
endmodule
