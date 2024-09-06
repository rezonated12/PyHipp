#!/bin/bash

# Number of .hkl files
echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

# Number of firings.mda files
echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#==========================================================="

# Define the file pattern
files=$(find . -name "*.out" | sort)

echo "Start Times"
for file in $files; do
    echo "==> $file <=="
    head -n 1 "$file"
done
echo ""

echo "End Times"
for file in $files; do
    echo "==> $file <=="
    tail -n 5 "$file"
done

echo "#==========================================================="
