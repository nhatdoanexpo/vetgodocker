#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Add install app"
curl -O https://cdn.phanmemvet.vn/data/cloud-shell-task-1.0.0.jar
