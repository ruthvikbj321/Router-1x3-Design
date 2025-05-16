

`timescale 1ns/1ps
module router_sync_tb();
	
	// inputs
	reg detect_add, write_enb_reg, clock, resetn, read_enb_0, read_enb_1, read_enb_2, 
		empty_0, empty_1, empty_2, full_0, full_1, full_2;
	reg [1:0] data_in;
	
	// outputs
	wire vld_out_0, vld_out_1, vld_out_2;
	wire [2:0]write_enb;
	wire fifo_full, soft_reset_0,soft_reset_1, soft_reset_2;
	
	synchronizer DUT(.detect_add(detect_add),
					.write_enb_reg(write_enb_reg),
					.clock(clock),
					.resetn(resetn),
					.read_enb_0(read_enb_0),
					.read_enb_1(read_enb_1),
					.read_enb_2(read_enb_2),
					.empty_0(empty_0),
					.empty_1(empty_1),
					.empty_2(empty_2),
					.full_0(full_0),
					.full_1(full_1),
					.full_2(full_2),
					.data_in(data_in),
					.vld_out_0(vld_out_0),
					.vld_out_1(vld_out_1),
					.vld_out_2(vld_out_2),
					.write_enb(write_enb),
					.fifo_full(fifo_full),
					.soft_reset_0(soft_reset_0),
					.soft_reset_1(soft_reset_1),
					.soft_reset_2(soft_reset_2)					
					);
	
	always #5 clock = ~clock;
	
	task reset;
		begin
			resetn = 0;
			#20
			resetn = 1;
		end
	endtask
	
	task send_address(input [1:0]addr);
		begin
			@(posedge clock)
			detect_add = 1;
			data_in = addr;
			@(posedge clock)
			detect_add = 0;
		end
	endtask
	
	task initialize;
		begin
			clock = 0;
			resetn = 1;
			detect_add = 0;
			data_in = 2'b00;
			full_0 = 0;
			full_1 = 0;
			full_2 = 0;
			empty_0 = 1;
			empty_1 = 1;
			empty_2 = 1;
			write_enb_reg = 0;
			read_enb_0 = 1;
			read_enb_1 = 1;
			read_enb_2 = 1;
		end
	endtask
	
	task write_enable;
		begin
			@(posedge clock)
			write_enb_reg = 1;
		end
	endtask
	
	/*task t1;
		begin
			reset;
			#5;
			send_address(2'b00);
			wrt_en;
			
			@(posedge clock);
				read_enb_0 = 1;
				read_enb_1 = 0;
				read_enb_2 = 0;
				empty_0 = 1;
				empty_1 = 0;
				empty_2 = 0;
				repeat (30) @(posedge clock);
				full_0 = 1;
				full_1 = 0;
				full_2 = 0;
		end
	endtask */
	
	
	initial begin
		$display("Starting testbench");
		$monitor(" Time = %0t | soft_reset_0 = %b | soft_reset_1 = %b | soft_reset_2 = %b",
					$time, soft_reset_0, soft_reset_1, soft_reset_2);
					
		initialize();
		reset;

		send_address(2'b00); write_enable;
		send_address(2'b01); write_enable;
		send_address(2'b10); write_enable;
		
		@(posedge clock)
		    empty_0 	= 0;   // vld_out_0 = 1
			read_enb_0 	= 0;
		
		 repeat(29) @(posedge clock);
		
		@(posedge clock)
			read_enb_0 = 1; // stop soft reset
		@(posedge clock)
			empty_0 = 1;
		
		//fifo 1
		
		@(posedge clock);
			empty_1 = 0;
			read_enb_1 = 0;
		
		repeat(30) @(posedge clock);
		
		@(posedge clock);
			read_enb_1 = 1;  // Stop soft reset trigger
		@(posedge clock);
			empty_1 = 1;
				
		
		// fifo 2
		
		@(posedge clock);
			empty_2 = 0;
			read_enb_2 = 0;
		
		repeat(30) @(posedge clock);
		
		@(posedge clock);
			read_enb_2 = 1;  // Stop soft reset trigger
		@(posedge clock);
			empty_2 = 1;
		
	
		#200;
		$finish;
	end
endmodule
