echo "in $0"
OUT_DIR=/home/chen/flyme/lollipop/devices/ztestar/out/merged_target_files
#FLYME_DIR=$OUT_DIR/DATA/media/flyme

echo "System2Data for ZTE STAR"
echo "Author: Art_Chen"
cd $OUT_DIR
echo "Delete $OUT_DIR/DATA"
rm -rf DATA/
echo "create dir DATA/"
mkdir -vp DATA/
echo "move some app into data"
mkdir -vp $OUT_DIR/DATA/sys-priv-app/IflytekSpeechService
mv -vf $OUT_DIR/SYSTEM/app/IflytekSpeechService/ $OUT_DIR/DATA/sys-priv-app/
echo "move system font into data"
mv -vf $OUT_DIR/SYSTEM/fonts/ $OUT_DIR/DATA/sys-fonts
#mkdir -vp $OUT_DIR/DATA/sys-app
#mv -vf $OUT_DIR/SYSTEM/app/* $OUT_DIR/DATA/sys-app
#rm $OUT_DIR/DATA/sys-app/webview/lib/arm/libwebviewchromium.so
echo "remove Nfc"
rm -rf $OUT_DIR/SYSTEM/app/NfcNci
rm -rf $OUT_DIR/SYSTEM/priv-app/Tag
rm -rf $OUT_DIR/SYSTEM/lib/*nfc*
rm -rf $OUT_DIR/SYSTEM/etc/*nfc*
rm -rf $OUT_DIR/SYSTEM/etc/permissions/*nfc*
