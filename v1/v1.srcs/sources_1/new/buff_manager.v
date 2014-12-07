`timescale 1ns / 1ps

module buff_item_manager(input clk_100mhz, input rst,
    input item_box_hit,
    input banana_hit,
    input lightning_hit,
    input Z,
    output reg [1:0] owned_item = `ITEM_NONE,
    output reg picking_item = 0,
    output has_banana_buff,
    output has_lightning_buff,
    output has_mushroom_buff,
    output reg place_banana,
    output reg use_lightning,
    output reg use_mushroom,
    );

  reg [2:0] item_pick_counter = 0;
  reg [26:0] item_pick_clk_counter = 0;
  reg [26:0] item_rotation_clk_counter = 0;

  reg [2:0] mushroom_counter = 0;
  reg [26:0] mushroom_clk_counter = 0;
  reg [2:0] banana_counter = 0;
  reg [26:0] banana_clk_counter = 0;
  reg [2:0] lightning_counter = 0;
  reg [26:0] lightning_clk_counter = 0;

  assign has_banana_buff = banana_counter > 0;
  assign has_mushroom_buff = mushroom_counter > 0;
  assign has_lightning_buff = lightning_counter > 0;

  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      owned_item <= `ITEM_NONE;
      picking_item <= 0;

      item_pick_counter <= 0;
      item_pick_clk_counter <= 0;
      item_rotation_clk_counter <= 0;

      place_banana <= 0;
      use_lightning <= 0;

      mushroom_counter <= 0;
      mushroom_clk_counter <= 0;
      banana_counter <= 0;
      banana_clk_counter <= 0;
      lightning_counter <= 0;
      lightning_clk_counter <= 0;
    end
    else begin
      if(item_box_hit) begin
        picking_item <= 1;
      end
      if(lightning_hit) begin
        lightning_counter <= `LIGHTNING_SECONDS;
      end
      if(banana_hit) begin
        banana_counter <= `BANANA_SECONDS;
      end

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
              place_banana <= 1;
              owned_item <= `ITEM_NONE;
            end
            `ITEM_MUSHROOM: begin
              mushroom_counter <= `MUSHROOM_BOOST_SECONDS;
              use_mushroom <= 1;
              owned_item <= `ITEM_NONE;
            end
            `ITEM_LIGHTNING: begin
              use_lightning <= 1;
              owned_item <= `ITEM_NONE;
            end
          endcase
        end
      end
      else begin
        place_banana <= 0;
        use_lightning <= 0;
        use_mushroom <= 0;
      end

      if(has_banana_buff) begin
        if(banana_clk_counter < 100000000) begin
          banana_clk_counter <= banana_clk_counter + 1;
        end
        else begin
          banana_clk_counter <= 0;
          banana_counter <= banana_counter - 1;
        end
      end
      if(has_mushroom_buff) begin
        if(mushroom_clk_counter < 100000000) begin
          mushroom_clk_counter <= mushroom_clk_counter + 1;
        end
        else begin
          mushroom_clk_counter <= 0;
          mushroom_counter <= mushroom_counter - 1;
        end
      end
      if(has_lightning_buff) begin
        if(lightning_clk_counter < 100000000) begin
          lightning_clk_counter <= lightning_clk_counter + 1;
        end
        else begin
          lightning_clk_counter <= 0;
          lightning_counter <= lightning_counter - 1;
        end
      end
    end
  end
endmodule