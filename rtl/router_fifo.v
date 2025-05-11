module router_fifo(clock, resetn, write_enb, soft_reset, read_enb, data_in, lfd_state, empty, data_out , full);

	input clock, resetn, write_enb, soft_reset, read_enb,lfd_state;
	input [7:0] data_in;
	output full, empty;
	output reg [7:0] data_out;
	
	reg [4:0] write_ptr, read_ptr;
	reg [6:0] counter;
	reg [8:0] fifo [15:0];
	reg lfd_state_temp;
	
	integer i;
	
	//----------------------------------delay lfd_state by 1 clock cycle----------------------------------
	always@(posedge clock)
		begin
			if(!resetn || soft_reset)
				lfd_state_temp <= 0;
			else
				lfd_state_temp <= lfd_state;
		end
	
	//-----------------------------------------pointer logic----------------------------------
	always@(posedge clock)
		begin
			if(!resetn || soft_reset)
				{read_ptr, write_ptr} <= 6'b0;
			else 
				begin
					if(write_enb && !full)
						write_ptr <= write_ptr + 1;
					else
						write_ptr <= write_ptr;
						
					if (read_enb && !empty)
						read_ptr <= read_ptr + 1;
					else
						read_ptr <= read_ptr;
				end
		end
	
	//---------------------------------------fifo counter to keep track of playload--------------------------------------------
	always@(posedge clock)
		
		begin
			if(!resetn || soft_reset)
				counter <= 0;
			else if(read_enb && !empty )
				begin
					if(fifo[read_ptr][8] == 1)
						counter <= fifo[read_ptr][7:2] + 1;
					else if(counter != 0)
						counter <= counter - 1'b1;
				end
		end
	
	//----------------------------------------fifo write logic-----------------------------------------
	
	always@(posedge clock)
		begin
			if(!resetn || soft_reset) begin
				for(i=0; i<16; i=i+1)
					fifo[i] <= 0;
			end	
			else if(write_enb && !full)
				fifo[write_ptr[3:0]] <= {lfd_state_temp,data_in};
		end
		
	//----------------------------------------fifo read logic-----------------------------------------
	
	always@(posedge clock)
		begin
			if(!resetn) 
				data_out <= 0;
			else if(soft_reset)
				data_out <= 8'bz;	
			else 
				begin
					if(read_enb && !empty)
						data_out <= fifo[read_ptr[3:0]];
					else if (counter == 0 )		// completely read
						data_out <= 8'bz;
				end
		end
	
	//------------------
	assign empty = (read_ptr == write_ptr);
	assign full = (read_ptr == {~write_ptr[4], write_ptr[3:0]});
	
	endmodule
	
