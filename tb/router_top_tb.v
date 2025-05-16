
module router_top_tb();

	reg clock,resetn,read_enb_0,read_enb_1,read_enb_2, pkt_valid;
	reg [7:0]data_in;
	
	wire [7:0]data_out_0,data_out_1,data_out_2;
	wire valid_out_0,valid_out_1,valid_out_2,error,busy;

	router_top dut(.clock(clock),
				   .resetn(resetn),
				   .read_enb_0(read_enb_0),
				   .read_enb_1(read_enb_1),
				   .read_enb_2(read_enb_2),
				   .data_in(data_in),
				   .pkt_valid(pkt_valid),
				   .data_out_0(data_out_0),
				   .data_out_1(data_out_1),
				   .data_out_2(data_out_2),
				   .valid_out_0(valid_out_0),
				   .valid_out_1(valid_out_1),
				   .valid_out_2(valid_out_2),
				   .err(error),
				   .busy(busy)
				   );
				   

	always #5 clock = ~clock;
	

	task rst;
		begin
			@(negedge clock)
			resetn =  1'b0;
			@(negedge clock)
			resetn = 1'b1;
		end
	endtask

	task initialize;
	  begin
	   clock 		= 0;
	   resetn 		= 1;
	   read_enb_0	= 0;
	   read_enb_1	= 0;
	   read_enb_2	= 0;
	   data_in		= 0;
	   pkt_valid	= 0;
	  end
	endtask

	task pkt_gen(input [5:0]len, input [1:0]address);
			reg [7:0] payload_data,parity,header;
			reg [5:0] payload_len;
			reg [1:0] addr;
			
			begin
				@(negedge clock)
				wait(~busy)
				@(negedge clock)
				payload_len = len;
				addr = address;
				header = {payload_len,addr};
				parity = 0;
				data_in = header;
				pkt_valid = 1;
				parity = parity ^ header;
				
				@(negedge clock)
				wait(~busy)
				for(i=0;i<payload_len;i=i+1) begin
					@(negedge clock)
					wait(~busy)
					payload_data = {$random}%256;
					data_in = payload_data;
					parity = parity^payload_data;
					
				if (i == 15 && payload_len > 16) begin
				case(addr)
					2'b00: read_enb_0 = 1;
					2'b01: read_enb_1 = 1;
					2'b10: read_enb_2 = 1;
				endcase
			end
					
				end
					@(negedge clock)
					wait(~busy)
					pkt_valid = 0;
					data_in = parity;
					
					@(negedge clock);
		  end	
	endtask

	integer i;

	initial begin
		initialize;
		rst;
		repeat(3) @(negedge clock);

		// FIFO 0
		pkt_gen(6'd10, 2'b00);
		@(negedge clock) read_enb_0 = 1;
		wait(~valid_out_0)
		@(negedge clock) read_enb_0 = 0;
		
		rst;

		// FIFO 1
		pkt_gen(6'd14, 2'b01);
		@(negedge clock) read_enb_1 = 1;
		wait(~valid_out_1)
		@(negedge clock) read_enb_1 = 0;

		// FIFO 2
		pkt_gen(6'd16, 2'b10);
		@(negedge clock) read_enb_2 = 1;
		wait(~valid_out_2)
		@(negedge clock) read_enb_2 = 0;
		
		pkt_gen(6'd20, 2'b10);
		@(negedge clock) read_enb_2 = 1;
		wait(~valid_out_2)
		@(negedge clock) read_enb_2 = 0;
		
		data_in = 0;

		#500;

		$finish;
	end

		

endmodule

