`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2024 10:51:24 PM
// Design Name: 
// Module Name: lab6_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module lab6_tb();

    // Inputs
    logic [3:0] num_tb;
    logic [2:0] sel_tb;
    logic clk_tb;
    logic reset_tb;
    logic write_tb;
    
    // Outputs
    logic [7:0] d_tb;
    logic [6:0] seg_tb;

    // Instantiate the module to be tested
    lab6 dut (
        .num(num_tb),
        .sel(sel_tb),
        .clk(clk_tb),
        .reset(reset_tb),
        .write(write_tb),
        .d(d_tb),
        .seg(seg_tb)
    );

    // Clock generation
    foreover #5 clk_tb = ~clk_tb; // Toggle clock every 5 time units

    // Initialize inputs
    initial begin
        num_tb = 4'b0000;
        sel_tb = 3'b000;
        clk_tb = 0;
        reset_tb = 1;
        write_tb = 0;
        #10 reset_tb = 0; // De-assert reset after 10 time units
    end

    // Stimulus
    always @(posedge clk_tb) begin
        // Test case 1
        #20 num_tb = 4'b0001;
        sel_tb = 3'b000;
        write_tb <= 1;
        #10;
        write_tb <= 0;
        // Test case 2
        #20 num_tb = 4'b0010;
        sel_tb = 3'b001;
        write_tb <= 1;
        #10;
        write_tb <= 0;
        // Add more test cases as needed
    end

endmodule



