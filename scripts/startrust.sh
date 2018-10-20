#!/bin/sh

clear while : do
  exec ./RustDedicated -batchmode -nographics \
  -server.ip 0.0.0.0 \
  -server.port 28015 \
  -rcon.ip 0.0.0.0 \
  -rcon.port 28016 \
  -rcon.password "rustadmin" \
  -server.maxplayers 5 \
  -server.hostname "Testworld" \
  -server.identity "testworldrust" \
  -server.level "Procedural Map" \
  -server.seed 420 \
  -server.worldsize 3000 \
  -server.saveinterval 300 \
  -server.globalchat true \
  -server.description "A test server you should not use" \
  -server.headerimage "image url" \
  -server.url "web url"
  echo "\nRestarting server...\n"
done
