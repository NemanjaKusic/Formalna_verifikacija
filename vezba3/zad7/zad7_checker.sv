checker zad7_checker (
    clk,
    rst,
    CS,
    RD,
    WR
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	RD_notWR_assert: assert property (RD |-> !WR);
	WR_notRD_assert: assert property (WR |-> !RD);
	CS_assert: 	 assert property (RD || WR |-> CS);

endchecker
