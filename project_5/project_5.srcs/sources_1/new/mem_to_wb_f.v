`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2017 05:16:12 PM
// Design Name: 
// Module Name: mem_to_wb_f
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


module mem_to_wb_f(
input clk,
input mwreg,
input mm2reg,
input [4:0] mtarget_register,
input [31:0] mans,
input [31:0] mdataout,

output reg wwreg,
output reg wm2reg,
output reg [4:0] wtarget_register,
output reg [31:0] wans,
output reg [31:0] wdataout
    );

always @(posedge clk)
        begin
            wwreg <= mwreg;
            wm2reg <= mm2reg;
            wtarget_register <= mtarget_register;
            wdataout <= mdataout;
            wans <= mans;
        end
    
endmodule
