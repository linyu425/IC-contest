wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/linjinyu/IC_contest/106_B_ICC2018_priliminary_grad_cell_based/huffman.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 916445810.239143 -snap {("G2" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 115716.386103 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/sym_table\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/sym_table\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 106181.940667 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetCursor -win $_nWave1 113565.024056 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/u_huffman/group_values\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/u_huffman/group_values\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvExpandBus -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 5 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 5 6 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 111364.767417 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 110435.770169 -snap {("G3" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min1_value\[9:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/min2_value\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min1_value\[9:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/min2_value\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 145510.305724 -snap {("G3" 8)}
wvZoom -win $_nWave1 0.000000 154898.067383
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 116592.060891 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSetPosition -win $_nWave1 {("G3" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/group1\[5:0\]} \
{/tb/u_huffman/group2\[5:0\]} \
{/tb/u_huffman/group3\[5:0\]} \
{/tb/u_huffman/group4\[5:0\]} \
{/tb/u_huffman/group5\[5:0\]} \
{/tb/u_huffman/group6\[5:0\]} \
{/tb/u_huffman/min1_value\[9:0\]} \
{/tb/u_huffman/min2_value\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 10 11 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSetPosition -win $_nWave1 {("G3" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/group1\[5:0\]} \
{/tb/u_huffman/group2\[5:0\]} \
{/tb/u_huffman/group3\[5:0\]} \
{/tb/u_huffman/group4\[5:0\]} \
{/tb/u_huffman/group5\[5:0\]} \
{/tb/u_huffman/group6\[5:0\]} \
{/tb/u_huffman/min1_value\[9:0\]} \
{/tb/u_huffman/min2_value\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 10 11 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G3" 15)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetCursor -win $_nWave1 53692.590273 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvZoom -win $_nWave1 87484.440665 119798.513343
wvZoom -win $_nWave1 102674.633074 105252.883554
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 102691.168040 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} {( "G2" 1 2 3 4 5 6 7 )} {( "G3" 1 \
           2 3 4 5 6 7 8 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 84259.419930 114101.297822
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 98732.170472 193654.739512
wvZoom -win $_nWave1 113248.254834 124987.349143
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 145156.112238 161391.029900
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 118516.668866 -snap {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 113432.316573 -snap {("G4" 7)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 13)}
wvSelectSignal -win $_nWave1 {( "G4" 6 7 8 9 10 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 116328.466613 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 12 )} 
wvSelectSignal -win $_nWave1 {( "G4" 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G4" 14)}
wvSetPosition -win $_nWave1 {("G4" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSetPosition -win $_nWave1 {("G4" 14)}
wvSetPosition -win $_nWave1 {("G4" 15)}
wvSetPosition -win $_nWave1 {("G4" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 15 )} 
wvSetPosition -win $_nWave1 {("G4" 15)}
wvSetPosition -win $_nWave1 {("G4" 15)}
wvSetPosition -win $_nWave1 {("G4" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 15 )} 
wvSetPosition -win $_nWave1 {("G4" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSetPosition -win $_nWave1 {("G4" 14)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 21)}
wvSelectSignal -win $_nWave1 {( "G4" 21 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 117615.644409 -snap {("G4" 25)}
wvSelectSignal -win $_nWave1 {( "G4" 18 )} 
wvZoom -win $_nWave1 117680.003299 119160.257764
wvSetCursor -win $_nWave1 118500.835894 -snap {("G4" 2)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G4" 29)}
wvSetPosition -win $_nWave1 {("G4" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/group\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 28 29 )} 
wvSetPosition -win $_nWave1 {("G4" 29)}
wvSetPosition -win $_nWave1 {("G4" 29)}
wvSetPosition -win $_nWave1 {("G4" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/group\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 28 29 )} 
wvSetPosition -win $_nWave1 {("G4" 29)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 29 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 28 )} 
wvSetPosition -win $_nWave1 {("G4" 28)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 41)}
wvResizeWindow -win $_nWave1 637 31 960 332
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 346694.492569
wvZoom -win $_nWave1 38726.512468 132315.584265
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvZoom -win $_nWave1 116447.756267 126964.081489
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 102254.481413 130894.686272
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 218361.567230 -snap {("G4" 3)}
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 55452.311536 143201.024297
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 42)}
wvSetPosition -win $_nWave1 {("G4" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/gp_idx\[5\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[4\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[3\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[2\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[1\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[0\]\[2:0\]} \
{/tb/u_huffman/group\[5:0\]} \
{/tb/u_huffman/group\[5\]\[5:0\]} \
{/tb/u_huffman/group\[4\]\[5:0\]} \
{/tb/u_huffman/group\[3\]\[5:0\]} \
{/tb/u_huffman/group\[2\]\[5:0\]} \
{/tb/u_huffman/group\[1\]\[5:0\]} \
{/tb/u_huffman/group\[0\]\[5:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 42 )} 
wvSetPosition -win $_nWave1 {("G4" 42)}
wvSetPosition -win $_nWave1 {("G4" 42)}
wvSetPosition -win $_nWave1 {("G4" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/gp_idx\[5\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[4\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[3\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[2\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[1\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[0\]\[2:0\]} \
{/tb/u_huffman/group\[5:0\]} \
{/tb/u_huffman/group\[5\]\[5:0\]} \
{/tb/u_huffman/group\[4\]\[5:0\]} \
{/tb/u_huffman/group\[3\]\[5:0\]} \
{/tb/u_huffman/group\[2\]\[5:0\]} \
{/tb/u_huffman/group\[1\]\[5:0\]} \
{/tb/u_huffman/group\[0\]\[5:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 42 )} 
wvSetPosition -win $_nWave1 {("G4" 42)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 39)}
wvSetPosition -win $_nWave1 {("G4" 30)}
wvSetPosition -win $_nWave1 {("G4" 28)}
wvSetPosition -win $_nWave1 {("G4" 26)}
wvSetPosition -win $_nWave1 {("G4" 24)}
wvSetPosition -win $_nWave1 {("G4" 22)}
wvSetPosition -win $_nWave1 {("G4" 20)}
wvSetPosition -win $_nWave1 {("G4" 17)}
wvSetPosition -win $_nWave1 {("G4" 15)}
wvSetPosition -win $_nWave1 {("G4" 14)}
wvSetPosition -win $_nWave1 {("G4" 12)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 119020.860394 -snap {("G4" 3)}
wvZoom -win $_nWave1 114353.375673 141658.161292
wvSetCursor -win $_nWave1 131429.759552 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 132519.046212 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 22 )} 
wvSelectSignal -win $_nWave1 {( "G4" 22 )} 
wvSetPosition -win $_nWave1 {("G4" 22)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 22)}
wvSelectSignal -win $_nWave1 {( "G4" 22 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 22 )} 
wvSelectSignal -win $_nWave1 {( "G4" 26 )} 
wvSetPosition -win $_nWave1 {("G4" 26)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 36)}
wvSelectSignal -win $_nWave1 {( "G4" 26 )} 
wvSetPosition -win $_nWave1 {("G4" 26)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 26)}
wvSetPosition -win $_nWave1 {("G4" 28)}
wvSelectSignal -win $_nWave1 {( "G4" 22 )} 
wvSetPosition -win $_nWave1 {("G4" 22)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 22)}
wvSelectSignal -win $_nWave1 {( "G4" 22 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 131426.128596 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 132515.415256 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 27 )} 
wvSetPosition -win $_nWave1 {("G4" 27)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 36)}
wvSelectSignal -win $_nWave1 {( "G4" 27 )} 
wvSetPosition -win $_nWave1 {("G4" 27)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 27)}
wvSetPosition -win $_nWave1 {("G4" 28)}
wvSelectSignal -win $_nWave1 {( "G4" 26 )} 
wvSelectSignal -win $_nWave1 {( "G4" 23 24 25 26 27 28 )} 
wvSelectSignal -win $_nWave1 {( "G4" 23 24 25 26 27 28 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 133931.487915 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 42 )} 
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "G4" 42 )} 
wvSelectSignal -win $_nWave1 {( "G4" 37 38 39 40 41 42 )} 
wvSelectSignal -win $_nWave1 {( "G4" 37 38 39 40 41 42 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 12 )} 
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSelectSignal -win $_nWave1 {( "G4" 10 )} 
wvSelectSignal -win $_nWave1 {( "G4" 9 )} 
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetCursor -win $_nWave1 104233.840527 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 135478.212901 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 128361.540054 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 140434.467206 -snap {("G4" 13)}
wvSetCursor -win $_nWave1 125293.382627 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 136589.285295 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 146447.329571 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 16 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 36 )} 
wvSelectSignal -win $_nWave1 {( "G4" 40 )} 
wvSelectSignal -win $_nWave1 {( "G4" 37 )} 
wvSelectSignal -win $_nWave1 {( "G4" 12 )} 
wvSelectSignal -win $_nWave1 {( "G4" 10 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 29)}
wvSetPosition -win $_nWave1 {("G4" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/gp_idx\[5\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[4\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[3\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[2\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[1\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[0\]\[2:0\]} \
{/tb/u_huffman/group\[5:0\]} \
{/tb/u_huffman/group\[5\]\[5:0\]} \
{/tb/u_huffman/group\[4\]\[5:0\]} \
{/tb/u_huffman/group\[3\]\[5:0\]} \
{/tb/u_huffman/group\[2\]\[5:0\]} \
{/tb/u_huffman/group\[1\]\[5:0\]} \
{/tb/u_huffman/group\[0\]\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 29 )} 
wvSetPosition -win $_nWave1 {("G4" 29)}
wvSetPosition -win $_nWave1 {("G4" 29)}
wvSetPosition -win $_nWave1 {("G4" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/gp_idx\[5\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[4\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[3\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[2\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[1\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[0\]\[2:0\]} \
{/tb/u_huffman/group\[5:0\]} \
{/tb/u_huffman/group\[5\]\[5:0\]} \
{/tb/u_huffman/group\[4\]\[5:0\]} \
{/tb/u_huffman/group\[3\]\[5:0\]} \
{/tb/u_huffman/group\[2\]\[5:0\]} \
{/tb/u_huffman/group\[1\]\[5:0\]} \
{/tb/u_huffman/group\[0\]\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 29 )} 
wvSetPosition -win $_nWave1 {("G4" 29)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 30)}
wvSetPosition -win $_nWave1 {("G4" 31)}
wvSetPosition -win $_nWave1 {("G4" 32)}
wvSetPosition -win $_nWave1 {("G4" 33)}
wvSetPosition -win $_nWave1 {("G4" 34)}
wvSetPosition -win $_nWave1 {("G4" 35)}
wvSetPosition -win $_nWave1 {("G4" 36)}
wvSetPosition -win $_nWave1 {("G4" 37)}
wvSetPosition -win $_nWave1 {("G4" 38)}
wvSetPosition -win $_nWave1 {("G4" 39)}
wvSetPosition -win $_nWave1 {("G4" 40)}
wvSetPosition -win $_nWave1 {("G4" 41)}
wvSetPosition -win $_nWave1 {("G4" 42)}
wvSetPosition -win $_nWave1 {("G4" 43)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 6463.100851 -snap {("G5" 2)}
wvSetCursor -win $_nWave1 104429.912126 -snap {("G4" 2)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 135616.189211 -snap {("G4" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 140445.360072 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 104498.900281 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 140626.907849 -snap {("G4" 2)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 153495.014263 -snap {("G4" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 202505.652067 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 189361.593033 -snap {("G4" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 202541.961623 -snap {("G4" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 295068294.362395
wvZoom -win $_nWave1 0.000000 8043750.045783
wvZoom -win $_nWave1 0.000000 470644.949487
wvSetCursor -win $_nWave1 356113.000343 -snap {("G4" 2)}
wvZoom -win $_nWave1 348602.708596 367691.366787
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G4" 22 )} 
wvSetCursor -win $_nWave1 355481.733024 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 29 )} 
wvSelectSignal -win $_nWave1 {( "G4" 36 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 20)}
wvSetPosition -win $_nWave1 {("G5" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/gp_idx\[5\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[4\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[3\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[2\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[1\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[0\]\[2:0\]} \
{/tb/u_huffman/group\[5:0\]} \
{/tb/u_huffman/group\[5\]\[5:0\]} \
{/tb/u_huffman/group\[4\]\[5:0\]} \
{/tb/u_huffman/group\[3\]\[5:0\]} \
{/tb/u_huffman/group\[2\]\[5:0\]} \
{/tb/u_huffman/group\[1\]\[5:0\]} \
{/tb/u_huffman/group\[0\]\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 8 9 10 11 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G5" 20)}
wvSetPosition -win $_nWave1 {("G5" 20)}
wvSetPosition -win $_nWave1 {("G5" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/group_values\[5:0\]} \
{/tb/u_huffman/group_values\[5\]\[9:0\]} \
{/tb/u_huffman/group_values\[4\]\[9:0\]} \
{/tb/u_huffman/group_values\[3\]\[9:0\]} \
{/tb/u_huffman/group_values\[2\]\[9:0\]} \
{/tb/u_huffman/group_values\[1\]\[9:0\]} \
{/tb/u_huffman/group_values\[0\]\[9:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
{/tb/u_huffman/min2_idx\[2:0\]} \
{/tb/u_huffman/huffman_code\[5:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[0\]\[7:0\]} \
{/tb/u_huffman/mask\[5:0\]} \
{/tb/u_huffman/mask\[5\]\[7:0\]} \
{/tb/u_huffman/mask\[4\]\[7:0\]} \
{/tb/u_huffman/mask\[3\]\[7:0\]} \
{/tb/u_huffman/mask\[2\]\[7:0\]} \
{/tb/u_huffman/mask\[1\]\[7:0\]} \
{/tb/u_huffman/mask\[0\]\[7:0\]} \
{/tb/u_huffman/gp_idx\[5:0\]} \
{/tb/u_huffman/gp_idx\[5\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[4\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[3\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[2\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[1\]\[2:0\]} \
{/tb/u_huffman/gp_idx\[0\]\[2:0\]} \
{/tb/u_huffman/group\[5:0\]} \
{/tb/u_huffman/group\[5\]\[5:0\]} \
{/tb/u_huffman/group\[4\]\[5:0\]} \
{/tb/u_huffman/group\[3\]\[5:0\]} \
{/tb/u_huffman/group\[2\]\[5:0\]} \
{/tb/u_huffman/group\[1\]\[5:0\]} \
{/tb/u_huffman/group\[0\]\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/pr_table\[5:0\]} \
{/tb/u_huffman/pr_table\[5\]\[7:0\]} \
{/tb/u_huffman/pr_table\[4\]\[7:0\]} \
{/tb/u_huffman/pr_table\[3\]\[7:0\]} \
{/tb/u_huffman/pr_table\[2\]\[7:0\]} \
{/tb/u_huffman/pr_table\[1\]\[7:0\]} \
{/tb/u_huffman/pr_table\[0\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 8 9 10 11 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G5" 20)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 197312.632979 -snap {("G4" 15)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvSelectSignal -win $_nWave1 {( "G5" 19 )} 
wvSelectSignal -win $_nWave1 {( "G5" 8 9 10 11 12 13 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G5" 8 9 10 11 12 13 14 15 16 17 18 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G5" 8 9 10 11 12 13 14 15 16 17 18 19 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G5" 14 )} 
wvSelectSignal -win $_nWave1 {( "G5" 13 )} 
wvScrollUp -win $_nWave1 17
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 349040.957447 -snap {("G4" 3)}
wvZoom -win $_nWave1 343064.228723 359081.861702
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetCursor -win $_nWave1 355438.441514 -snap {("G4" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G5" 13 )} 
wvSelectSignal -win $_nWave1 {( "G5" 12 )} 
wvSelectSignal -win $_nWave1 {( "G5" 11 )} 
wvSelectSignal -win $_nWave1 {( "G5" 10 )} 
wvSelectSignal -win $_nWave1 {( "G5" 9 )} 
wvSelectSignal -win $_nWave1 {( "G5" 13 )} 
wvSelectSignal -win $_nWave1 {( "G5" 12 )} 
wvSelectSignal -win $_nWave1 {( "G5" 11 )} 
wvSelectSignal -win $_nWave1 {( "G5" 10 )} 
wvSelectSignal -win $_nWave1 {( "G5" 16 )} 
wvSelectSignal -win $_nWave1 {( "G5" 17 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 140539.120639 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSetCursor -win $_nWave1 146503.132918 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 152594.945461 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSetCursor -win $_nWave1 189341.781119 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 195518.793837 -snap {("G4" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSetCursor -win $_nWave1 200503.004099 -snap {("G4" 17)}
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 18 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 18 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 15 )} 
wvSelectSignal -win $_nWave1 {( "G4" 15 16 17 18 19 20 21 )} 
wvSelectSignal -win $_nWave1 {( "G4" 15 16 17 18 19 20 21 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G4" 16 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 19 )} 
wvSelectSignal -win $_nWave1 {( "G4" 26 )} 
wvSetCursor -win $_nWave1 250566.627176 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 28 )} 
wvSelectSignal -win $_nWave1 {( "G4" 24 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 19 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 18 )} 
wvSelectSignal -win $_nWave1 {( "G4" 21 )} 
wvSelectSignal -win $_nWave1 {( "G4" 28 )} 
wvSelectSignal -win $_nWave1 {( "G4" 26 )} 
wvSelectSignal -win $_nWave1 {( "G4" 24 )} 
wvSetCursor -win $_nWave1 299488.567902 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 21 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 19 )} 
wvSelectSignal -win $_nWave1 {( "G4" 18 )} 
wvSelectSignal -win $_nWave1 {( "G4" 16 )} 
wvSetCursor -win $_nWave1 342519.964916 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 348441.377108 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 20 )} 
wvSelectSignal -win $_nWave1 {( "G4" 21 )} 
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSelectSignal -win $_nWave1 {( "G4" 14 )} 
wvSelectSignal -win $_nWave1 {( "G4" 13 )} 
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSelectSignal -win $_nWave1 {( "G4" 12 )} 
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSelectSignal -win $_nWave1 {( "G4" 12 )} 
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G5" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSelectSignal -win $_nWave1 {( "G4" 12 )} 
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 6)}
wvSetPosition -win $_nWave1 {("G6" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G6" 6)}
wvSetPosition -win $_nWave1 {("G6" 6)}
wvSetPosition -win $_nWave1 {("G6" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G6" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G6" 7)}
wvSetPosition -win $_nWave1 {("G6" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 7 )} 
wvSetPosition -win $_nWave1 {("G6" 7)}
wvSetPosition -win $_nWave1 {("G6" 7)}
wvSetPosition -win $_nWave1 {("G6" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 7 )} 
wvSetPosition -win $_nWave1 {("G6" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1045258.670213 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1044302.393617 -snap {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetSignalFilter -win $_nWave1 "gray*"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G6" 8)}
wvSetPosition -win $_nWave1 {("G6" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 8 )} 
wvSetPosition -win $_nWave1 {("G6" 8)}
wvSetPosition -win $_nWave1 {("G6" 8)}
wvSetPosition -win $_nWave1 {("G6" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 8 )} 
wvSetPosition -win $_nWave1 {("G6" 8)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 8 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 9)}
wvSetPosition -win $_nWave1 {("G6" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 9 )} 
wvSetPosition -win $_nWave1 {("G6" 9)}
wvSetPosition -win $_nWave1 {("G6" 9)}
wvSetPosition -win $_nWave1 {("G6" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 9 )} 
wvSetPosition -win $_nWave1 {("G6" 9)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1040238.218085 -snap {("G6" 9)}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSetCursor -win $_nWave1 1045497.739362 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetCursor -win $_nWave1 896079.521277 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 86064.893617 259150.957447
wvSetCursor -win $_nWave1 88021.318541 -snap {("G5" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 530306.238117
wvZoom -win $_nWave1 0.000000 75455.807817
wvSetCursor -win $_nWave1 45755.117506 -snap {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G6" 9)}
wvSetPosition -win $_nWave1 {("G6" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 9)}
wvGetSignalSetSignalFilter -win $_nWave1 "next*"
wvSetPosition -win $_nWave1 {("G6" 9)}
wvSetPosition -win $_nWave1 {("G6" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 9)}
wvSetPosition -win $_nWave1 {("G6" 10)}
wvSetPosition -win $_nWave1 {("G6" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 10 )} 
wvSetPosition -win $_nWave1 {("G6" 10)}
wvSetPosition -win $_nWave1 {("G6" 10)}
wvSetPosition -win $_nWave1 {("G6" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 10 )} 
wvSetPosition -win $_nWave1 {("G6" 10)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 40938.789348 -snap {("G6" 10)}
wvSelectSignal -win $_nWave1 {( "G6" 7 )} 
wvSelectSignal -win $_nWave1 {( "G6" 8 )} 
wvSelectSignal -win $_nWave1 {( "G5" 13 )} 
wvSelectSignal -win $_nWave1 {( "G5" 12 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 34266.168045 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 23278.919433 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 30453.241586 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G6" 10)}
wvSetPosition -win $_nWave1 {("G6" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 10)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 11 )} 
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 11 )} 
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 10836.738357 -snap {("G6" 11)}
wvSelectSignal -win $_nWave1 {( "G6" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetCursor -win $_nWave1 56993.216543 -snap {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G6" 8 )} 
wvSetCursor -win $_nWave1 364836.858009 -snap {("G6" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 273326.622997 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1044511.555808 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSetCursor -win $_nWave1 763960.440573 -snap {("G7" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*pr"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalSetSignalFilter -win $_nWave1 "pr*"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalSetSignalFilter -win $_nWave1 "pr*"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalSetSignalFilter -win $_nWave1 "pr*"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalSetSignalFilter -win $_nWave1 "pr*"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalSetSignalFilter -win $_nWave1 "pr*"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalSetSignalFilter -win $_nWave1 "pr*"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 531572.606924 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 756735.948336 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G6" 11)}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/cur_state\[2:0\]} \
{/tb/u_huffman/counter_fin\[6:0\]} \
{/tb/u_huffman/counter\[6:0\]} \
{/tb/u_huffman/counter_init\[6:0\]} \
{/tb/u_huffman/min1_idx\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/next_state\[2:0\]} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1045715.637848 -snap {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G6" 8 )} 
wvSelectSignal -win $_nWave1 {( "G6" 9 )} 
wvSelectSignal -win $_nWave1 {( "G6" 10 )} 
wvSetCursor -win $_nWave1 1040899.309689 -snap {("G6" 10)}
wvSetCursor -win $_nWave1 1046518.359207 -snap {("G6" 5)}
wvSelectSignal -win $_nWave1 {( "G6" 9 )} 
wvSelectSignal -win $_nWave1 {( "G6" 5 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSetCursor -win $_nWave1 48564.642265 -snap {("G6" 9)}
wvSetCursor -win $_nWave1 54183.691783 -snap {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G6" 9 )} 
wvZoom -win $_nWave1 36122.461189 87897.988893
wvSelectSignal -win $_nWave1 {( "G6" 8 )} 
wvSelectSignal -win $_nWave1 {( "G6" 9 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 110160.697243 -snap {("G4" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 47692.952128 -snap {("G6" 9)}
wvZoom -win $_nWave1 35591.755319 79013.696809
wvSetCursor -win $_nWave1 55050.790268 -snap {("G4" 1)}
wvExit
