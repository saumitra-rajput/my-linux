#!/bin/bash

# Shell script used to create folder for days 1 to 14

for i in $(seq -w 1 14):
do
	mkdir -p day-${i}
cat <<EOF > day-${i}/README.md
# Day ${i}
:shipit:

## Task

## Commands Used

## What I Learned

## Notes
EOF

done

