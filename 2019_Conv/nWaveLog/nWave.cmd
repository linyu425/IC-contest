wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/linjinyu/IC_contest/107/CONV.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_CONV"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 136746651.359167 144014682.041643
wvZoom -win $_nWave1 139067040.564841 140084312.644170
wvZoom -win $_nWave1 139250608.458814 139411818.724711
wvZoom -win $_nWave1 139267484.721453 139282496.203703
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
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_CONV"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cur_state\[3:0\]} \
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
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetOptions -win $_nWave1 -hierName on
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetCursor -win $_nWave1 139272041.732382 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 31
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 116182458.505357 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetSearchMode -win $_nWave1 -value 6
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetSearchMode -win $_nWave1 -value 31
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetCursor -win $_nWave1 139701023.657853 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 139715120.043932 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/col\[5:0\]} \
{/testfixture/u_CONV/row\[5:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_CONV/col\[5:0\]} \
{/testfixture/u_CONV/row\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 139716569.659984 -snap {("G5" 0)}
wvSetOptions -win $_nWave1 -hierName off
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetCursor -win $_nWave1 139716413.226599 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_CONV"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_CONV/row\[5:0\]} \
{/testfixture/u_CONV/tmp\[8:0\]} \
{/testfixture/u_CONV/col\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/cdata_rd\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_CONV/row\[5:0\]} \
{/testfixture/u_CONV/col\[5:0\]} \
{/testfixture/u_CONV/tmp\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetSearchMode -win $_nWave1 -value 63
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 140162567.312652 -snap {("G3" 5)}
