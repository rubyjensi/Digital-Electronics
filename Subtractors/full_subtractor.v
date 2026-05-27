module full_subtractor (
    input a,
    input b,
    input bin,    // Borrow In
    output diff,  // Difference
    output bout   // Borrow Out
);

    // Full Subtractor logic using dataflow modeling
    assign diff = a ^ b ^ bin;
    assign bout = (~a & b) | (~(a ^ b) & bin);

endmodule