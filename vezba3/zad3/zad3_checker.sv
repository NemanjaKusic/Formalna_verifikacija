checker zad3_checker (
    clk,
    rst,
    START,
    STOP
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	START_STOP_assert: assert property (START |=> !STOP);
	STOP_START_assert: assert property (STOP |=> !START);

endchecker
