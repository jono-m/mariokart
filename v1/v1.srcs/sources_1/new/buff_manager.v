`timescale 1ns / 1ps

module buff_item_manager(input clk_100mhz, input rst,
    input item_box_hit,
    //input lightning_hit,
    input Z,
    output reg [1:0] owned_item = `ITEM_NONE,
    output reg picking_item = 0
    //output reg [1:0] buff = `BUFF_NONE,
    //output reg place_banana,
    //output reg use_lightning
    );

  reg [2:0] item_pick_counter = 0;
  reg [26:0] item_pick_clk_counter = 0;
  reg [26:0] item_rotation_clk_counter = 0;

  //reg buff_expired = 1;

  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      owned_item <= `ITEM_NONE;
      // buff <= `BUFF_NONE;
      picking_item <= 0;

      item_pick_counter <= 0;
      item_pick_clk_counter <= 0;
      item_rotation_clk_counter <= 0;
    end
    else begin
      if(item_box_hit) begin
        picking_item <= 1;
      end
      // if(lightning_hit) begin
      //   buff <= `BUFF_LIGHTNING;
      // end

      // We are currently picking an item
      if(picking_item == 1) begin
        if(item_pick_clk_counter < 100000000) begin
          item_pick_clk_counter <= item_pick_clk_counter + 1;
        end
        else begin
          item_pick_clk_counter <= 0;
          if(item_pick_counter < `ITEM_PICK_TIME_SECONDS) begin
            item_pick_counter <= item_pick_counter + 1;
          end
          else begin
            picking_item <= 0;
            item_pick_counter <= 0;
          end
        end
        if(item_rotation_clk_counter < 12000000) begin
          item_rotation_clk_counter <= item_rotation_clk_counter + 1;
        end
        else begin
          item_rotation_clk_counter <= 0;
          if(owned_item == 3) begin
            owned_item <= 1;
          end
          else begin
            owned_item <= owned_item + 1;
          end
        end
      end
      else if(owned_item != `ITEM_NONE) begin
        // Using an item.
        if(Z == 1) begin
          case(owned_item)
            `ITEM_BANANA: begin
              //place_banana <= 1;
              owned_item <= `ITEM_NONE;
            end
            `ITEM_MUSHROOM: begin
              //buff <= `BUFF_MUSHROOM;
              owned_item <= `ITEM_NONE;
            end
            `ITEM_LIGHTNING: begin
              //use_lightning <= 1;
              owned_item <= `ITEM_NONE;
            end
          endcase
        end
      end
      // else begin
      //   place_banana <= 0;
      //   use_lightning <= 0;
      // end

      // // Update 
      // if(buff_expired == 1) begin
      //   buff <= `BUFF_NONE;
      // end
    end
  end

  /*reg [1:0] last_buff = `BUFF_NONE;
  reg [2:0] buff_counter <= 0;
  reg [26:0] buff_clk_counter <= 0;
  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      buff_expired <= 1;
      last_buff <= `BUFF_NONE;
      buff_counter <= 0;
      buff_clk_counter <= 0;
    end
    else begin
      if(buff != `BUFF_NONE) begin
        if(last_buff == `BUFF_NONE) begin
          case(buff)
            `BUFF_MUSHROOM: buff_counter <= `MUSHROOM_BOOST_SECONDS;
            `BUFF_BANANA: buff_counter <= `BANANA_SECONDS;
            `BUFF_LIGHTNING: buff_counter <= `LIGHTNING_SECONDS;
          endcase
        end
        if(buff_counter > 0) begin
          if(buff_clk_counter < 100000000) begin
            buff_clk_counter <= buff_clk_counter + 1;
          end
          else begin
            buff_clk_counter <= 0;
            buff_counter <= buff_counter - 1;
          end
        end
        else begin
          buff_expired <= 1;
        end
      end
      else begin
        buff_expired <= 0;
      end
    end
  end*/
endmodule