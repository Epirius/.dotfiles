#!/bin/bash
swaybg -i $(fd --type f --search-path ~/Pictures/Background | shuf -n1) -m stretch &
exit 0