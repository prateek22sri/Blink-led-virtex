`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2018 05:07:29 PM
// Design Name: 
// Module Name: led
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


module led(
    input clk,
    output led
    );
    
    reg [31:0] counter = 0;
    
    always @ (posedge clk) begin
        counter <= counter + 1;
    end    
    
    assign led = counter[27];
    
endmodule
