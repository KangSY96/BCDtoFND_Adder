`timescale 1ns / 1ps

module BCDtoFND_Adder(
    input [1:0] i_digitSelect,
    input [3:0] i_a,
    input [3:0] i_b,
    input i_en,
    output [3:0] o_digit,
    output [7:0] o_fndFont
    );

    wire [3:0] w_sum;

    adder_4bit Adder(
    .i_a(i_a), 
    .i_b(i_b), 
    .i_cin(i_en),
    .o_sum(w_sum)
    );

    BCDtoFND FND(
    .i_digitSelect(i_digitSelect),
    .i_value(w_sum),
    .i_en(i_en),
    .o_digit(o_digit),
    .o_fndFont(o_fndFont)
    );

endmodule
