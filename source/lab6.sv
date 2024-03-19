`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2024 09:42:48 PM
// Design Name: 
// Module Name: lab6
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

module lab6(
    input logic [3:0] num,
    input logic [2:0] sel,
    input logic clk,
    input logic reset,
    input logic write,
    output logic [7:0] d,
    output logic [6:0] seg
);
    logic [7:0][6:0] m; 

    always_ff @(posedge clk or posedge reset) begin 
        if(reset) begin
            m[0] = 7'h1;
            m[1] = 7'h1;
            m[2] = 7'h1;
            m[3] = 7'h1;
            m[4] = 7'h1;
            m[5] = 7'h1;
            m[6] = 7'h1;
            m[7] = 7'h1;
            
            end
        
        else begin
            if(write) begin
                
                case(sel)
                    3'h0: begin
                        case(num)
                            4'h0: m[0] <= 7'b0000001;
                            4'h1: m[0] <= 7'b1001111;
                            4'h2: m[0] <= 7'b0010010;
                            4'h3: m[0] <= 7'b0000110;
                            4'h4: m[0] <= 7'b1001100;
                            4'h5: m[0] <= 7'b0100100;
                            4'h6: m[0] <= 7'b0100000;
                            4'h7: m[0] <= 7'b0001111;
                            4'h8: m[0] <= 7'b0000000;
                            4'h9: m[0] <= 7'b0001100;
                            4'ha: m[0] <= 7'b0001000;
                            4'hb: m[0] <= 7'b1100000;
                            4'hc: m[0] <= 7'b0110000;
                            4'hd: m[0] <= 7'b1000010;
                            4'he: m[0] <= 7'b0110000;
                            4'hf: m[0] <= 7'b0111000;
                         endcase
                    end
                    
                    3'h1: begin
                        case(num)
                            4'h0: m[1] <= 7'b0000001;
                            4'h1: m[1] <= 7'b1001111;
                            4'h2: m[1] <= 7'b0010010;
                            4'h3: m[1] <= 7'b0000110;
                            4'h4: m[1] <= 7'b1001100;
                            4'h5: m[1] <= 7'b0100100;
                            4'h6: m[1] <= 7'b0100000;
                            4'h7: m[1] <= 7'b0001111;
                            4'h8: m[1] <= 7'b0000000;
                            4'h9: m[1] <= 7'b0001100;
                            4'ha: m[1] <= 7'b0001000;
                            4'hb: m[1] <= 7'b1100000;
                            4'hc: m[1] <= 7'b0110000;
                            4'hd: m[1] <= 7'b1000010;
                            4'he: m[1] <= 7'b0110000;
                            4'hf: m[1] <= 7'b0111000;
                         endcase
                    end
                    
                    3'h2: begin
                        case(num)
                            4'h0: m[2] <= 7'b0000001;
                            4'h1: m[2] <= 7'b1001111;
                            4'h2: m[2] <= 7'b0010010;
                            4'h3: m[2] <= 7'b0000110;
                            4'h4: m[2] <= 7'b1001100;
                            4'h5: m[2] <= 7'b0100100;
                            4'h6: m[2] <= 7'b0100000;
                            4'h7: m[2] <= 7'b0001111;
                            4'h8: m[2] <= 7'b0000000;
                            4'h9: m[2] <= 7'b0001100;
                            4'ha: m[2] <= 7'b0001000;
                            4'hb: m[2] <= 7'b1100000;
                            4'hc: m[2] <= 7'b0110000;
                            4'hd: m[2] <= 7'b1000010;
                            4'he: m[2] <= 7'b0110000;
                            4'hf: m[2] <= 7'b0111000;
                         endcase
                    end
                    3'h3: begin
                        case(num)
                            4'h0: m[3] <= 7'b0000001;
                            4'h1: m[3] <= 7'b1001111;
                            4'h2: m[3] <= 7'b0010010;
                            4'h3: m[3] <= 7'b0000110;
                            4'h4: m[3] <= 7'b1001100;
                            4'h5: m[3] <= 7'b0100100;
                            4'h6: m[3] <= 7'b0100000;
                            4'h7: m[3] <= 7'b0001111;
                            4'h8: m[3] <= 7'b0000000;
                            4'h9: m[3] <= 7'b0001100;
                            4'ha: m[3] <= 7'b0001000;
                            4'hb: m[3] <= 7'b1100000;
                            4'hc: m[3] <= 7'b0110000;
                            4'hd: m[3] <= 7'b1000010;
                            4'he: m[3] <= 7'b0110000;
                            4'hf: m[3] <= 7'b0111000;
                         endcase
                    end
                    3'h4: begin
                        case(num)
                            4'h0: m[4] <= 7'b0000001;
                            4'h1: m[4] <= 7'b1001111;
                            4'h2: m[4] <= 7'b0010010;
                            4'h3: m[4] <= 7'b0000110;
                            4'h4: m[4] <= 7'b1001100;
                            4'h5: m[4] <= 7'b0100100;
                            4'h6: m[4] <= 7'b0100000;
                            4'h7: m[4] <= 7'b0001111;
                            4'h8: m[4] <= 7'b0000000;
                            4'h9: m[4] <= 7'b0001100;
                            4'ha: m[4] <= 7'b0001000;
                            4'hb: m[4] <= 7'b1100000;
                            4'hc: m[4] <= 7'b0110000;
                            4'hd: m[4] <= 7'b1000010;
                            4'he: m[4] <= 7'b0110000;
                            4'hf: m[4] <= 7'b0111000;
                         endcase
                    end
                    3'h5: begin
                        case(num)
                            4'h0: m[5] <= 7'b0000001;
                            4'h1: m[5] <= 7'b1001111;
                            4'h2: m[5] <= 7'b0010010;
                            4'h3: m[5] <= 7'b0000110;
                            4'h4: m[5] <= 7'b1001100;
                            4'h5: m[5] <= 7'b0100100;
                            4'h6: m[5] <= 7'b0100000;
                            4'h7: m[5] <= 7'b0001111;
                            4'h8: m[5] <= 7'b0000000;
                            4'h9: m[5] <= 7'b0001100;
                            4'ha: m[5] <= 7'b0001000;
                            4'hb: m[5] <= 7'b1100000;
                            4'hc: m[5] <= 7'b0110000;
                            4'hd: m[5] <= 7'b1000010;
                            4'he: m[5] <= 7'b0110000;
                            4'hf: m[5] <= 7'b0111000;
                         endcase
                    end
                    3'h6: begin
                        case(num)
                            4'h0: m[6] <= 7'b0000001;
                            4'h1: m[6] <= 7'b1001111;
                            4'h2: m[6] <= 7'b0010010;
                            4'h3: m[6] <= 7'b0000110;
                            4'h4: m[6] <= 7'b1001100;
                            4'h5: m[6] <= 7'b0100100;
                            4'h6: m[6] <= 7'b0100000;
                            4'h7: m[6] <= 7'b0001111;
                            4'h8: m[6] <= 7'b0000000;
                            4'h9: m[6] <= 7'b0001100;
                            4'ha: m[6] <= 7'b0001000;
                            4'hb: m[6] <= 7'b1100000;
                            4'hc: m[6] <= 7'b0110000;
                            4'hd: m[6] <= 7'b1000010;
                            4'he: m[6] <= 7'b0110000;
                            4'hf: m[6] <= 7'b0111000;
                         endcase
                    end
                    3'h7: begin
                        case(num)
                            4'h0: m[7] <= 7'b0000001;
                            4'h1: m[7] <= 7'b1001111;
                            4'h2: m[7] <= 7'b0010010;
                            4'h3: m[7] <= 7'b0000110;
                            4'h4: m[7] <= 7'b1001100;
                            4'h5: m[7] <= 7'b0100100;
                            4'h6: m[7] <= 7'b0100000;
                            4'h7: m[7] <= 7'b0001111;
                            4'h8: m[7] <= 7'b0000000;
                            4'h9: m[7] <= 7'b0001100;
                            4'ha: m[7] <= 7'b0001000;
                            4'hb: m[7] <= 7'b1100000;
                            4'hc: m[7] <= 7'b0110000;
                            4'hd: m[7] <= 7'b1000010;
                            4'he: m[7] <= 7'b0110000;
                            4'hf: m[7] <= 7'b0111000;
                         endcase
                    end
                        
                endcase
            end
            else begin
                
                case(sel) 
                    3'h0: begin
                        d <= 8'b11111110;
                        seg <= m[0];
                    end
                        
                    
                    3'h1: begin
                        d <= 8'b11111101;
                        seg <= m[1];
                    end
                    3'h2: begin
                        d <= 8'b11111011;
                        seg <= m[2];
                    end
                    3'h3: begin
                        d <= 8'b11110111;
                        seg <= m[3];
                    end
                    3'h4: begin
                        d <= 8'b11101111;
                        seg <= m[4];
                    end
                    3'h5: begin
                        seg <= m[5];
                        d <= 8'b11011111;
                    end
                    3'h6: begin 
                        seg <= m[6];
                        d <= 8'b10111111;
                    end
                    3'h7: begin
                        seg <= m[7];
                        d <= 8'b01111111;
                    end
                    
                
                endcase
            end
        end
    end
endmodule