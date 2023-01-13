module Character(H,E,L,O,none);
	output [2:0]H;
	output [2:0]E;
	output [2:0]L;
	output [2:0]O;
	output [2:0]none;
	
	assign H = 3'b000;
	assign E = 3'b001;
	assign L = 3'b010;
	assign O = 3'b100;
	assign none = 3'b111;
	
endmodule
