module Comperator(
    input [17:0] A,
    input [17:0] B,
    output reg above,
    output reg equal,
    output reg below
);
    always @(*)
    begin
        if (A > B) 
	begin
            above = 1;
            equal = 0;
            below = 0;
        end
        else if (A == B) 
	begin
            above = 0;
            equal = 1;
            below = 0;
        end
        else if (A < B) 
	begin
            above = 0;
            equal = 0;
            below = 1;
        end
    end
endmodule
