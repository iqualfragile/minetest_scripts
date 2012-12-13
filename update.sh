#!/bin/bash
# updates all mods wich are cloned from an git- or hg-repo
# put into minetest/mods/minetest

function up {
cd $1
#echo $1
git pull&
cd ..
}
function hgup {
cd $1
hg pull -u&
cd ..
}


# update mods using git (github…)
mods="$(find -name '*.git' -printf '%h\n' | cut -c 3-)"
for line in $mods; do
 up $line
done

# update mods using hg
mods="$(find -name '*.hg' -printf '%h\n' | cut -c 3-)"
for line in $mods; do
 up $line
done

wait
echo 'Done updating plugins'
