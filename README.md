minetest_scripts
================

minetest_scripts is a (small) collection of scripts wich might proove usefull in working and playing with minetest.


Install:
--------
- cd into your main minetest-folder
- git clone git://github.com/iqualfragile/minetest_scripts.git
- ln minetest_scripts/update.sh mods/minetest/update.sh
- ln minetest_scripts/start.sh start.sh

git clone git://github.com/iqualfragile/minetest_scripts.git && ln minetest_scripts/update.sh mods/minetest/update.sh && ln minetest_scripts/start.sh start.sh

update.sh
---------
Automaticly updates mods which were cloned from a repo

start.sh
--------
Updates & rebuilds minetest, updatest minetest_game, calls update.sh and starts the minetest-server
