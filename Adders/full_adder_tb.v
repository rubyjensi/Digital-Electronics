module full_adder_tb;

    // Inputs (reg) aur Outputs (wire) declare karo
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    // Design module ko instantiate karo
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // YE HAIN WO LINES JISSE GTKWAVE KHULEGA
        $dumpfile("full_adder.vcd"); // Ye file ka naam set karta hai
        $dumpvars(0, full_adder_tb); // Ye saare variables ka data dump karta hai

        // Truth table ke test cases
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        // Simulation khatam karo
        $finish;
    end

endmodule