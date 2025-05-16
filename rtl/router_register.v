module router_register(input clock, resetn, pkt_valid, 
						input [7:0] data_in,
						input fifo_full, rst_int_reg,
						input detect_add, ld_state, laf_state, lfd_state, full_state,
						
						output reg parity_done, low_pkt_valid, err,
						output reg [7:0] dout);
						
	reg [7:0] header_byte, fifo_full_byte, internal_parity, packet_parity;

	// logic for dout
	
	always@(posedge clock) begin
		if(!resetn) begin
			dout <= 0;
			header_byte <= 0;
			fifo_full_byte <= 0;
			 
		end
		else if((detect_add) && (pkt_valid) && (data_in[1:0] != 2'b11))
			header_byte <= data_in;
		else if(lfd_state)
			dout <= header_byte;
		else if(ld_state && !fifo_full)
			dout <= data_in;
		else if(ld_state && fifo_full)
			fifo_full_byte <= data_in;
		else if(laf_state)
			dout <= fifo_full_byte;
	end
	
	// logic for internal parity
	
	always@(posedge clock) begin
		if(!resetn)
			internal_parity	<= 0;
		else if(detect_add)
			internal_parity <= 0;
		else if(lfd_state && pkt_valid  )
			internal_parity <= internal_parity ^ header_byte;
		else if(ld_state && pkt_valid && !full_state)
			internal_parity <= internal_parity ^ data_in;
		else
			internal_parity <= internal_parity;
		
	end
	
	// logic for packet parity
	
	always@(posedge clock) begin
		if(!resetn)
			packet_parity <= 0;
		else if(detect_add)
			packet_parity <= 0;
		else if(ld_state && !pkt_valid)
			packet_parity <= data_in;
		else
			packet_parity <= packet_parity;
			
	end
	
	// parity done
	
	always@(posedge clock) begin
		if(!resetn)
			parity_done <= 0;
		else if(detect_add)
			parity_done <= 0;
		else if(ld_state && !fifo_full && !pkt_valid )
			parity_done <= 1'b1;
		else if(laf_state && low_pkt_valid && !parity_done)
			parity_done <= 1'b1;
	
	end
	
	// err
	
	always@(posedge clock) begin
		if(!resetn)
			err <= 0;
		else if(parity_done) begin
			if(internal_parity == packet_parity)
				err <= 0;
			else
				err <= 1;
		end
		else
			err <= 0;
	end
	
	// low_pkt_valid
	
	always@(posedge clock) begin
		if(!resetn)
			low_pkt_valid <= 0;
		else if(rst_int_reg)
			low_pkt_valid <= 0;
		else if(ld_state && !pkt_valid)
			low_pkt_valid <= 1'b1;
		else
			low_pkt_valid <= low_pkt_valid;
	end
	
endmodule

	