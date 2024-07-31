#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Add install browser-task"
curl -O https://cdn.phanmemvet.vn/data/browser-task-1.0.0.jar
curl -O https://cdn.phanmemvet.vn/data/google-services.json
