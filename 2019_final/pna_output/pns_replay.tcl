# reset
set_fp_rail_constraints -remove_all_layers
remove_fp_virtual_pad -all              
set_fp_rail_strategy -reset             
set_fp_block_ring_constraints -remove_all
set_fp_rail_region_constraints  -remove 
# global constraints
set_fp_rail_constraints -set_global 

# layer constraints
set_fp_rail_constraints -add_layer  -layer METAL5 -direction horizontal -max_strap 10 -min_strap 8 -max_width 2.000000 -min_width 2.000000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer METAL4 -direction vertical -max_strap 10 -min_strap 8 -max_width 2.000000 -min_width 2.000000 -spacing minimum 

# ring and strap constraints
set_fp_rail_constraints  -set_ring -nets { VDD VSS } -horizontal_ring_layer { METAL5 } -vertical_ring_layer { METAL4 } -ring_width 2.000000 -extend_strap core_ring 

# strategies
set_fp_rail_strategy  -use_tluplus true 

# block ring constraints

# regions

# virtual pads
create_fp_virtual_pad -net VDD -point { 200.000000 5.000000 }
create_fp_virtual_pad -net VSS -point { 300.000000 5.000000 }

# synthesize_fp_rail 
synthesize_fp_rail -nets { VDD VSS } -voltage_supply 2.000000 -power_budget 80.000000   
