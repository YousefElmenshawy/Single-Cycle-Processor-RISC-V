`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 12:25:22 PM
// Design Name: 
// Module Name: Full_SingleCycle_Processor
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


module Full_SingleCycle_Processor(input fastclk,slowclk,rst,input [1:0] ledSel, input [3:0] ssdSel, output reg [15:0] leds, output reg [6:0] ssd_out, output reg [3:0] Anodes );
 wire [12:0] ssdNum;
 SingleCycle SC(slowclk,rst,ledSel, ssdSel,  leds, ssdNum);
  Seven_Segment_Driver Driver( fastclk,ssdNum, Anodes,ssd_out );
  
endmodule
