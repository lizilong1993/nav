#! /bin/bash
echo -e "\033[31;40m--------------------Deploy Begin --------------------"

echo -e "\033[31;40m-------------------Step 1 Generate Nav-------------------"

time=$(date "+%Y%m%d%H%M%S")

cd ../nav/
hexo clean && hexo generate
git add .
git commit -m "update nav $time"
git push -u origin main
cp ../nav/public/index.html ../blog/source/nav.html
exec /bin/bash