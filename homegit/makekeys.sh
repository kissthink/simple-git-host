#!/bin/sh
# vim: et ai cin sw=2 ts=2 tw=0:
cd ~/

cat /dev/null > .ssh/authorized_keys.tmp
for f in .keys/*.keys; do
  u=$(basename $f .keys)
  sed "s/^/command=\"check $u\" /" $f >> .ssh/authorized_keys.tmp
done
mv .ssh/authorized_keys.tmp .ssh/authorized_keys
