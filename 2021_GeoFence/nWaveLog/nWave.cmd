wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/linjinyu/IC_contest/109_GeoFence/build/geofence.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetCursor -win $_nWave1 94134754.009033 -snap {("G2" 0)}
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
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 100635.981137 -snap {("G3" 0)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 153166.535829 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetCursor -win $_nWave1 97638.313613 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 132396.982276 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 215161.155131 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 213519.575297 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 216160.377639 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 222084.339649 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 223440.427338 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 222940.816085 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 220514.132851 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 220514.132851 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 254002.361468 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 256714.536846 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 257356.894172 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 256214.925592 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 259283.966152 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 243667.545816 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetCursor -win $_nWave1 242097.339018 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 258213.370607 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 196275.849735 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 557160.194596 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 537603.982659 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 640952.139174 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 567437.911819 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7087301.308047 -snap {("G3" 0)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 337533.794529 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 172591.642812 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 562285.404739 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 561090.171756 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 592931.178435 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 612772.045961 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/current_state\[2:0\]} \
{/testfixture/u_geofence/X_reg\[5:0\]} \
{/testfixture/u_geofence/Y_reg\[5:0\]} \
{/testfixture/u_geofence/R_reg\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/op\[20:0\]} \
{/testfixture/u_geofence/six_area\[20:0\]} \
{/testfixture/u_geofence/counter\[2:0\]} \
{/testfixture/u_geofence/s\[10:0\]} \
{/testfixture/u_geofence/sqrt_out\[10:0\]} \
{/testfixture/u_geofence/sqrt_in\[20:0\]} \
{/testfixture/u_geofence/outer_counter\[2:0\]} \
{/testfixture/u_geofence/tri_area\[20:0\]} \
{/testfixture/u_geofence/c\[10:0\]} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 777714.197678 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 858607.565999 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 847611.422551 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 874384.641380 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 584325.500954 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 591018.805662 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 1077861.104485 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvExit
