`timescale 1ns/1ps

module router_fsm_tb();

	reg clock, resetn;
	reg parity_done;
	reg pkt_valid;
	reg soft_reset_0, soft_reset_1, soft_reset_2;
	reg fifo_full;
	reg low_pkt_valid;
	reg fifo_empty_0, fifo_empty_1, fifo_empty_2;
	reg [1:0]data_in;

	wire detect_add, busy;
	wire ld_state, laf_state, full_state, lfd_state;
	wire write_enb_reg, rst_int_reg;
	
	router_fsm DUT(
		.clock(clock),
		.resetn(resetn),
		.parity_done(parity_done),
		.pkt_valid(pkt_valid),
		.soft_reset_0(soft_reset_0),
		.soft_reset_1(soft_reset_1),
		.soft_reset_2(soft_reset_2),
		.fifo_full(fifo_full),
		.low_pkt_valid(low_pkt_valid),
		.fifo_empty_0(fifo_empty_0),
		.fifo_empty_1(fifo_empty_1),
		.fifo_empty_2(fifo_empty_2),
		.data_in(data_in),
		.detect_add(detect_add),
		.busy(busy),
		.ld_state(ld_state),
		.laf_state(laf_state),
		.full_state(full_state),
		.lfd_state(lfd_state),
		.write_enb_reg(write_enb_reg),
		.rst_int_reg(rst_int_reg)
	
	);
	
	
	always #5 clock = ~clock;
	
	task reset_all; begin
		@(negedge clock)
		resetn = 0;
		#20;
		@(negedge clock)
		resetn = 1;
	end
	endtask
	
	task t1; begin
		@(negedge clock)
		pkt_valid = 1;
		data_in = 2'b00;
		fifo_empty_0 = 1;
		
		@(negedge clock);	// load first data
		@(negedge clock);	// load data 
		pkt_valid = 0;
		fifo_full = 0;
		
		@(negedge clock);	//load parity
		@(negedge clock);	//check parity
		fifo_full = 0;
		@(negedge clock);	// decode add
			
	end
	endtask
	
	task t2; begin
		@(negedge clock)
		pkt_valid = 1;
		data_in = 2'b01;
		fifo_empty_1 = 1;
		
		@(negedge clock);	// load first data
		@(negedge clock);	// load data 
		fifo_full = 1;
		
		@(negedge clock);	// fifo full state
		fifo_full = 0;
		
		@(negedge clock);	// load after full
		low_pkt_valid = 1;
		parity_done = 0;
		
		@(negedge clock);	//load parity
		@(negedge clock);	//check parity
		fifo_full = 0;
		@(negedge clock);	// decode add
			
	end
	endtask
	
	task t3; begin
		pkt_valid = 1;
		data_in = 2'b10;
		fifo_empty_2 = 1;
		
		@(negedge clock);	// load first data
		@(negedge clock);	// load data
		fifo_full = 1;
		
		@(negedge clock)	// fifo_full_state
		fifo_full = 0;		
		
		@(negedge clock)	// load after full
		parity_done = 0;
		low_pkt_valid = 0;
		
		@(negedge clock)	// load data
		pkt_valid = 0;
		fifo_full = 0;
		
		@(negedge clock)	// load parity
		@(negedge clock)	// check parity
		fifo_full = 0;
	end
	endtask
	
	
	task t4; begin
		pkt_valid = 1;
		data_in = 2'b00;
		fifo_empty_0 = 1;
		
		@(negedge clock);	// load first data
		@(negedge clock);	// load data
		pkt_valid = 0;
		fifo_full = 0;
		
		@(negedge clock);	//load parity
		@(negedge clock);	//check parity
		fifo_full = 1;
		
		@(negedge clock);	// fifo_full state
		fifo_full = 0;
		
		@(negedge clock)	//load after full
		parity_done = 1;
		
		@(negedge clock);	// decode_address
		
	
	end
	endtask
	
	task t5; begin
		pkt_valid = 1;
		data_in = 2'b01;
		fifo_empty_1 = 0;
		
		@(negedge clock);
		@(negedge clock);
		
		fifo_empty_1 = 1;
		data_in = 2'b01;
		@(negedge clock);
		
		end
	endtask
	
	task initialize;
		begin
			{clock,pkt_valid,data_in,soft_reset_0,soft_reset_1,soft_reset_2,
			fifo_empty_0,fifo_empty_1,fifo_empty_2,parity_done,low_pkt_valid,fifo_full} = 0;
		end
		
	endtask
	
	initial
		begin
			initialize;
			reset_all;
			
			t1;
			reset_all;
			#100;
			t4;
			reset_all;
			#100;
			reset_all;
			t3;
			#100;
			reset_all;
			t4;
			
			#1000 $finish;
			
		end
		
endmodule

