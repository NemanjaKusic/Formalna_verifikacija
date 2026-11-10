checker zad6_checker (
    clk,
    rst,
    REQ,
    ACK
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	ACK1_assert: assert property (ACK |-> $past(REQ, 1));
	//ACK2_assert: assert property (!REQ |=> !ACK);

endchecker
