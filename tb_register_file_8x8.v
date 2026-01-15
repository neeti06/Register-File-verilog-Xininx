module tb_register_file_8x8;

    reg         clk;
    reg         reset;
    reg         we;
    reg  [2:0]  waddr;
    reg  [7:0]  wdata;
    reg  [2:0]  raddr1;
    reg  [2:0]  raddr2;
    wire [7:0]  rdata1;
    wire [7:0]  rdata2;

    register_file_8x8 dut (
        .clk(clk),
        .reset(reset),
        .we(we),
        .waddr(waddr),
        .wdata(wdata),
        .raddr1(raddr1),
        .raddr2(raddr2),
        .rdata1(rdata1),
        .rdata2(rdata2)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        we = 0;
        waddr = 0;
        wdata = 0;
        raddr1 = 0;
        raddr2 = 0;

        #10 reset = 0;

        // Write data
        #10 we = 1; waddr = 5; wdata = 8'h55;
        #10 we = 0;
        #10 raddr1 = 5; raddr2 = 3;

        // Read data
        #10 raddr1 = 3; raddr2 = 5;
        #10 raddr1 = 1; raddr2 = 7;

        #50 $finish;
    end

endmodule
