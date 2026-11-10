checker zad9_checker (
    clk,
    rst,
    TEMP_HI,
    ALARM
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	ALARM_assert: assert property (ALARM |-> $past(TEMP_HI));

endchecker
