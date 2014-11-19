`timescale 1ns / 1ps

module vga(input vga_clock,
            output [9:0] x,
            output [9:0] y,
            output vsync, hsync, at_display_area);
    reg [9:0] hcount = 0;    // pixel number on current line
    reg [9:0] vcount = 0;     // line number
    assign x = at_display_area ? (hcount-144) : 0;
    assign y = at_display_area ? (vcount-35) : 0;
    // Counters.
    always @(posedge vga_clock) begin
        if (hcount == 799) begin
            hcount <= 0;
        end
        else begin
            hcount <= hcount +  1;
        end
        if (vcount == 524) begin
            vcount <= 0;
        end
        else if(hcount == 799) begin
            vcount <= vcount + 1;
        end
    end
    
    assign hsync = ~(hcount < 96);
    assign vsync = ~(vcount < 2);
    assign at_display_area = (hcount >= 144 && hcount < 784 && vcount >= 35 && vcount < 515);
endmodule