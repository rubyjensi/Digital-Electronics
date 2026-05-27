module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    // Full Adder logic using dataflow modeling
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);

endmodule