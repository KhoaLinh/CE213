module Tristate (out, in, oe);

    input   in, oe;
    output  out;
    tri     out;

    bufif1  b1(out, in, oe);

endmodule