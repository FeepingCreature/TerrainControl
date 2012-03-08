#!/bin/sh
rm terraincontrol.jar
find Bukkit/ Common/ -name \*.java |xargs javac -cp ../common/bukkit.jar:../common/craftbukkit.jar || exit 1
(cd Bukkit/src/; find \( -name \*.class -o -name plugin.yml \) -exec echo -e "-C\nBukkit/src\n{}" \;; cd ../../Common/src; find -name \*.class -exec echo -e "-C\nCommon/src\n{}" \;; cd ..) |xargs jar cf terraincontrol.jar
