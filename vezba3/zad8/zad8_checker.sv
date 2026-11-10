checker zad8_checker (
    clk,
    rst,
    CFG_EN,
    [1:0] MODE
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	MODE_changed_assert: assert property ($changed(MODE) |-> CFG_EN);

endchecker
