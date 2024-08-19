#!/bin/bash
sudo nmap -p -sn -PS22,80,443 $1
