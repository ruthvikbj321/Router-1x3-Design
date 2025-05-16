module synchronizer(input detect_add, write_enb_reg, clock, resetn, read_enb_0, read_enb_1, read_enb_2, 
					empty_0, empty_1, empty_2, full_0, full_1, full_2,
					input [1:0] data_in,
					output wire vld_out_0, vld_out_1, vld_out_2,
					output reg [2:0]write_enb,
					output reg fifo_full, soft_reset_0, soft_reset_1, soft_reset_2);
					
	reg [1:0] temp_add;
	reg [4:0] count0, count1, count2;
	
	//--------------------------------------------capture address-------------------
	always@(posedge clock) begin
	
		if(!resetn)
			temp_add <= 2'b11;
		else if(detect_add)
			temp_add <= data_in;
	end
	
	//------------------------------------------fifo_full logic-----------------------------------
	
	always@(*) begin
		
		case(temp_add)
			2'b00: fifo_full = full_0;
			2'b01: fifo_full = full_1;
			2'b10: fifo_full = full_2;
			default: fifo_full = 1'b0;
		endcase
	end
	
	//-------------------------------------------write_enb logic-----------------------------------
	
	always@(*) begin
	
		if(write_enb_reg) begin
			case(temp_add)
				2'b00: write_enb = 3'b001;
				2'b01: write_enb = 3'b010;
				2'b10: write_enb = 3'b100;
				default: write_enb = 3'b000;
			endcase
		end
		else 
			write_enb = 3'b0;
	end
	
	//-------------------------------------------soft_reset logic-----------------------------------
	
	always@(posedge clock) begin
	
		if(!resetn)
			count0 <= 5'd0;
			
			
		else if(vld_out_0) begin
				if(!read_enb_0) begin
					if(count0 == 5'b11101) begin
						soft_reset_0 <= 1;
						count0 <= 5'b0;
					end
					else begin
						soft_reset_0 <= 0;
						count0 <= count0 + 1;
					end
				end
				else begin
					count0 <= 5'd0;
					soft_reset_0 <= 1'b0;
				end
				end
		else begin
			count0 <= 5'd0;
			soft_reset_0 <= 1'b0;
		end
		
	end
	
	
	always@(posedge clock) begin
	
		if(!resetn)
			count1 <= 5'd0;
			
		else if(vld_out_1) begin
				if(!read_enb_1) begin
					if(count1 == 5'b11101) begin
						soft_reset_1 <= 1;
						count1 <= 5'b0;
					end
					else begin
						soft_reset_1 <= 0;
						count1<= count1 + 1;
					end
				end
				else begin
					count1 <= 5'd0;
					soft_reset_1 <= 1'b0;
				end
				end
		else begin
			count1 <= 5'd0;
			soft_reset_1 <= 1'b0;
		end
	end
	
	always@(posedge clock) begin
	
		if(!resetn)
			count2 <= 5'd0;
			
		else if(vld_out_2) begin
				if(!read_enb_2) begin
					if(count2 == 5'b11101) begin
						soft_reset_2 <= 1;
						count2 <= 5'b0;
					end
					else begin
						soft_reset_2 <= 0;
						count2 <= count2 + 1;
					end
				end
				else begin
					count2 <= 5'd0;
					soft_reset_2 <= 1'b0;
				end
				end
			else begin
				count2 <= 5'd0;
				soft_reset_2 <= 1'b0;
			end
	end
	
	//-----------------------------------valid out---------------------------------
	
	assign vld_out_0 = !empty_0;
	assign vld_out_1 = !empty_1;
	assign vld_out_2 = !empty_2;
	
	endmodule
	
