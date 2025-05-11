module router_fsm(input clock, resetn, 
				  input parity_done,
				  input pkt_valid,
				  input soft_reset_0, soft_reset_1, soft_reset_2, 
				  input fifo_full,
				  input low_pkt_valid, 
				  input fifo_empty_0, fifo_empty_1, fifo_empty_2,
				  input [1:0]data_in,
				  
				  output detect_add, busy,
				  output ld_state, laf_state, full_state, lfd_state,
				  output write_enb_reg, rst_int_reg
				  );
				  
	reg [2:0] present_state, next_state;
	
	parameter DECODE_ADDRESS  = 3'b000,
			  LOAD_FIRST_DATA = 3'b001,
			  LOAD_DATA		  = 3'b010,
			  FIFO_FULL_STATE = 3'b011,
			  LOAD_AFTER_FULL = 3'b100,
			  LOAD_PARITY	  = 3'b101,
			  CHECK_PARITY_ERROR = 3'b110,
			  WAIT_TILL_EMPRY = 3'b111;
	
	// present_state logic	
	always@(posedge clock) begin
		if(!resetn)
			present_state <= DECODE_ADDRESS;
		else if(soft_reset_0 || soft_reset_1 || soft_reset_2)
			present_state <= DECODE_ADDRESS;
		else
			present_state <= next_state;
	end
	
	// next state logic
	
	always@(*) begin
		case(present_state)
		DECODE_ADDRESS: begin
					if((pkt_valid && data_in[1:0] == 2'b00  && fifo_empty_0) ||
						(pkt_valid && data_in[1:0] == 2'b01  && fifo_empty_1)||
						(pkt_valid && data_in[1:0] == 2'b10  && fifo_empty_2))
						
						next_state = LOAD_FIRST_DATA;
						
					else if((pkt_valid && data_in[1:0] == 2'b00  && !fifo_empty_0)||
							(pkt_valid && data_in[1:0] == 2'b01  && !fifo_empty_1)||
							(pkt_valid && data_in[1:0] == 2'b10  && !fifo_empty_2))
						
						next_state = WAIT_TILL_EMPRY;
					else
						next_state = present_state;
		end
		
		LOAD_FIRST_DATA: begin
					next_state = LOAD_DATA;
		end
		
		LOAD_DATA: begin
				if(!fifo_full && !pkt_valid)
					next_state = LOAD_PARITY;
				else if(fifo_full)
					next_state = FIFO_FULL_STATE;
				else
					next_state = present_state;
		end
		
		FIFO_FULL_STATE:begin
					if(!fifo_full)
						next_state = LOAD_AFTER_FULL;
					else
						next_state = present_state; //FIFO_FULL_STATE
		end
		
		LOAD_AFTER_FULL: begin
					if(!low_pkt_valid && !parity_done)
						next_state = LOAD_DATA;
					else if(low_pkt_valid && !parity_done)
						next_state = LOAD_PARITY;
					else if(parity_done)
						next_state = DECODE_ADDRESS;
					else
						next_state = present_state;
		end
		
		LOAD_PARITY: begin
				next_state = CHECK_PARITY_ERROR;
		end
		
		CHECK_PARITY_ERROR: begin
				if(!fifo_full)
					next_state = DECODE_ADDRESS;
				else
					next_state = FIFO_FULL_STATE;
		end
		
		WAIT_TILL_EMPRY: begin
					if((fifo_empty_0 && data_in[1:0] == 2'b00)||(fifo_empty_1 && data_in[1:0] == 2'b01)||(fifo_empty_2 && data_in[1:0] == 2'b10))
						next_state = LOAD_DATA;
					else
						next_state = present_state;
		end
		
		default: next_state = DECODE_ADDRESS;
		endcase
	end
	
	assign detect_add	= (present_state == DECODE_ADDRESS) ? 1'b1: 1'b0;
	assign busy			= (present_state == DECODE_ADDRESS || present_state == LOAD_DATA) ? 1'b1: 1'b0;
	assign ld_state		= (present_state == LOAD_DATA) ? 1'b1: 1'b0;
	assign laf_state	= (present_state == LOAD_AFTER_FULL) ? 1'b1: 1'b0;
	assign lfd_state	= (present_state == LOAD_FIRST_DATA) ? 1'b1: 1'b0;
	assign full_state	= (present_state == FIFO_FULL_STATE) ? 1'b1: 1'b0;
	assign write_enb_reg = ((present_state == LOAD_DATA) || (present_state == LOAD_AFTER_FULL)||(present_state == LOAD_PARITY)) ? 1'b1: 1'b0;
	assign rst_int_reg	= (present_state == CHECK_PARITY_ERROR) ? 1'b1: 1'b0;
	
endmodule