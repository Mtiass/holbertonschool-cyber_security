#!/bin/bash
sudo nmap -sA $1 -p $2 --reason -v -T1
