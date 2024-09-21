source ./build/.synopsys_dc.setup
create_mw_lib  -technology /home/nfs_cad/lib/CBDK_IC_Contest_v2.1/Astro/tsmc13_CIC.tf  -mw_reference_library {/home/nfs_cad/lib/CBDK_IC_Contest_v2.1/Astro/tsmc13gfsg_fram} -bus_naming_style {[%d]}  -open  IOTDF
import_designs -format verilog -top IOTDF -cell IOTDF ./syn/IOTDF_syn.v
set_tlu_plus_files -max_tluplus /home/nfs_cad/lib/CBDK_IC_Contest_v2.1/Astro/tluplus/t013s8mg_fsg_typical.tluplus -tech2itf_map /home/nfs_cad/lib/CBDK_IC_Contest_v2.1/Astro/tluplus/t013s8mg_fsg.map
read_sdc IOTDF_APR.sdc

# 2. Design Planning
create_floorplan -flip_first_row -left_io2core 5 -bottom_io2core 5 -right_io2core 5 -top_io2core 5
	#estimate_fp_area -estimate_optimization 
create_fp_placement #(把東西塞進去)
derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}
create_fp_virtual_pad -nets VDD -point {200.0 5.0}
create_fp_virtual_pad -nets VSS -point {300.0 5.0}
set_fp_rail_constraints -add_layer -layer METAL5 -direction horizontal -max_strap 10 -min_strap 8 -max_width 2 -min_width 2 -spacing minimum
set_fp_rail_constraints -add_layer -layer METAL4 -direction vertical -max_strap 10 -min_strap 8 -max_width 2 -min_width 2 -spacing minimum
set_fp_rail_constraints -set_ring -nets {VDD VSS} -horizontal_ring_layer {METAL5} -vertical_ring_layer {METAL4} -ring_width 2 -extend_strap core_ring
synthesize_fp_rail -nets {VDD VSS} -voltage_supply 2 -synthesize_power_plan -power_budget 80
commit_fp_rail
remove_fp_virtual_pad -all
preroute_standard_cells -extend_for_multiple_connections -extension_gap 16 -connect horizontal -remove_floating_pieces -do_not_route_over_macros -fill_empty_rows -port_filter_mode off -cell_master_filter_mode off -cell_instance_filter_mode off -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}

# 3. Placement
place_opt
derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}
set_max_area 0
set physopt_area_critical_range 0.1

# 4. CTS
set_fix_hold [all_clocks ]
clock_opt -fix_hold_all_clocks -no_clock_route
derive_pg_connection -power_pin {VDD} -ground_pin {VSS} -power_net {VDD} -ground_net {VSS}

# 5. Routing
route_zrt_group -all_clock_nets
route_zrt_auto
derive_pg_connection -power_pin {VDD} -ground_pin {VSS} -power_net {VDD} -ground_net {VSS}
insert_stdcell_filler -cell_without_metal "FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1" -connect_to_power {VDD} -connect_to_ground {VSS}
route_zrt_detail -incremental true -initial_drc_from_input true
save_mw_cel