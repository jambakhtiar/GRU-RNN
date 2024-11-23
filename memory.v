module memory #(
    parameter ADDR_WIDTH = 8,       // Address width (number of address bits)
    parameter DATA_WIDTH = 32,      // Data width (number of data bits)
    parameter MEM_SIZE   = 256      // Memory size (number of words)
)(
    input wire clk,
    input wire [ADDR_WIDTH-1:0] addr,
    input wire [DATA_WIDTH-1:0] data_in,
    input wire we,                  // Write enable
    output reg [DATA_WIDTH-1:0] data_out
);

    // Define the memory array
    reg [DATA_WIDTH-1:0] mem_array [0:MEM_SIZE-1];

    // Memory read and write operations
    always @(posedge clk) begin
        if (we) begin
            mem_array[addr] <= data_in;  // Write operation
        end else begin
            data_out <= mem_array[addr]; // Read operation
        end
    end

endmodule
