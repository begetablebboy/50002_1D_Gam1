/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    input [5:0] arcade_button,
    output reg rpin,
    output reg gpin,
    output reg bpin,
    output reg vpin,
    output reg hpin
  );
  
  
  
  reg [5:0] arcade_button_n;
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  wire [1-1:0] M_display_o_animate;
  wire [1-1:0] M_display_hsync;
  wire [1-1:0] M_display_vsync;
  wire [11-1:0] M_display_x;
  wire [11-1:0] M_display_y;
  vga_2 display (
    .clk(clk),
    .rst(rst),
    .o_animate(M_display_o_animate),
    .hsync(M_display_hsync),
    .vsync(M_display_vsync),
    .x(M_display_x),
    .y(M_display_y)
  );
  localparam DEFAULT_level = 4'd0;
  localparam LEVEL0_level = 4'd1;
  localparam LEVEL1_level = 4'd2;
  localparam LEVEL2_level = 4'd3;
  localparam LEVEL3_level = 4'd4;
  localparam LEVEL4_level = 4'd5;
  localparam LEVEL5_level = 4'd6;
  localparam LEVEL6_level = 4'd7;
  localparam LEVEL7_level = 4'd8;
  localparam LEVEL8_level = 4'd9;
  localparam FAIL_level = 4'd10;
  
  reg [3:0] M_level_d, M_level_q = DEFAULT_level;
  reg [26:0] M_counter_d, M_counter_q = 1'h0;
  reg [4:0] M_current_level_d, M_current_level_q = 1'h0;
  wire [5-1:0] M_menu_o_x;
  wire [5-1:0] M_menu_o_y;
  wire [1-1:0] M_menu_r;
  wire [1-1:0] M_menu_g;
  wire [1-1:0] M_menu_b;
  reg [1-1:0] M_menu_on;
  menu_3 menu (
    .clk(clk),
    .rst(rst),
    .x(M_display_x),
    .y(M_display_y),
    .i_animate(M_display_o_animate),
    .up(arcade_button_n[0+0-:1]),
    .down(arcade_button_n[2+0-:1]),
    .left(arcade_button_n[3+0-:1]),
    .right(arcade_button_n[4+0-:1]),
    .on(M_menu_on),
    .o_x(M_menu_o_x),
    .o_y(M_menu_o_y),
    .r(M_menu_r),
    .g(M_menu_g),
    .b(M_menu_b)
  );
  wire [1-1:0] M_level0_r;
  wire [1-1:0] M_level0_g;
  wire [1-1:0] M_level0_b;
  wire [1-1:0] M_level0_fail;
  wire [1-1:0] M_level0_pass;
  reg [1-1:0] M_level0_on;
  level1_4 level0 (
    .clk(clk),
    .rst(rst),
    .x(M_display_x),
    .y(M_display_y),
    .i_animate(M_display_o_animate),
    .up(arcade_button_n[0+0-:1]),
    .down(arcade_button_n[2+0-:1]),
    .left(arcade_button_n[3+0-:1]),
    .right(arcade_button_n[4+0-:1]),
    .on(M_level0_on),
    .r(M_level0_r),
    .g(M_level0_g),
    .b(M_level0_b),
    .fail(M_level0_fail),
    .pass(M_level0_pass)
  );
  wire [1-1:0] M_level1_r;
  wire [1-1:0] M_level1_g;
  wire [1-1:0] M_level1_b;
  wire [1-1:0] M_level1_pass;
  reg [1-1:0] M_level1_on;
  level2_5 level1 (
    .clk(clk),
    .rst(rst),
    .x(M_display_x),
    .y(M_display_y),
    .i_animate(M_display_o_animate),
    .up(arcade_button_n[0+0-:1]),
    .down(arcade_button_n[2+0-:1]),
    .left(arcade_button_n[3+0-:1]),
    .right(arcade_button_n[4+0-:1]),
    .on(M_level1_on),
    .r(M_level1_r),
    .g(M_level1_g),
    .b(M_level1_b),
    .pass(M_level1_pass)
  );
  wire [1-1:0] M_level3_r;
  wire [1-1:0] M_level3_g;
  wire [1-1:0] M_level3_b;
  wire [1-1:0] M_level3_pass;
  reg [1-1:0] M_level3_on;
  level6_6 level3 (
    .clk(clk),
    .rst(rst),
    .x(M_display_x),
    .y(M_display_y),
    .i_animate(M_display_o_animate),
    .up(arcade_button_n[0+0-:1]),
    .down(arcade_button_n[2+0-:1]),
    .left(arcade_button_n[3+0-:1]),
    .right(arcade_button_n[4+0-:1]),
    .on(M_level3_on),
    .r(M_level3_r),
    .g(M_level3_g),
    .b(M_level3_b),
    .pass(M_level3_pass)
  );
  wire [1-1:0] M_level2_r;
  wire [1-1:0] M_level2_g;
  wire [1-1:0] M_level2_b;
  wire [1-1:0] M_level2_pass;
  reg [1-1:0] M_level2_on;
  level4_7 level2 (
    .clk(clk),
    .rst(rst),
    .x(M_display_x),
    .y(M_display_y),
    .i_animate(M_display_o_animate),
    .up(arcade_button_n[0+0-:1]),
    .down(arcade_button_n[2+0-:1]),
    .left(arcade_button_n[3+0-:1]),
    .right(arcade_button_n[4+0-:1]),
    .change_ball(arcade_button_n[1+0-:1]),
    .on(M_level2_on),
    .r(M_level2_r),
    .g(M_level2_g),
    .b(M_level2_b),
    .pass(M_level2_pass)
  );
  wire [1-1:0] M_level4_r;
  wire [1-1:0] M_level4_g;
  wire [1-1:0] M_level4_b;
  wire [1-1:0] M_level4_pass;
  reg [1-1:0] M_level4_on;
  level5_8 level4 (
    .clk(clk),
    .rst(rst),
    .x(M_display_x),
    .y(M_display_y),
    .i_animate(M_display_o_animate),
    .up(arcade_button_n[0+0-:1]),
    .down(arcade_button_n[2+0-:1]),
    .left(arcade_button_n[3+0-:1]),
    .right(arcade_button_n[4+0-:1]),
    .change_ball(arcade_button_n[1+0-:1]),
    .on(M_level4_on),
    .r(M_level4_r),
    .g(M_level4_g),
    .b(M_level4_b),
    .pass(M_level4_pass)
  );
  
  always @* begin
    M_level_d = M_level_q;
    M_counter_d = M_counter_q;
    M_current_level_d = M_current_level_q;
    
    M_level0_on = 1'h0;
    M_level1_on = 1'h0;
    M_level2_on = 1'h0;
    M_level3_on = 1'h0;
    M_level4_on = 1'h0;
    M_menu_on = 1'h0;
    rpin = 1'h0;
    gpin = 1'h0;
    bpin = 1'h0;
    arcade_button_n = ~arcade_button;
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    io_led[0+0+5-:6] = arcade_button_n;
    vpin = M_display_vsync;
    hpin = M_display_hsync;
    rpin = M_menu_r;
    gpin = M_menu_g;
    bpin = M_menu_b;
    M_current_level_d = M_current_level_q;
    M_counter_d = M_counter_q + 1'h1;
    M_level_d = M_level_q;
    
    case (M_level_q)
      DEFAULT_level: begin
        M_menu_on = 1'h1;
        rpin = M_menu_r;
        gpin = M_menu_g;
        bpin = M_menu_b;
        if (M_menu_o_x == 1'h0 && M_menu_o_y == 1'h0 && arcade_button_n[1+0-:1]) begin
          M_level_d = LEVEL0_level;
        end else begin
          if (M_menu_o_x == 1'h1 && M_menu_o_y == 1'h0 && arcade_button_n[1+0-:1]) begin
            M_level_d = LEVEL1_level;
          end else begin
            if (M_menu_o_x == 2'h2 && M_menu_o_y == 1'h0 && arcade_button_n[1+0-:1]) begin
              M_level_d = LEVEL2_level;
            end else begin
              if (M_menu_o_x == 2'h3 && M_menu_o_y == 1'h0 && arcade_button_n[1+0-:1]) begin
                M_level_d = LEVEL3_level;
              end else begin
                if (M_menu_o_x == 3'h4 && M_menu_o_y == 1'h0 && arcade_button_n[1+0-:1]) begin
                  M_level_d = LEVEL4_level;
                end else begin
                  if (M_menu_o_x == 1'h0 && M_menu_o_y == 1'h1 && arcade_button_n[1+0-:1]) begin
                    M_level_d = LEVEL5_level;
                  end else begin
                    if (M_menu_o_x == 1'h1 && M_menu_o_y == 1'h1 && arcade_button_n[1+0-:1]) begin
                      M_level_d = LEVEL6_level;
                    end else begin
                      if (M_menu_o_x == 2'h2 && M_menu_o_y == 1'h1 && arcade_button_n[1+0-:1]) begin
                        M_level_d = LEVEL7_level;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      LEVEL0_level: begin
        M_level0_on = 1'h1;
        rpin = M_level0_r;
        gpin = M_level0_g;
        bpin = M_level0_b;
        if (M_level0_fail == 1'h1) begin
          M_counter_d = 1'h0;
          M_current_level_d = 1'h0;
          M_level_d = FAIL_level;
        end else begin
          if (arcade_button_n[5+0-:1]) begin
            M_level_d = DEFAULT_level;
          end else begin
            if (M_level0_pass) begin
              M_counter_d = 1'h0;
              M_current_level_d = 1'h1;
              M_level_d = FAIL_level;
            end
          end
        end
      end
      LEVEL1_level: begin
        M_level1_on = 1'h1;
        rpin = M_level1_r;
        gpin = M_level1_g;
        bpin = M_level1_b;
        if (arcade_button_n[5+0-:1]) begin
          M_level_d = DEFAULT_level;
        end else begin
          if (M_level1_pass) begin
            M_counter_d = 1'h0;
            M_current_level_d = 2'h2;
            M_level_d = FAIL_level;
          end
        end
      end
      LEVEL2_level: begin
        M_level1_on = 1'h0;
        M_level2_on = 1'h1;
        rpin = M_level2_r;
        gpin = M_level2_g;
        bpin = M_level2_b;
        if (arcade_button_n[5+0-:1] == 1'h1) begin
          M_level_d = DEFAULT_level;
        end else begin
          if (M_level2_pass) begin
            M_counter_d = 1'h0;
            M_current_level_d = 2'h3;
            M_level_d = FAIL_level;
          end
        end
      end
      LEVEL3_level: begin
        M_level2_on = 1'h0;
        M_level3_on = 1'h1;
        rpin = M_level3_r;
        gpin = M_level3_g;
        bpin = M_level3_b;
        if (arcade_button_n[5+0-:1] == 1'h1) begin
          M_level_d = DEFAULT_level;
        end else begin
          if (M_level3_pass) begin
            M_counter_d = 1'h0;
            M_current_level_d = 3'h4;
            M_level_d = FAIL_level;
          end
        end
      end
      LEVEL4_level: begin
        M_level3_on = 1'h0;
        M_level4_on = 1'h1;
        rpin = M_level4_r;
        gpin = M_level4_g;
        bpin = M_level4_b;
        if (arcade_button_n[5+0-:1]) begin
          M_level_d = DEFAULT_level;
        end else begin
          if (M_level4_pass) begin
            M_counter_d = 1'h0;
            M_current_level_d = 1'h0;
            M_level_d = FAIL_level;
          end
        end
      end
      FAIL_level: begin
        io_led = 24'hffffff;
        if (M_counter_q[23+0-:1] == 1'h1) begin
          if (M_current_level_q == 1'h1) begin
            M_level_d = LEVEL1_level;
          end else begin
            if (M_current_level_q == 1'h0) begin
              M_level_d = LEVEL0_level;
            end else begin
              if (M_current_level_q == 2'h2) begin
                M_level_d = LEVEL2_level;
              end else begin
                if (M_current_level_q == 2'h3) begin
                  M_level_d = LEVEL3_level;
                end else begin
                  if (M_current_level_q == 3'h4) begin
                    M_level_d = LEVEL4_level;
                  end else begin
                    if (M_current_level_q == 3'h5) begin
                      M_level_d = LEVEL5_level;
                    end else begin
                      if (M_current_level_q == 3'h6) begin
                        M_level_d = LEVEL6_level;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
      M_current_level_q <= 1'h0;
      M_level_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
      M_current_level_q <= M_current_level_d;
      M_level_q <= M_level_d;
    end
  end
  
endmodule
