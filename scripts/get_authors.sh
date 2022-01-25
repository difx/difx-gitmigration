#!/usr/bin/env bash

svn log -q | awk -F '|' '/^r/ {sub("^ ", "", $2); sub(" $", "", $2); print $2" = "$2"-github-name <"$2"@github.com>"}' | sort -u > authors.txt
