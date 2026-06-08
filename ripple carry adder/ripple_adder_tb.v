


module ripple_adder_tb();
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;

ripple_adder_dataflow uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    a=4'b0000; b=4'b0000; cin = 0;
    #10 a=4'b0010; b=4'b0001; cin = 0;
    #10 a=4'b0011; b=4'b0010; cin = 1;
    #10 a=4'b0101; b=4'b0001; cin = 1;
    #10 a=4'b0011; b=4'b0101; cin = 1;

    #20 $finish;

end

endmodule
