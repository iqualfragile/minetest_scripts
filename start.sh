#!/bin/bash
# updates everything & starts minetest
# in paralel

# update minetest
git pull
# rebuild minetest
cmake . -DRUN_IN_PLACE=1 -DENABLE_SOUND=0 -DBUILD_CLIENT=0 -DCMAKE_BUILD_TYPE=Release
make -j 8 &

# update minetest
cd games/minetest_game/
git pull &
cd ../..

# update other mods
cd mods/minetest/
./update.sh &
cd ../..

wait # wait until everything is up-to-date
# start the server
bin/minetestserver

exit 0
