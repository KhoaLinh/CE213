module Tristate_16bit (out, in, oe);

    input   [15:0]in;
	 input 	oe;
    output  [15:0]out;
    
	 Tristate tristate1[15:0](out[15:0], in[15:0], oe);

endmodule