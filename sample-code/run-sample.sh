#!/bin/bash
set -e

ulimit -c unlimited

echo "/core_dump/core.%e.%p" | tee /proc/sys/kernel/core_pattern

javac SegmentFault.java

java -cp . SegmentFault