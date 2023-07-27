#!/bin/bash
# only works if 10.10.10.0/24 is the subnet with all atvs on, mine is
nmap -sn 10.10.10.0/24|grep 'Nmap scan report for'|awk '{print $5}' > atvips
tail -n +2 atvips > atvips.tmp && mv atvips.tmp atvips
