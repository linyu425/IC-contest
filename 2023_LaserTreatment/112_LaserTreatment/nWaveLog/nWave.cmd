wvExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     wvSetCursor -win $_nWave1 187416.459872 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvZoom -win $_nWave1 30052.202020 52454.752617
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 65524.066170 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/count0\[5:0\]} \
{/testfixture/u_LASER/count1\[5:0\]} \
{/testfixture/u_LASER/count2\[5:0\]} \
{/testfixture/u_LASER/count3\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/count0\[5:0\]} \
{/testfixture/u_LASER/count1\[5:0\]} \
{/testfixture/u_LASER/count2\[5:0\]} \
{/testfixture/u_LASER/count3\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 48)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 6 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 324551.860285 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 154781.258670 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 839403.204915 885457.418021
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 879316.856273 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 874097.378788 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 881856.815905 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1630614.586076 1678845.907438
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 5760164.401390 5883636.584077
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 5844873.801876 -snap {("G4" 0)}
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
wvZoom -win $_nWave1 5459715.423542 6225991.272460
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetCursor -win $_nWave1 5769012.220741 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 5768083.401530 -snap {("G2" 7)}
wvSetSearchMode -win $_nWave1 -value 30
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 906527.549750 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1679305.133144 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvZoom -win $_nWave1 1486110.737296 2615554.897640
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 2207585.976691 -snap {("G4" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 1314262.295674 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 2595668.033956 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
{/testfixture/u_LASER/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 16428.278696 355946.038412
wvZoom -win $_nWave1 32683.977494 50585.823007
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 34018.478705 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 40940.525637 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 42003.786764 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetCursor -win $_nWave1 43327.438372 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 37056.367641 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 41873.591524 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 38510.214488 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/add\[9:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/add\[9:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 42025.485971 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 34300.568392 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSetCursor -win $_nWave1 30611.703256 -snap {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/C1_count\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/C1_count\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvScrollDown -win $_nWave1 0
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetCursor -win $_nWave1 42633.063758 -snap {("G5" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 1988688.893975 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 1155439.357393 -snap {("G2" 8)}
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetCursor -win $_nWave1 4199577.664372 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 17342700.354723 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvZoom -win $_nWave1 88879.950569 533279.703412
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 3930109.814239 -snap {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/C1_count\[39:0\]} \
{/testfixture/u_LASER/C2_count\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/C1_in_cycle\[39:0\]} \
{/testfixture/u_LASER/C2_in_cycle\[39:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/C1_count\[39:0\]} \
{/testfixture/u_LASER/C2_count\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvExpandBus -win $_nWave1
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
wvZoom -win $_nWave1 3757736.576772 3938728.476112
wvZoom -win $_nWave1 3808962.768888 3810059.689490
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvSetCursor -win $_nWave1 3805830.894369 -snap {("G4" 31)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
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
wvZoom -win $_nWave1 0.000000 1169642.926061
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvZoom -win $_nWave1 29772.729027 60254.332555
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/add\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/add\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetCursor -win $_nWave1 39970.210934 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 39452.947360 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 44256.109128 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 13097.852667 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11749.272633 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 41140.927913 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetRadix -win $_nWave1 -1Com
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 1416415.457999 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 2835195.549484 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/CX\[3:0\]} \
{/testfixture/u_LASER/CY\[3:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/CX\[3:0\]} \
{/testfixture/u_LASER/CY\[3:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvZoom -win $_nWave1 2194379.874830 2322070.083064
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/CX\[3:0\]} \
{/testfixture/u_LASER/CY\[3:0\]} \
{/testfixture/u_LASER/circle} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/current_state\[2:0\]} \
{/testfixture/u_LASER/row_counter\[5:0\]} \
{/testfixture/u_LASER/col_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_LASER/max\[5:0\]} \
{/testfixture/u_LASER/counter\[5:0\]} \
{/testfixture/u_LASER/in_cycle\[39:0\]} \
{/testfixture/u_LASER/max_current\[5:0\]} \
{/testfixture/u_LASER/non_imp\[2:0\]} \
{/testfixture/u_LASER/add\[5:0\]} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/CX\[3:0\]} \
{/testfixture/u_LASER/CY\[3:0\]} \
{/testfixture/u_LASER/circle} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2246462.002188 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 2210012.251838 2219453.588447
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2214526.927343 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 41518.992989 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 45638.848963 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 2232412.624113 2323232.560265
wvZoom -win $_nWave1 2286244.077177 2287895.348744
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2287037.688299 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2287646.156853 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 2288030.452781 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2296388.889219 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2305003.522942 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -Unsigned
wvSetCursor -win $_nWave1 2288126.526763 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2297926.072931 -snap {("G6" 0)}
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
wvSetCursor -win $_nWave1 15740761.218625 -snap {("G1" 1)}
wvZoom -win $_nWave1 15281655.683082 16429419.521940
wvZoom -win $_nWave1 15801975.290029 15815887.578985
wvSetCursor -win $_nWave1 15808720.642241 -snap {("G6" 0)}
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
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvZoom -win $_nWave1 2365729.930981 4610583.150160
wvZoom -win $_nWave1 2783408.681458 3070477.790092
wvZoom -win $_nWave1 2842736.297241 2877706.534111
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1361846.994133 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 7666493.237888 -snap {("G6" 0)}
wvSetCursor -win $_nWave1 2794227.896328 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2284213.484183 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 7899797.703018 -snap {("G6" 0)}
wvSetCursor -win $_nWave1 7346377.808988 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvExit
