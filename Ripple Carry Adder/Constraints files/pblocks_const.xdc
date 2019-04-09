startgroup
create_pblock pblock_reg_x
resize_pblock pblock_reg_x -add SLICE_X76Y151:SLICE_X77Y183
add_cells_to_pblock pblock_reg_x [get_cells [list reg_x]] -clear_locs
endgroup
startgroup
create_pblock pblock_reg_y
resize_pblock pblock_reg_y -add SLICE_X78Y151:SLICE_X79Y183
add_cells_to_pblock pblock_reg_y [get_cells [list reg_y]] -clear_locs
endgroup
startgroup
create_pblock pblock_rca
resize_pblock pblock_rca -add SLICE_X80Y151:SLICE_X81Y183
add_cells_to_pblock pblock_rca [get_cells [list rca]] -clear_locs
endgroup
startgroup
create_pblock pblock_reg_s
resize_pblock pblock_reg_s -add SLICE_X82Y151:SLICE_X83Y183
add_cells_to_pblock pblock_reg_s [get_cells [list reg_s]] -clear_locs
endgroup
startgroup
create_pblock pblock_reg_c
resize_pblock pblock_reg_c -add SLICE_X82Y184:SLICE_X83Y185
add_cells_to_pblock pblock_reg_c [get_cells [list reg_c]] -clear_locs
endgroup
