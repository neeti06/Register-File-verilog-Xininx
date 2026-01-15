module register_file_8x8 (
    input  wire        clk,
    input  wire        reset,
    input  wire        we,
    input  wire [2:0]  waddr,
    input  wire [7:0]  wdata,
    input  wire [2:0]  raddr1,
    input  wire [2:0]  raddr2,
    output wire [7:0]  rdata1,
    output wire [7:0]  rdata2
);

    reg [7:0] reg_file [0:7];
    integer i;

    always @(posedge clk) begin
        if (reset) begin
            for (i = 0; i < 8; i = i + 1)
                reg_file[i] <= 8'b0;
        end
        else if (we) begin
            reg_file[waddr] <= wdata;
        end
    end

    assign rdata1 = reg_file[raddr1];
    assign rdata2 = reg_file[raddr2];

endmodule
