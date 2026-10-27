#!/data/data/com.termux/files/usr/bin/bash
# نشر تحديث: bash ~/tabibi/release.sh رقم-الإصدار رابط-ميديافاير
# مثال: bash ~/tabibi/release.sh 3 https://www.mediafire.com/file/xxxx/Tabibi.apk
cd "$HOME/tabibi" || exit 1
[ -n "$1" ] || { echo "اكتب رقم الإصدار"; exit 1; }
echo "$1 $2" > version.txt
git add version.txt
git -c user.name="Allakan Apps" -c user.email="allakanapps@gmail.com" commit -m "release $1" -q
git push -q origin main && echo "تم: التطبيقات بتشوف الإصدار $1 خلال دقائق"
