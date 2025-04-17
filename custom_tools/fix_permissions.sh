#!/bin/bash

TARGET_DIR=~/dev/px4/PX4-Autopilot

echo "🔐 Setze Besitzerrechte auf lukie:lukie für PX4-Verzeichnis..."

sudo chown -R lukie:lukie "$TARGET_DIR"
