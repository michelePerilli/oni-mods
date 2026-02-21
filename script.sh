#.tools\\OniSplit.exe -export 'data\oni' 'D:\Program Files (x86)\Oni\AE\GameDataFolder\level0_Final.dat'
#.tools\\OniSplit.exe -extract:xml 'data\xml\ONCC' 'data\oni\ONCC*'
#.tools\\OniSplit.exe -extract:xml 'data\xml\TRAM' 'data\oni\TRAM*'
#.tools\\OniSplit.exe -extract:xml 'data\xml\TRAC' 'data\oni\TRAC*'
#.tools\\OniSplit.exe -extract:xml 'data\xml\ONCV' 'data\oni\ONCV*'
#.tools\\OniSplit.exe -extract:xml 'data\xml\BINA' 'data\oni\BINA3RAPh2h_swttrail_*'
#.tools\\OniSplit.exe -extract:xml 'data\xml\TRMA' 'data\oni\TRMA*'

#.tools\\OniSplit.exe -extract:xml '.data\xml\TXMP' '.data\oni\TXMPIteration001%2FTC*'


#.tools\\OniSplit.exe -create:txmp 'TCTFagent\oni' -genmipmaps -format:dxt1 'TCTFagent\images\Iteration001%2FTC*'
rm TCTFagent/oni/*
.tools\\OniSplit.exe -create 'TCTFagent\oni' 'TCTFagent\*'
.tools\\OniSplit.exe -create 'TCTFagent\oni' 'TCTFagent\images\*'
.tools\\OniSplit.exe -import:nosep 'TCTFagent\oni' 'level0_alpha.dat'

cp level0_alpha.* 'D:\Program Files (x86)\Oni\AE\GameDataFolder'
rm level0_alpha.*
pause
