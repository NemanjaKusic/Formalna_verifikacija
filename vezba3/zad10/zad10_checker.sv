checker zad10_checker (
    clk,
    rst,
    LOAD,
    BUSY,
    DONE
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	//LOAD_assert: assert property (LOAD |-> (##1 BUSY[*2]) and (##3 DONE));
	LOAD2_assert: assert property (LOAD |=> BUSY[*2] ##1 DONE);

endchecker
