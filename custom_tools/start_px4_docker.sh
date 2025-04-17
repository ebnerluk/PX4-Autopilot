#!/bin/bash

echo "🔐 Setze Besitzerrechte auf root:root für PX4-Verzeichnis..."
sudo chown -R root:root ~/dev/px4/PX4-Autopilot

echo "Starte Docker-Container mit PX4-Umgebung..."
docker run --rm -it \
  --env="DISPLAY=$DISPLAY" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --network=host \
  --volume="$HOME/dev/px4:/px4" \
  --workdir="/px4/PX4-Autopilot" \
  px4io/px4-dev-simulation-focal:latest
