`timescale 1ns / 1ps

module decoder_tb;

    // Inputs
    reg A;
    reg B;
    reg enable;

    // Outputs
    wire [0:3] D;

    // Instantiate the Unit Under Test (UUT)
    decoder_2x4_gates uut (
        .D(D), 
        .A(A), 
        .B(B), 
        .enable(enable)
    );

    initial begin
        // GTKWave ke liye VCD file generate karne ka code
        $dumpfile("decoder_waveform.vcd");
        $dumpvars(0, decoder_tb);

        // Test Cases (Inputs apply karna)
        $display("Enable | A B | D0 D1 D2 D3");
        
        // Enable = 1 (Decoder disabled, all outputs should be 1 because of NAND)
        enable = 1; A = 0; B = 0; #10;
        
        // Enable = 0 (Decoder enabled)
        enable = 0; A = 0; B = 0; #10; // D[0] should be 0
        enable = 0; A = 0; B = 1; #10; // D[1] should be 0
        enable = 0; A = 1; B = 0; #10; // D[2] should be 0
        enable = 0; A = 1; B = 1; #10; // D[3] should be 0

        // Finish simulation
        $finish;
    end

    // Print values to console whenever they change
    always @(A or B or enable or D) begin
        $display("   %b   | %b %b |  %b  %b  %b  %b", enable, A, B, D[0], D[1], D[2], D[3]);
    end

endmodule