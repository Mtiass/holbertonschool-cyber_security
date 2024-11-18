#!/bin/bash
cat dmesg | grep -i "Linux version" | head -n 1
