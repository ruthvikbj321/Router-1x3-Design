remove_design -all
set search_path {../lib}
set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

analyze -format verilog { ../rtl/router_top.v ../rtl/router_fifo.v ../rtl/router_fsm.v ../rtl/router_sync.v ../rtl/router_register.v } 

elaborate router_top

link 

#create_clock -period 10 -name clock [get_ports clock]
set_max_fanout 1[get_ports dout]
set_max_transaction 1.5[get_ports clock]
set_max_area 8050

check_design
current_design  router_top
#compile_ultra

compile_ultra -no_autoungroup

write_file -f verilog -hier -output ../report/router_top_netlist.v


	report_timing -path full > ../report/timing_report_top.txt

	report_area > ../report/area_report.txt

	# Save all constraints (including max_fanout, max_transaction, max_area)
	report_constraint -all > ../report/constraints_report.txt

