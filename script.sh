#.tools\\OniSplit.exe -export '.data\oni' 'D:\Program Files (x86)\Oni\AE\GameDataFolder\level0_Final.dat'
#.tools\\OniSplit.exe -extract:xml '.data\xml\ONCC' '.data\oni\ONCC*'
#.tools\\OniSplit.exe -extract:xml '.data\xml\TRAM' '.data\oni\TRAM*'
#.tools\\OniSplit.exe -extract:xml '.data\xml\TRAC' '.data\oni\TRAC*'
#.tools\\OniSplit.exe -extract:xml '.data\xml\ONCV' '.data\oni\ONCV*'
#.tools\\OniSplit.exe -extract:xml '.data\xml\BINA' '.data\oni\BINA3RAPh2h_swttrail_*'
#.tools\\OniSplit.exe -extract:xml '.data\xml\TRMA' '.data\oni\TRMA*'
#.tools\\OniSplit.exe -extract:xml '.data\xml\TXMP' '.data\oni\TXMPIteration001%2FTC*'


#.tools\\OniSplit.exe -create:txmp 'TCTFagent\oni' -genmipmaps -format:dxt1 'TCTFagent\images\Iteration001%2FTC*'


ONI_DIR="D:/Program Files (x86)/Oni/AE"
ONI_GDF="$ONI_DIR/GameDataFolder"
ONISPLIT=".tools/OniSplit.exe"
DAT_FILE_NAME="level0_alpha.dat"

rm TCTFagent/.oni/*

$ONISPLIT -create 'TCTFagent\.oni' 'TCTFagent\*'
$ONISPLIT -create 'TCTFagent\.oni' 'TCTFagent\images\*.xml'
$ONISPLIT -create 'TCTFagent\.oni' 'TCTFagent\animations\*.xml'
$ONISPLIT -create 'TCTFagent\.oni' 'TCTFagent\particles\*.xml'

$ONISPLIT -import:nosep 'TCTFagent\.oni' "$ONI_GDF/$DAT_FILE_NAME"

(cd "$ONI_DIR" && ./Oni.exe) &

