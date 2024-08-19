#!/bin/bash
sudo nmap -p -sn -PS 22,80,443 $1
