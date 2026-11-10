checker zad1_checker (
    clk,
    rst,
    TX,
    RX
	) ;

	default
	clocking @(posedge clk);
	endclocking

	default disable iff rst;

	logic out;
        logic [1:0] count;
    
	always @(posedge clk) begin
		if (rst) begin
	    		count <= 2'b00;
		end
		else if (count == 2'b11) begin
	    		count <= 2'b11;
		end
		else begin
		    	count <= count + 1;
		end
	end  
	    
	always @(*) begin
		if (count == 3) begin
			out = 1'b1;
		end
		else begin
			out = 1'b0;
		end
	end

	TX_assert: assert property (!out |-> !TX);
	RX_assert: assert property (!out |-> !RX);


endchecker
