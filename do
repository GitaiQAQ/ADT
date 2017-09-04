#!/bin/bash
rm README.md;
echo -e '#Decompile

A tool for decompile Android apk files

Version:  `0.0.1`

### Dependencies:
+ Apktool `v2.0.0-RC2`
+ dex2jar `translator-0.0.9.15`
+ jd-cli `0.9.1.Final`

'>>README.md

tree -L 2 -M >>README.md

echo -e '

### INFO

Data: '`date "+%Y-%m-%d %H:%M:%S"`'

Builder: '`whoami`'

'`lsb_release -d`'

'`lsb_release -r`>> README.md

git add -A
git commit -m "Auto"
git push