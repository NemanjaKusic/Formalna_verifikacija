checker zad5_checker (
    clk,
    rst,
    FULL,
    PUSH,
    OVF
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	OVF_assert: assert property (FULL && PUSH |=> OVF);

endchecker
