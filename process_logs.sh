#!/bin/bash
sed 's/WARNING/ERROR/g' system.log | \
awk '{print $3}' | \
sort | \
uniq -c | \
awk '{print $2 ": " $1}'
