module router_top(input clock, resetn, pkt_valid, read_enb_0, read_enb_1, read_enb_2,
				  input [7:0]data_in, 
				  output valid_out_0, valid_out_1, valid_out_2, err, busy,
				  output [7:0]data_out_0, data_out_1, data_out_2);
	
	wire [2:0]w_enb;
	wire [2:0]soft_reset;
	wire [2:0]read_enb;
	wire [2:0]empty;
	wire [2:0]full;
	
	wire lfd_state_w;
	wire [7:0]dout;
	wire [7:0]data_out_temp[2:0];
	
	genvar a;
	
	//------------------------------ fifo instantiation
	
	generate 
		for(a=0; a<3; a=a+1) begin: fifo
			router_fifo f1(.clock(clock),
						   .resetn(resetn),
						   .write_enb(w_enb[a]),
						   .soft_reset(soft_reset[a]),
						   .read_enb(read_enb[a]),
						   .data_in(dout),
						   .lfd_state(lfd_state_w),
						   .empty(empty[a]),
						   .full(full[a]),
						   .data_out(data_out_temp[a])
						   );
		end
	endgenerate
	
	//------------------------- register instantiation
	
	router_register r1(.clock(clock),
				  .resetn(resetn),
				  .pkt_valid(pkt_valid),
				  .data_in(data_in),
				  .fifo_full(fifo_full),
				  .rst_int_reg(rst_int_reg),
				  .detect_add(detect_add),
				  .ld_state(ld_state),
				  .laf_state(laf_state),
				  .full_state(full_state),
				  .lfd_state(lfd_state_w),
				  .parity_done(parity_done),
				  .low_pkt_valid(low_pkt_valid),
				  .err(err),
				  .dout(dout)
				  );
	
	//------------------------ synchronizer instantiation
	
	synchronizer sy(.clock(clock),
				   .resetn(resetn),
				   .data_in(data_in[1:0]),
				   .detect_add(detect_add),
				   .write_enb_reg(write_enb_reg),
				   .vld_out_0(valid_out_0),
				   .vld_out_1(valid_out_1),
				   .vld_out_2(valid_out_2),
				   .read_enb_0(read_enb_0),
				   .read_enb_1(read_enb_1),
				   .read_enb_2(read_enb_2),
				   .write_enb(w_enb),
				   .fifo_full(fifo_full),
				   .empty_0(empty[0]),
				   .empty_1(empty[1]),
				   .empty_2(empty[2]),
				   .soft_reset_0(soft_reset[0]),
				   .soft_reset_1(soft_reset[1]),
				   .soft_reset_2(soft_reset[2]),
				   .full_0(full[0]),
				   .full_1(full[1]),
				   .full_2(full[2])
				   
				   );
				   
	// ------------------------ fsm instantiation
	
	router_fsm fsm(.clock(clock),
				   .resetn(resetn),
				   .pkt_valid(pkt_valid),
				   .busy(busy),
				   .parity_done(parity_done),
				   .data_in(data_in[1:0]),
				   .soft_reset_0(soft_reset[0]),
				   .soft_reset_1(soft_reset[1]),
				   .soft_reset_2(soft_reset[2]),
				   .fifo_full(fifo_full),
				   .low_pkt_valid(low_pkt_valid),
				   .fifo_empty_0(empty[0]),
				   .fifo_empty_1(empty[1]),
				   .fifo_empty_2(empty[2]),
				   .detect_add(detect_add),
				   .ld_state(ld_state),
				   .laf_state(laf_state),
				   .lfd_state(lfd_state_w),
				   .full_state(full_state),
				   .write_enb_reg(write_enb_reg),
				   .rst_int_reg(rst_int_reg)
				   
				   );
				   
	assign read_enb[0]= read_enb_0;
	assign read_enb[1]= read_enb_1;
	assign read_enb[2]= read_enb_2;
	assign data_out_0 = data_out_temp[0];
	assign data_out_1 = data_out_temp[1];
	assign data_out_2 = data_out_temp[2];
	
endmodule
