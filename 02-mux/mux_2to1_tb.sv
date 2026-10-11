`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2026 07:27:34 PM
// Design Name: 
// Module Name: mux_2to1_tb
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


module mux_2to1_tb;
    
    logic data_a;
    logic data_b;
    logic sel;
    logic mux_out;
    
    mux_2to1 dut (
        .data_a(data_a),
        .data_b(data_b),
        .sel(sel),
        .mux_out(mux_out)
    ); 
    
    initial begin 
        //Test Case 1 
        data_a = 1'b0;
        data_b = 1'b1;
        sel = 1'b0;
        #10
        sel = 1'b1;
        
        //Test Case 2
        #10 
        data_a = 1'b1;
        data_b = 1'b0;
        sel = 1'b0;
        #10
        sel = 1'b1;
        
        //Test Case 3 
        #10
        data_a = 1'b1;
        data_b = 1'b1;
        sel = 1'b0;
        #10
        sel = 1'b1;
        
        //Test Case 4
        data_a = 1'b0;
        data_b = 1'b0;
        sel = 1'b0;
        #10
        sel = 1'b1;
        
     end
endmodule
