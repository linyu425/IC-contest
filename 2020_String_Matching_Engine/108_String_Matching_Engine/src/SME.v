module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output reg match;
output reg [4:0] match_index;
output reg valid;

/************************************

    Please complete the circuit design for a String Matching Engine (hereafter referred to as SME).  
    Its function is as follows:
    the task will provide several strings and keyword samples sequentially.  

    The SME circuit must check if the given Pattern is contained within the corresponding String.  
    If a match is found, it should respond with a successful match indication ("match")
    and the position where the match was found.

************************************/

endmodule
