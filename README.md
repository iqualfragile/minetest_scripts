minetest_scripts
================

minetest_scripts is a (small) collection of scripts wich might proove usefull in working and playing with minetest.


Install:
--------
- cd into your main minetest-folder
- git clone git://github.com/iqualfragile/minetest_scripts.git
- chmod +x update.sh
- cp singlemods.example singlemods
- cp modfolders.example modfolders
- add your own locations to singlemods/modfolders

git clone git://github.com/iqualfragile/minetest_scripts.git && chmod +x update.sh && cp singlemods.example singlemods && cp modfolders.example modfolders

update.sh
---------
Automaticly updates mods which were cloned from a repo
merges your local changes when possible so you can customize your experience while still being up-to-date

start.sh
--------
Updates everything, rebuilds minetest and starts the server
