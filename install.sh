ONI_DIR="D:/Program Files (x86)/Oni/AE"
ONI_GDF="$ONI_DIR/GameDataFolder"
ONISPLIT=".tools/OniSplit.exe"
DAT_FILE_NAME="level0_alpha.dat"
OUTPUT="TCTFagent\.oni"
rm TCTFagent/.oni/*

$ONISPLIT -create $OUTPUT 'TCTFagent\*'
$ONISPLIT -create $OUTPUT 'TCTFagent\images\*.xml'
$ONISPLIT -create $OUTPUT 'TCTFagent\animations\*.xml'
$ONISPLIT -create $OUTPUT 'TCTFagent\particles\*.xml'

$ONISPLIT -import:nosep 'TCTFagent\.oni' "$ONI_GDF/$DAT_FILE_NAME"

(cd "$ONI_DIR" && ./Oni.exe) &
