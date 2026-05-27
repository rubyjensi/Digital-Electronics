module full_subtractor_tb;

    // Inputs (reg) aur Outputs (wire) declare karo
    reg a;
    reg b;
    reg bin;
    wire diff;
    wire bout;

    // Design module ko instantiate karo
    full_subtractor uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        // GTKWAVE FILE GENERATE KARNE KE LIYE LINES
        $dumpfile("full_subtractor.vcd"); 
        $dumpvars(0, full_subtractor_tb); 

        // Truth table ke test cases (000 se 111 tak)
        a = 0; b = 0; bin = 0; #10;
        a = 0; b = 0; bin = 1; #10;
        a = 0; b = 1; bin = 0; #10;
        a = 0; b = 1; bin = 1; #10;
        a = 1; b = 0; bin = 0; #10;
        a = 1; b = 0; bin = 1; #10;
        a = 1; b = 1; bin = 0; #10;
        a = 1; b = 1; bin = 1; #10;

        // Simulation khatam karo
        $finish;
    end

endmodule