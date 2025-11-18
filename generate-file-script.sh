#!/bin/bash

for i in $(seq -w 1 20); do
    filename="testfile_50mb_${i}.bin"
    echo "Creating $filename ..."
    dd if=/dev/urandom of="$filename" bs=1M count=50 status=none
done

echo "Done."
