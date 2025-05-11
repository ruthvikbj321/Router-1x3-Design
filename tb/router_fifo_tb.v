
`timescale 1ns/1ps

module router_fifo_tb();
	reg clock, resetn, write_enb, soft_reset, read_enb, lfd_state;
	reg [7:0] data_in;
	wire full, empty;
	wire [7:0] data_out;
	
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
	task reset_all;
		begin
			resetn = 0; soft_reset = 0; write_enb =0; 
			read_enb = 0; data_in = 0; lfd_state = 0;
			#20 resetn = 1;
		end
	endtask
	
	task write_byte(input [7:0]data, input is_header);
		begin
		@(posedge clock)
			write_enb = 1; lfd_state = is_header; data_in = data;
		@(posedge clock)
			write_enb = 0; data_in = 0;
		end
	endtask
	
	task read_byte;
		begin
		@(posedge clock)
			read_enb = 1;
		@(posedge clock)
			read_enb = 0;
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
  
    initial begin
    $display("Starting testbench");
	 $monitor("Time: %0t | lfd_state=%b | data_in=%h | data_out=%h | full=%b | empty=%b | counter=%d", 
         $time, lfd_state, data_in, data_out, full, empty, DUT.counter);

    reset_all;

    write_byte(8'b00001100, 1);  

    write_byte(8'hA1, 0);
    write_byte(8'hB2, 0);
    write_byte(8'hC3, 0);
    
    repeat (4) read_byte;
 
    write_byte(8'b00000100, 1);  //header with small payload
    apply_soft_reset;
	 
	 
	 #100;

    $finish;
  end

endmodule
