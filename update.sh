#!/bin/bash
# updates all mods wich are cloned from an git- or hg-repo
# put into minetest/mods/minetest
dir="$(pwd)"

function gitup {
cd $1
#echo $1
echo $(git stash save > /dev/zero ; git pull; git stash pop > /dev/zero ) 2> /dev/zero &
cd $dir
}
function hgup {
cd $1
hg pull -u 2> /dev/zero &
cd $dir
}
function up {
gitup $1
hgup $1
}
function dirup {
# update mods using git (github, gitorious,…)
mods="$(find $1 -name '*.git' -printf '%h\n')"
for line in $mods; do
 gitup $line
done

# update mods using hg
mods="$(find $1 -name '*.hg' -printf '%h\n')"
for line in $mods; do
 up $line
done
}

for modfolder in $(cat modfolders); do
dirup $modfolder
done

for singlemod in $(cat singlemods); do
up $singlemod
done

wait
echo 'Done updating stuffs'
