`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2017 04:56:34 PM
// Design Name: 
// Module Name: exe_to_mem
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


module exe_to_mem(
input clk,
input ewreg,
input em2reg,
input ewmem,
input [4:0] etarget_register,
input [31:0] eans,
input [31:0] eqb,
output reg mwreg,
output reg mm2reg,
output reg mwmem,
output reg [4:0] mtarget_register,
output reg [31:0] mans,
output reg [31:0] mqb
    );

always @(posedge clk)
        begin
            mwreg <= ewreg;
            mm2reg <= em2reg;
            mwmem <= ewmem;
            mtarget_register <= etarget_register;
            mqb <= eqb;
            mans <= eans;
        end
    
endmodule
