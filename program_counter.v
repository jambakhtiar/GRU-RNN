module program_counter (
    input wire clk,
    input wire reset,
    input wire [31:0] next_pc,
    output reg [31:0] pc
);

    // Initialize the program counter
    initial begin
        pc = 32'b0;
    end

    // Update the program counter on each clock edge
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 32'b0;       // Reset the program counter to 0
        end else begin
            pc <= next_pc;     // Load the next PC value
        end
    end

endmodule
