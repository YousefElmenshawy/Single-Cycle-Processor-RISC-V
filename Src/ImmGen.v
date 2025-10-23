`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 03:49:21 PM
// Design Name: 
// Module Name: ImmGen
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

module ImmGen (output reg [31:0] gen_out, input [31:0] inst);
wire [6:0] opcode = inst [6:0];
always @ (*)begin
casex ( opcode [6:5])
2'b00: gen_out = {{20{inst[31]}}, inst[31:20]};
2'b01: gen_out = {{20{inst[31]}}, inst[31:25], inst[11:7]};
2'b1x: gen_out = {{21{inst[31]}}, inst[7], inst[30:25], inst[11:8]};

default: gen_out = 0;

endcase

end
endmodule