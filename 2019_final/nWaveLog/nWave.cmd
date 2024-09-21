wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/linjinyu/IC_contest/2019_final/IOTDF_F1.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/iot_out\[127:0\]} \
{/test/u_IOTDF/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
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
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetCursor -win $_nWave1 2482.700097 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetCursor -win $_nWave1 3482.676526 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 4448.171008 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 1896.507019 -snap {("G2" 0)}
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
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 3541.732766 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 4531.744681 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 7543.611915 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetCursor -win $_nWave1 11555.948936 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 10802.982128 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1213.113191 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11308.445957 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11350.277447 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 27912.061277 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 27486.774468 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 5730.914043 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 3374.406809 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 24743.325957 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 7
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 146491.496170 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 2314.675745 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 7278.679149 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 9481.804255 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvZoom -win $_nWave1 15840.190638 16230.617872
wvZoomIn -win $_nWave1
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
wvSetCursor -win $_nWave1 10207.595430 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 552.911419 -snap {("G2" 5)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/high_f4\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/high_f4\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 5996.962315 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 14801.013373 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetSearchMode -win $_nWave1 -value 3
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 5741.772429 -snap {("G1" 5)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/high_f5\[127:0\]} \
{/test/u_IOTDF/low_f5\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/high_f5\[127:0\]} \
{/test/u_IOTDF/low_f5\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetCursor -win $_nWave1 7187.848448 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/replace} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/replace} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 10462.785315 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 116728.106901 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 146627.855181 -snap {("G2" 5)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/temp_avg\[131:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/temp\[127:0\]} \
{/test/u_IOTDF/cur_state\[2:0\]} \
{/test/u_IOTDF/temp_avg\[131:0\]} \
{/test/u_IOTDF/fn_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/counter\[3:0\]} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/counter_round\[3:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/iot_out\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 118089.119626 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 109965.574930 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
