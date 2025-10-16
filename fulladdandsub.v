// Full Adder-Subtractor (1-bit)
// Mode = 0 → Addition
// Mode = 1 → Subtraction

module fulladdandsub (
    input A, B, Mode,      // Inputs: A, B, and Mode (0 = Add, 1 = Subtract)
    output Sum, Cout       // Outputs: Sum/Difference and Carry/Borrow
);

    wire B_xor;            // Intermediate signal

    // When Mode = 1 → B is complemented (for subtraction)
    assign B_xor = B ^ Mode;

    // Full adder logic
    assign Sum  = A ^ B_xor ^ Mode;
    assign Cout = (A & B_xor) | (Mode & (A ^ B_xor));

endmodule
