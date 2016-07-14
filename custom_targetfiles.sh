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
mkdir -vp $OUT_DIR/DATA/sys-app
mv -vf $OUT_DIR/SYSTEM/app/* $OUT_DIR/DATA/sys-app
rm $OUT_DIR/DATA/sys-app/webview/lib/arm/libwebviewchromium.so
