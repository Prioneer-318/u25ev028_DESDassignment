


module NAND_dataflow(
 input a,b,
    output y
);

assign y =~( a & b);

endmodule
