wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/linjinyu/IC_contest/2014/STI_DAC.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalClose -win $_nWave1
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/STI_SET_DAC/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/STI_SET_DAC/tmp_data\[31:0\]} \
{/STI_SET_DAC/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/STI_SET_DAC/tmp_data\[31:0\]} \
{/STI_SET_DAC/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvZoom -win $_nWave1 0.000000 35145.886021
wvZoom -win $_nWave1 0.000000 1110.705202
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/STI_SET_DAC/tmp_data\[31:0\]} \
{/STI_SET_DAC/clk} \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetCursor -win $_nWave1 9841.733976 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 5736.554179 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3490.071423 -snap {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
{/testfixture1/u_rtl/counter\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
{/testfixture1/u_rtl/counter\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/address\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/address\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4880.751224 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 19518.993321 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetCursor -win $_nWave1 2353.458125 -snap {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetCursor -win $_nWave1 3449.955660 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 19656.724109 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 22549.070656 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 23416.908340 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 22454.130016 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 23470.396024 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 22587.849228 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 30691.233452 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 2
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 51443.368965 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 52513.122658 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 64521.107862 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 52406.147289 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 53422.413297 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 54518.910833 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 55481.689156 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 56471.211322 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 57433.989646 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 58503.743339 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 59466.521663 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
}
wvCollapseGroup -win $_nWave1 "G4"
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
}
wvCollapseGroup -win $_nWave1 "G4"
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetCursor -win $_nWave1 3824.369452 -snap {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvResizeWindow -win $_nWave1 399 36 960 332
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvZoom -win $_nWave1 5292.000873 17426.184694
wvSetCursor -win $_nWave1 10493.601784 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4465.933560 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 5591.071860 -snap {("G4" 5)}
wvSetCursor -win $_nWave1 10628.229481 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3410.034540 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetCursor -win $_nWave1 19594.716241 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 3600.442560 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 13224.702481 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 9728.118840 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 21308.388421 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 11493.720480 -snap {("G4" 5)}
wvSetCursor -win $_nWave1 12393.831121 -snap {("G4" 5)}
wvSetCursor -win $_nWave1 11441.791020 -snap {("G3" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 19508.167141 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 20529.446521 -snap {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31491.755528 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 32582.274188 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetSearchMode -win $_nWave1 -value 4
wvSearchNext -win $_nWave1
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
wvGoToTime -win $_nWave1 42500
wvZoom -win $_nWave1 37873.886162 62938.505523
wvSetSearchMode -win $_nWave1 -value 8
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetCursor -win $_nWave1 87500.818881 -snap {("G4" 3)}
wvZoom -win $_nWave1 87018.119364 90343.382703
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 77428.932717 -snap {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 78263.806251 -snap {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 88491.007048 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 77334.060724 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 79383.295763 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 83595.612232 -snap {("G4" 5)}
wvSetCursor -win $_nWave1 95853.073670 -snap {("G4" 5)}
wvSetCursor -win $_nWave1 96612.049610 -snap {("G4" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetCursor -win $_nWave1 96460.254422 -snap {("G4" 4)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 2078986.895942 2212566.661452
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 2172454.620596 -snap {("G2" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 996990.795309 1533596.529513
wvZoom -win $_nWave1 1008090.343306 1116789.365070
wvSetCursor -win $_nWave1 1025302.313941 -snap {("G4" 1)}
wvSetSearchMode -win $_nWave1 -value 11111111
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 1253495.007133
wvZoom -win $_nWave1 0.000000 88513.556138
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetSearchMode -win $_nWave1 -value 1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 2174350.961048 -snap {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 2156484.101999 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 2172646.349054 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 2165638.499745 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2173443.712793 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 2195456.296997 -snap {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 9 10 )} 
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 9 10 )} 
wvSetPosition -win $_nWave1 {("G4" 10)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 9)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetCursor -win $_nWave1 2165688.601827 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 2195515.951697 -snap {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_finish} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_finish} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 2156263.159268 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G6" 7)}
wvSetPosition -win $_nWave1 {("G6" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/even4_wr} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G6" 7)}
wvSetPosition -win $_nWave1 {("G6" 7)}
wvSetPosition -win $_nWave1 {("G6" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/load} \
{/testfixture1/u_rtl/pi_end} \
{/testfixture1/u_rtl/pi_fill} \
{/testfixture1/u_rtl/pi_low} \
{/testfixture1/u_rtl/pi_msb} \
{/testfixture1/u_rtl/pi_length\[1:0\]} \
{/testfixture1/u_rtl/pi_data\[15:0\]} \
{/testfixture1/u_rtl/tmp_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_rtl/counter\[4:0\]} \
{/testfixture1/u_rtl/so_data} \
{/testfixture1/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/u_rtl/address\[7:0\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/start_store} \
{/testfixture1/u_rtl/reverse} \
{/testfixture1/u_rtl/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/even4_wr} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G6" 7)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 6)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 4)}
wvSetPosition -win $_nWave1 {("G7" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G7" 3 )} 
wvSelectSignal -win $_nWave1 {( "G7" 2 )} 
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSelectSignal -win $_nWave1 {( "G7" 3 )} 
wvSelectSignal -win $_nWave1 {( "G7" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2172668.201697 -snap {("G7" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture2"
wvGetSignalSetScope -win $_nWave1 "/testfixture2/u_rtl"
wvSetPosition -win $_nWave1 {("G8" 26)}
wvSetPosition -win $_nWave1 {("G8" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/testfixture2/u_rtl/address\[7:0\]} \
{/testfixture2/u_rtl/clk} \
{/testfixture2/u_rtl/counter\[4:0\]} \
{/testfixture2/u_rtl/cur_state\[2:0\]} \
{/testfixture2/u_rtl/even1_wr} \
{/testfixture2/u_rtl/even2_wr} \
{/testfixture2/u_rtl/even3_wr} \
{/testfixture2/u_rtl/even4_wr} \
{/testfixture2/u_rtl/load} \
{/testfixture2/u_rtl/next_state\[2:0\]} \
{/testfixture2/u_rtl/odd1_wr} \
{/testfixture2/u_rtl/odd2_wr} \
{/testfixture2/u_rtl/odd3_wr} \
{/testfixture2/u_rtl/odd4_wr} \
{/testfixture2/u_rtl/oem_addr\[4:0\]} \
{/testfixture2/u_rtl/oem_dataout\[7:0\]} \
{/testfixture2/u_rtl/oem_finish} \
{/testfixture2/u_rtl/pi_data\[15:0\]} \
{/testfixture2/u_rtl/pi_end} \
{/testfixture2/u_rtl/pi_fill} \
{/testfixture2/u_rtl/pi_length\[1:0\]} \
{/testfixture2/u_rtl/pi_low} \
{/testfixture2/u_rtl/pi_msb} \
{/testfixture2/u_rtl/reset} \
{/testfixture2/u_rtl/so_data} \
{/testfixture2/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("G8" 26)}
wvSetPosition -win $_nWave1 {("G8" 26)}
wvSetPosition -win $_nWave1 {("G8" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/testfixture2/u_rtl/address\[7:0\]} \
{/testfixture2/u_rtl/clk} \
{/testfixture2/u_rtl/counter\[4:0\]} \
{/testfixture2/u_rtl/cur_state\[2:0\]} \
{/testfixture2/u_rtl/even1_wr} \
{/testfixture2/u_rtl/even2_wr} \
{/testfixture2/u_rtl/even3_wr} \
{/testfixture2/u_rtl/even4_wr} \
{/testfixture2/u_rtl/load} \
{/testfixture2/u_rtl/next_state\[2:0\]} \
{/testfixture2/u_rtl/odd1_wr} \
{/testfixture2/u_rtl/odd2_wr} \
{/testfixture2/u_rtl/odd3_wr} \
{/testfixture2/u_rtl/odd4_wr} \
{/testfixture2/u_rtl/oem_addr\[4:0\]} \
{/testfixture2/u_rtl/oem_dataout\[7:0\]} \
{/testfixture2/u_rtl/oem_finish} \
{/testfixture2/u_rtl/pi_data\[15:0\]} \
{/testfixture2/u_rtl/pi_end} \
{/testfixture2/u_rtl/pi_fill} \
{/testfixture2/u_rtl/pi_length\[1:0\]} \
{/testfixture2/u_rtl/pi_low} \
{/testfixture2/u_rtl/pi_msb} \
{/testfixture2/u_rtl/reset} \
{/testfixture2/u_rtl/so_data} \
{/testfixture2/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("G8" 26)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G8" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/STI_SET_DAC"
wvGetSignalSetScope -win $_nWave1 "/testfixture2"
wvGetSignalSetScope -win $_nWave1 "/testfixture2/u_rtl"
wvSetPosition -win $_nWave1 {("G8" 26)}
wvSetPosition -win $_nWave1 {("G8" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/testfixture2/u_rtl/address\[7:0\]} \
{/testfixture2/u_rtl/clk} \
{/testfixture2/u_rtl/counter\[4:0\]} \
{/testfixture2/u_rtl/cur_state\[2:0\]} \
{/testfixture2/u_rtl/even1_wr} \
{/testfixture2/u_rtl/even2_wr} \
{/testfixture2/u_rtl/even3_wr} \
{/testfixture2/u_rtl/even4_wr} \
{/testfixture2/u_rtl/load} \
{/testfixture2/u_rtl/next_state\[2:0\]} \
{/testfixture2/u_rtl/odd1_wr} \
{/testfixture2/u_rtl/odd2_wr} \
{/testfixture2/u_rtl/odd3_wr} \
{/testfixture2/u_rtl/odd4_wr} \
{/testfixture2/u_rtl/oem_addr\[4:0\]} \
{/testfixture2/u_rtl/oem_dataout\[7:0\]} \
{/testfixture2/u_rtl/oem_finish} \
{/testfixture2/u_rtl/pi_data\[15:0\]} \
{/testfixture2/u_rtl/pi_end} \
{/testfixture2/u_rtl/pi_fill} \
{/testfixture2/u_rtl/pi_length\[1:0\]} \
{/testfixture2/u_rtl/pi_low} \
{/testfixture2/u_rtl/pi_msb} \
{/testfixture2/u_rtl/reset} \
{/testfixture2/u_rtl/so_data} \
{/testfixture2/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("G8" 26)}
wvSetPosition -win $_nWave1 {("G8" 26)}
wvSetPosition -win $_nWave1 {("G8" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/testfixture2/u_rtl/address\[7:0\]} \
{/testfixture2/u_rtl/clk} \
{/testfixture2/u_rtl/counter\[4:0\]} \
{/testfixture2/u_rtl/cur_state\[2:0\]} \
{/testfixture2/u_rtl/even1_wr} \
{/testfixture2/u_rtl/even2_wr} \
{/testfixture2/u_rtl/even3_wr} \
{/testfixture2/u_rtl/even4_wr} \
{/testfixture2/u_rtl/load} \
{/testfixture2/u_rtl/next_state\[2:0\]} \
{/testfixture2/u_rtl/odd1_wr} \
{/testfixture2/u_rtl/odd2_wr} \
{/testfixture2/u_rtl/odd3_wr} \
{/testfixture2/u_rtl/odd4_wr} \
{/testfixture2/u_rtl/oem_addr\[4:0\]} \
{/testfixture2/u_rtl/oem_dataout\[7:0\]} \
{/testfixture2/u_rtl/oem_finish} \
{/testfixture2/u_rtl/pi_data\[15:0\]} \
{/testfixture2/u_rtl/pi_end} \
{/testfixture2/u_rtl/pi_fill} \
{/testfixture2/u_rtl/pi_length\[1:0\]} \
{/testfixture2/u_rtl/pi_low} \
{/testfixture2/u_rtl/pi_msb} \
{/testfixture2/u_rtl/reset} \
{/testfixture2/u_rtl/so_data} \
{/testfixture2/u_rtl/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("G8" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G8" 9 )} 
wvSelectSignal -win $_nWave1 {( "G8" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G8" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 835630.740014 883338.471826
wvSetCursor -win $_nWave1 874351.587395 -snap {("G8" 4)}
wvSelectSignal -win $_nWave1 {( "G8" 15 )} 
wvSelectSignal -win $_nWave1 {( "G8" 15 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G8" 12 )} 
wvSelectSignal -win $_nWave1 {( "G8" 13 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 873050.216091 1044553.046570
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G8" 17 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G8" 21 )} 
wvSelectSignal -win $_nWave1 {( "G8" 20 )} 
wvSelectSignal -win $_nWave1 {( "G8" 18 )} 
wvSelectSignal -win $_nWave1 {( "G8" 19 )} 
wvSelectSignal -win $_nWave1 {( "G8" 20 )} 
wvSelectSignal -win $_nWave1 {( "G8" 22 )} 
wvSelectSignal -win $_nWave1 {( "G8" 21 )} 
wvSelectSignal -win $_nWave1 {( "G8" 22 )} 
wvSelectSignal -win $_nWave1 {( "G8" 23 )} 
wvSelectSignal -win $_nWave1 {( "G8" 25 )} 
wvSelectSignal -win $_nWave1 {( "G8" 24 )} 
wvSelectSignal -win $_nWave1 {( "G8" 26 )} 
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSelectSignal -win $_nWave1 {( "G8" 1 )} 
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSelectSignal -win $_nWave1 {( "G8" 3 )} 
wvSelectSignal -win $_nWave1 {( "G8" 4 )} 
wvSelectSignal -win $_nWave1 {( "G8" 6 )} 
wvSelectSignal -win $_nWave1 {( "G8" 5 )} 
wvSelectSignal -win $_nWave1 {( "G8" 6 )} 
wvSelectSignal -win $_nWave1 {( "G8" 7 )} 
wvSelectSignal -win $_nWave1 {( "G8" 8 )} 
wvSelectSignal -win $_nWave1 {( "G8" 9 )} 
wvSelectSignal -win $_nWave1 {( "G8" 10 )} 
wvSelectSignal -win $_nWave1 {( "G8" 11 )} 
wvSelectSignal -win $_nWave1 {( "G8" 12 )} 
wvSelectSignal -win $_nWave1 {( "G8" 14 )} 
wvSelectSignal -win $_nWave1 {( "G8" 14 )} 
wvSelectSignal -win $_nWave1 {( "G8" 13 )} 
wvSelectSignal -win $_nWave1 {( "G8" 15 )} 
wvSelectSignal -win $_nWave1 {( "G8" 17 )} 
wvSelectSignal -win $_nWave1 {( "G8" 18 )} 
wvSelectSignal -win $_nWave1 {( "G8" 19 )} 
wvSelectSignal -win $_nWave1 {( "G8" 20 )} 
wvSelectSignal -win $_nWave1 {( "G8" 19 )} 
wvSelectSignal -win $_nWave1 {( "G8" 19 )} 
wvSelectSignal -win $_nWave1 {( "G8" 19 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture2"
wvGetSignalSetScope -win $_nWave1 "/testfixture2/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture2"
wvGetSignalSetScope -win $_nWave1 "/testfixture2/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture2"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 887330.665859 -snap {("G9" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture2"
wvSetCursor -win $_nWave1 894455.217296 -snap {("G9" 0)}
wvSetCursor -win $_nWave1 893130.404012 -snap {("G9" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetPosition -win $_nWave1 {("G9" 1)}
wvSetPosition -win $_nWave1 {("G9" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G9" 1 )} 
wvSetPosition -win $_nWave1 {("G9" 1)}
wvSetPosition -win $_nWave1 {("G9" 2)}
wvSetPosition -win $_nWave1 {("G9" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
{/testfixture1/u_rtl/clk} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G9" 2 )} 
wvSetPosition -win $_nWave1 {("G9" 2)}
wvSetPosition -win $_nWave1 {("G9" 1)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G9" 1)}
wvSelectGroup -win $_nWave1 {G1} {G2} {G3} {G4} {G5} {G6} {G7} {G8}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G9" 1)}
wvSetPosition -win $_nWave1 {("G9" 6)}
wvSetPosition -win $_nWave1 {("G9" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G9" 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G9" 6)}
wvSetPosition -win $_nWave1 {("G9" 6)}
wvSetPosition -win $_nWave1 {("G9" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G9" 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G9" 6)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G9" 8)}
wvSetPosition -win $_nWave1 {("G9" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G9" 7 8 )} 
wvSetPosition -win $_nWave1 {("G9" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G9" 7 )} 
wvSelectSignal -win $_nWave1 {( "G9" 7 8 )} 
wvSetPosition -win $_nWave1 {("G9" 7)}
wvSetPosition -win $_nWave1 {("G9" 8)}
wvSetPosition -win $_nWave1 {("G9" 9)}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 2)}
wvSetPosition -win $_nWave1 {("G10" 2)}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetPosition -win $_nWave1 {("G10" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 34)}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetPosition -win $_nWave1 {("G10" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 2000998.564551 2192398.427247
wvZoom -win $_nWave1 2157313.003057 2175743.089693
wvSetCursor -win $_nWave1 2173429.469688 -snap {("G10" 1)}
wvSelectSignal -win $_nWave1 {( "G9" 3 )} 
wvSelectSignal -win $_nWave1 {( "G9" 6 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G9" 7 )} 
wvZoom -win $_nWave1 2164283.910777 2217286.841817
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetPosition -win $_nWave1 {("G10" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 34)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetPosition -win $_nWave1 {("G10" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G10" 3)}
wvSetPosition -win $_nWave1 {("G10" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/odd4_wr} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 3 )} 
wvSetPosition -win $_nWave1 {("G10" 3)}
wvSetPosition -win $_nWave1 {("G10" 3)}
wvSetPosition -win $_nWave1 {("G10" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/odd4_wr} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 3 )} 
wvSetPosition -win $_nWave1 {("G10" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G10" 5)}
wvSetPosition -win $_nWave1 {("G10" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 4 5 )} 
wvSetPosition -win $_nWave1 {("G10" 5)}
wvSetPosition -win $_nWave1 {("G10" 5)}
wvSetPosition -win $_nWave1 {("G10" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 4 5 )} 
wvSetPosition -win $_nWave1 {("G10" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G10" 2 )} 
wvSelectSignal -win $_nWave1 {( "G10" 2 )} 
wvSetPosition -win $_nWave1 {("G10" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 37)}
wvSelectSignal -win $_nWave1 {( "G10" 17 )} 
wvSelectSignal -win $_nWave1 {( "G10" 2 )} 
wvSetPosition -win $_nWave1 {("G10" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 2)}
wvSetPosition -win $_nWave1 {("G10" 5)}
wvSelectSignal -win $_nWave1 {( "G10" 5 )} 
wvSelectSignal -win $_nWave1 {( "G10" 4 )} 
wvSelectSignal -win $_nWave1 {( "G10" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G10" 2 )} 
wvSetPosition -win $_nWave1 {("G10" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 37)}
wvSelectSignal -win $_nWave1 {( "G10" 2 )} 
wvSetPosition -win $_nWave1 {("G10" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 2)}
wvSetPosition -win $_nWave1 {("G10" 5)}
wvSelectSignal -win $_nWave1 {( "G9" 3 )} 
wvSelectSignal -win $_nWave1 {( "G9" 2 )} 
wvSelectSignal -win $_nWave1 {( "G9" 3 )} 
wvSetPosition -win $_nWave1 {("G9" 3)}
wvSetPosition -win $_nWave1 {("G9" 2)}
wvSetPosition -win $_nWave1 {("G9" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G9" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetPosition -win $_nWave1 {("G9" 9)}
wvSetPosition -win $_nWave1 {("G9" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/even2_wr} \
{/testfixture1/u_rtl/even3_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/odd2_wr} \
{/testfixture1/u_rtl/odd3_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G9" 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G9" 9)}
wvSetPosition -win $_nWave1 {("G9" 9)}
wvSetPosition -win $_nWave1 {("G9" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/even2_wr} \
{/testfixture1/u_rtl/even3_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/odd2_wr} \
{/testfixture1/u_rtl/odd3_wr} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G9" 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G9" 9)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G9" 7)}
wvSetPosition -win $_nWave1 {("G9" 9)}
wvSetPosition -win $_nWave1 {("G9" 10)}
wvSetPosition -win $_nWave1 {("G9" 11)}
wvSetPosition -win $_nWave1 {("G9" 12)}
wvSetPosition -win $_nWave1 {("G9" 13)}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 8)}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSelectSignal -win $_nWave1 {( "G9" 2 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 10)}
wvSetPosition -win $_nWave1 {("G10" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvSetPosition -win $_nWave1 {("G10" 10)}
wvSetPosition -win $_nWave1 {("G10" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/even2_wr} \
{/testfixture1/u_rtl/even3_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/odd2_wr} \
{/testfixture1/u_rtl/odd3_wr} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 9 10 )} 
wvSetPosition -win $_nWave1 {("G10" 10)}
wvSetPosition -win $_nWave1 {("G10" 10)}
wvSetPosition -win $_nWave1 {("G10" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture1/u_rtl/clk} \
{/testfixture1/u_rtl/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/oem_finish} \
{/testfixture1/u_rtl/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture1/EVEN4_MEM\[0:31\]} \
{/testfixture1/ODD4_MEM\[0:31\]} \
{/testfixture1/u_rtl/even1_wr} \
{/testfixture1/u_rtl/even2_wr} \
{/testfixture1/u_rtl/even3_wr} \
{/testfixture1/u_rtl/odd1_wr} \
{/testfixture1/u_rtl/odd2_wr} \
{/testfixture1/u_rtl/odd3_wr} \
{/testfixture1/u_rtl/even4_wr} \
{/testfixture1/u_rtl/odd4_wr} \
{/testfixture1/odd4_wr} \
{/testfixture1/oem_addr\[4:0\]} \
{/testfixture1/oem_dataout\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 9 10 )} 
wvSetPosition -win $_nWave1 {("G10" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G10" 9 )} 
wvSelectSignal -win $_nWave1 {( "G10" 10 )} 
wvSelectSignal -win $_nWave1 {( "G10" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 10)}
wvSelectSignal -win $_nWave1 {( "G10" 10 )} 
wvSetPosition -win $_nWave1 {("G10" 9)}
wvSetPosition -win $_nWave1 {("G10" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 8)}
wvSetPosition -win $_nWave1 {("G10" 9)}
wvSelectSignal -win $_nWave1 {( "G10" 10 )} 
wvSetPosition -win $_nWave1 {("G10" 10)}
wvSetPosition -win $_nWave1 {("G10" 9)}
wvSetPosition -win $_nWave1 {("G10" 8)}
wvSetPosition -win $_nWave1 {("G10" 7)}
wvSetPosition -win $_nWave1 {("G10" 6)}
wvSetPosition -win $_nWave1 {("G10" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G10" 5)}
wvSetPosition -win $_nWave1 {("G10" 6)}
wvSetCursor -win $_nWave1 2187874.373665 -snap {("G11" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G10" 10 )} 
wvSelectSignal -win $_nWave1 {( "G10" 3 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G10" 7 8 9 10 )} 
wvSetCursor -win $_nWave1 2186513.385420 -snap {("G10" 6)}
wvExit
