module router_register_tb();
	reg clock, resetn, pkt_valid;
	reg [7:0] data_in;
	reg fifo_full, rst_int_reg;
	reg detect_add, ld_state, laf_state, lfd_state, full_state;
	
	wire parity_done, low_pkt_valid, err;
	wire [7:0] dout;
	
	router_register DUT(.clock(clock),
						.resetn(resetn),
						.pkt_valid(pkt_valid),
						.data_in(data_in),
						.fifo_full(fifo_full),
						.rst_int_reg(rst_int_reg),
						.detect_add(detect_add),
						.ld_state(ld_state),
						.laf_state(laf_state),
						.lfd_state(lfd_state),
						.full_state(full_state),
						.parity_done(parity_done),
						.low_pkt_valid(low_pkt_valid),
						.err(err),
						.dout(dout));
						
	always #10 clock = ~clock;
	
	task initialize; begin
		{clock, pkt_valid, data_in, fifo_full, rst_int_reg,
		detect_add, ld_state, laf_state, lfd_state, full_state} = 0;
	end
	endtask
	
	task reset_all; begin
		@(posedge clock)
			resetn = 0;
		
		@(posedge clock)
			resetn = 1;
	end
	endtask
	
	integer i;
	
	task packet_generation;
		reg[7:0] playload_data, parity, header;
		reg[5:0] playload_len;
		reg[1:0] addr;
		
		begin
			@(posedge clock)
			playload_len  = 6'd5;
			addr		  = 2'b10;
			pkt_valid	  = 1'b1;
			detect_add	  = 1'b1;
			header		  = {playload_len, addr};
			data_in		  = header; 
			parity		  = 8'h00^header;
			
			@(posedge clock)
			detect_add	 = 1'b0;
			lfd_state  	 = 1'b1;
			full_state	 = 1'b0;
			fifo_full	 = 1'b0;
			laf_state	 = 1'b0;
			for(i = 0; i<playload_len; i = i+1) begin
				@(posedge clock)
				lfd_state	= 1'b0;
				ld_state	= 1'b1;
				playload_data = {$random}%256;
				data_in		= playload_data;
				parity		= parity^data_in;
			end
			@(posedge clock)
			pkt_valid 	= 1'b0;
			data_in		= parity;
			@(posedge clock)
			ld_state	= 1'b0;
			
		end
	endtask
	
	task packet_generation_err;
		reg[7:0] playload_data, parity, header;
		reg[5:0] playload_len;
		reg[1:0] addr;
		
		begin
			@(posedge clock)
			playload_len  = 6'd5;
			addr		  = 2'b10;
			pkt_valid	  = 1'b1;
			detect_add	  = 1'b1;
			header		  = {playload_len, addr};
			data_in		  = header; 
			parity		  = 8'h00^header;
			
			@(posedge clock)
			detect_add	 = 1'b0;
			lfd_state  	 = 1'b1;
			full_state	 = 1'b0;
			fifo_full	 = 1'b0;
			laf_state	 = 1'b0;
			for(i = 0; i<playload_len; i = i+1) begin
				@(posedge clock)
				lfd_state	= 1'b0;
				ld_state	= 1'b1;
				playload_data = {$random}%256;
				data_in		= playload_data;
				//parity		= parity^data_in;
			end
			@(posedge clock)
			pkt_valid 	= 1'b0;
			data_in		= {$random}%256;
			@(posedge clock)
			ld_state	= 1'b0;
			
		end
	endtask
	
	initial
		begin
			initialize;
			$monitor("Time=%0t | resetn=%b pkt_valid=%b data_in=%h dout=%h parity_done=%b low_pkt_valid=%b err=%b",
              $time, resetn, pkt_valid, data_in, dout, parity_done, low_pkt_valid, err);
				  
			reset_all;
			packet_generation;
			#50;
			reset_all;
			packet_generation_err;
			reset_all;
			
			#100;  
		$finish;
		end
	endmodule