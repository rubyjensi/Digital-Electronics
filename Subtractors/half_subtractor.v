module half_subtractor (
    input a,
    input b,
    output diff,
    output borrow
);

    // Half Subtractor logic
    assign diff = a ^ b;        // XOR gate for difference
    assign borrow = ~a & b;     // NOT AND gate for borrow

endmodule