module FWTS(
input clk,
input rst,
output reg[2:0] north,
output reg[2:0] south,
output reg[2:0] east,
output reg[2:0] west
);
parameter S_NS_GREEN=3'd0;
parameter S_NS_YELLOW=3'd1;
parameter S_ALL_RED_1=3'd2;
parameter S_EW_GREEN=3'd3;
parameter S_EW_YELLOW=3'd4;
parameter S_ALL_RED_2=3'd5;
reg [2:0] state;
reg [2:0] next_state;
integer counter ;
parameter T_GREEN=50;
parameter T_YELLOW=10;
parameter T_RED=5;
always @(*) begin
next_state=state;
case(state)
S_NS_GREEN: if(counter>=T_GREEN-1) next_state=S_NS_YELLOW;
S_NS_YELLOW:if(counter>=T_YELLOW-1) next_state=S_ALL_RED_1;
S_ALL_RED_1:if(counter>=T_RED-1) next_state=S_EW_GREEN;
S_EW_GREEN:if(counter>=T_GREEN-1) next_state=S_EW_YELLOW;
S_EW_YELLOW:if(counter>=T_YELLOW-1)next_state=S_ALL_RED_2;
S_ALL_RED_2:if(counter>=T_RED-1)next_state=S_NS_GREEN;
endcase
end 
always@(posedge clk or posedge rst) begin
if (rst) begin
state <=S_NS_GREEN;
counter<=0;
end
else begin
if (state==next_state)
counter<= counter+1;
else begin
state<=next_state;
counter<=0;
end 
end
end
localparam RED=3'b001;
localparam YELLOW=3'b010;
localparam GREEN=3'b100;
always@(*) begin
north=RED;
south =RED;
east=RED;
west=RED;
case(state)
S_NS_GREEN: begin north=GREEN;south=GREEN;end
S_NS_YELLOW: begin north=YELLOW;south=YELLOW;end
S_EW_GREEN: begin east=GREEN;west=GREEN;end
S_EW_YELLOW: begin east=YELLOW;west=YELLOW;end
endcase
end
endmodule