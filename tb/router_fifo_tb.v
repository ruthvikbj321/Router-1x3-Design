module router_fifo_tb();
	reg clock, resetn, write_enb, soft_reset, read_enb, lfd_state;
	reg [7:0] data_in;
	
	wire full, empty;
	wire [7:0] data_out;
	integer i;
	
	router_fifo DUT(.clock(clock),
					.resetn(resetn),
					.write_enb(write_enb),
					.soft_reset(soft_reset),
					.read_enb(read_enb),
					.data_in(data_in),
					.full(full),
					.empty(empty),
					
					.data_out(data_out),	
					.lfd_state(lfd_state)
					);


	initial clock = 0;
	always #5 clock = ~clock;
	
	//
	task initialize;
		begin
			resetn = 0; 
			soft_reset = 0; 
			write_enb =0; 
			read_enb = 0; 
			data_in = 0; 
			lfd_state = 0;
		end
	endtask
	
	task reset_all; begin
		@(posedge clock)
		resetn = 1'b0;
		@(posedge clock)
		resetn = 1'b1;
	end
	endtask
	
	task write_byte(input [5:0]len, input [1:0]address);
		reg [7:0] payload_data, parity, header;
		reg [5:0] payload_len;
		reg [1:0] addr;
		begin
		@(posedge clock)
			payload_len	= len;
			addr		= address;
			header		= {payload_len,addr};
			data_in		= header;
			parity		= 0^header;
			lfd_state	= 1'b1;
			write_enb	= 1'b1;
			read_enb	= 1'b0;
			for(i=0; i < payload_len; i=i+1)
				begin
					@(posedge clock)
					lfd_state 		= 1'b0;
					payload_data 	= {$random}%256;
					parity			= parity^payload_data;
					data_in			= payload_data;
				end
			@(posedge clock)
				data_in		= parity;
			@(posedge clock)
				write_enb	= 1'b0;
		end		
		
	endtask

		
	task apply_soft_reset;
		begin
		@(posedge clock);
			soft_reset = 1;
		@(posedge clock);
			soft_reset = 0;
		end
	endtask
	
	task read_byte;
		begin
		  @(posedge clock)
			read_enb = 1'b1;
		  while (!empty) begin
			@(posedge clock);
		  end
		  read_enb = 1'b0;
		end
	endtask
  
    initial begin
    $display("Starting testbench");
	$monitor("Time=%0t, Data Out: %h", $time, data_out);
	
	initialize;
    reset_all;

    write_byte(6'd12, 2'b01); 
	read_byte;
	
	reset_all;
	
	

    write_byte(6'd5, 2'b01);
	apply_soft_reset;
	
    write_byte(6'd7, 2'b00);
	read_byte;
    
 
	#100
    $finish;
  end

endmodule