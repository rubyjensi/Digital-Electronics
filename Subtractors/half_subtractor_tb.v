module half_subtractor_tb;

    // Inputs (reg) aur Outputs (wire) declare karo
    reg a;
    reg b;
    wire diff;
    wire borrow;

    // Design module ko instantiate karo
    half_subtractor uut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    initial begin
        // GTKWAVE FILE GENERATE KARNE KE LIYE LINES
        $dumpfile("half_subtractor.vcd"); 
        $dumpvars(0, half_subtractor_tb); 

        // Truth table ke test cases
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // Simulation khatam karo
        $finish;
    end

endmodule