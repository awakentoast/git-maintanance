#!/bin/bash

cd "$1" || exit
git fetch 
git pull --rebase

current_date_time=$(date +"%Y-%m-%d %T")
git add -A
git commit -m "Auto-commit: $current_date_time"
git push