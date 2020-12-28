#!/bin/bash/
HISTFILE=~/.bash_history
set -o history
history 10 | awk '{a[$2]++} END {for (i in a) print i,a[i]}'| sort -r -k2