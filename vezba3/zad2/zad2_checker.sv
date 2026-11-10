checker zad2_checker (
    clk,
    rst,
    STROBE
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	STROBE_assert: assert property ($rose(STROBE) |-> STROBE[*2] ##1 !STROBE);

endchecker
