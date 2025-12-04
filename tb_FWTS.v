module tb_FWTS;
    reg clk;
    reg rst;
    wire [2:0] north, south, east, west;
    FWTS dut (
        .clk(clk),
        .rst(rst),
        .north(north),
        .south(south),
        .east(east),
        .west(west)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1;
        #20;
        rst = 0;
        #5000;
        $stop;
    end
endmodule
