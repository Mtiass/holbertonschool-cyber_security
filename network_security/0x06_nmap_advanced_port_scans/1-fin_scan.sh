#!/bin/bash
sudo nmap -sF $1 -p 80-85 -f -T2
