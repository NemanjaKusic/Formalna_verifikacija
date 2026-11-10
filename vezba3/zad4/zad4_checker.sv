checker zad4_checker (
    clk,
    rst,
    PING,
    PONG
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	PING_PONG_assert: assert property (PING |-> ##[1:3] PONG);

endchecker
