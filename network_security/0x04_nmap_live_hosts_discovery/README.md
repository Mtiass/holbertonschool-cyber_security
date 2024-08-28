# Nmap Live Host Discovery

Nmap (Network Mapper) is an open-source tool used for network discovery and security auditing.\ 
It helps in identifying live hosts on a network, discovering open ports, and detecting services\
running on those ports.

## What is Nmap?

Nmap is a powerful network scanning tool used for:

- Discovering devices on a network

- Identifying open ports and services

- Detecting the operating system of networked devices

- Performing security assessments

## How to Use Nmap

To use Nmap, you typically run it from the command line. The basic syntax is:
```
nmap [options] [target]
```
For example, to perform a basic scan of a single IP address:
```
nmap 192.168.1.1
```

## How Does Nmap Scan Work?

Nmap scans work by sending specially crafted packets to the target hosts and analyzing the responses.\
The scanning process can involve:

- Sending packets to determine if ports are open, closed, or filtered

- Using various scanning techniques to discover live hosts and their services

- Employing different protocols like TCP, UDP, and ICMP to gather information

## What is a Subnetwork?

A subnetwork (or subnet) is a segment of a larger network. It is used to partition a network into smaller,\ manageable sections. Subnetworks help in organizing and improving network performance and security.

## How to Enumerate Targets

Enumerating targets involves identifying and listing all the IP addresses or hostnames you want to scan.\
This can be done using:

- Network discovery tools
- Address resolution protocols (ARP)
- Manually listing known IP addresses

## What is ARP Scan?

ARP (Address Resolution Protocol) Scan is a technique used to discover devices on a local network by sending ARP requests.\
It helps in mapping IP addresses to MAC addresses and is effective in identifying live hosts.

## What is ICMP Echo Scan?

ICMP Echo Scan uses ICMP Echo Request (ping) packets to determine if a host is reachable.\
If a host responds with an ICMP Echo Reply, it is considered live.\
This scan is commonly used to check if a host is active on the network.

## What is ICMP Timestamp Scan?

ICMP Timestamp Scan involves sending ICMP Timestamp Requests to a target to obtain time information.\
The response includes the target's time, which can help in network analysis and troubleshooting.

## What is ICMP Address Mask Scan?

ICMP Address Mask Scan sends ICMP Address Mask Requests to a target.\
The response includes the subnet mask of the target,\
which helps in understanding the network configuration.

## What is TCP SYN Ping Scan?

TCP SYN Ping Scan sends SYN packets to a target to check if ports are open.\
This type of scan is useful for detecting live hosts without establishing a full TCP connection.

## What is TCP ACK Ping Scan?

TCP ACK Ping Scan sends TCP ACK packets to a target to determine if it is live.\
This scan helps in identifying hosts that might be protected by firewalls or filtering rules.

## What is UDP Ping Scan?

UDP Ping Scan sends UDP packets to a target to check for responses.\
This scan helps in identifying live hosts and services, especially on UDP ports,\
which are often less monitored than TCP ports.

## What Can Nmap Detect?

Nmap can detect:

- Live hosts on a network
- Open and closed ports
- Running services and their versions
- Operating systems and hardware characteristics
- Network vulnerabilities and misconfigurations

## How to Scan an IP Address with Nmap

To scan a specific IP address:
```
nmap [options] [IP address]
```
For example, to scan the IP address 192.168.1.1:
```
nmap 192.168.1.1
```

## How to Check Ports with Nmap

To check open ports on a target, you can use:
```
nmap -p [port range] [target]
```
For example, to scan ports 22, 80, and 443 on 192.168.1.1:
```
nmap -p 22,80,443 192.168.1.1
```
To scan a range of ports, use:
```
nmap -p 1-65535 [target]
```

## Tasks

### [0. Will arp be enough ?](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/0-arp_scan.sh)

Write a bash script that scan a subnetwork to discover live host using ARP scan.

1. You should use nmap.
2. Your code should tell nmap not to do a port scan after host discovery.
3. You should run your code as privileged user. root or sudoers.
4. Your script should accept a subnetwork as an arguments $1.

### [1. Host, do you hear me ?](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/1-icmp_echo_scan.sh)

Write a bash script that scan a subnetwork to discover live host using ICMP Echo scan.

1. You should use nmap.
2. Your code should tell nmap not to do a port scan after host discovery.
3. You should run your code as privileged user. root or sudoers.
4. Your script should accept a subnetwork as an arguments $1.

## [2. Time always matter](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/2-icmp_timestamp_scan.sh)

Write a bash script that scan a subnetwork to discover live host using ICMP Timestamp scan.

1. You should use nmap.
2. Your code should tell nmap not to do a port scan after host discovery.
3. You should run your code as privileged user. root or sudoers.
4. Your script should accept a subnetwork as an arguments $1.

## [3. Sometimes we need Masks !](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/3-icmp_address_mask_scan.sh)

Write a bash script that scan a subnetwork to discover live host using ICMP Address Mask scan.

1. You should use nmap.
2. Your code should tell nmap not to do a port scan after host discovery.
3. You should run your code as privileged user. root or sudoers.
4. Your script should accept a subnetwork as an arguments $1.

## [4. SYN Scan me](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/4-tcp_syn_ping.sh)

Write a bash script that scan a subnetwork to discover live host using TCP SYN Ping scan.

1. You should use nmap.
2. Your code should tell nmap not to do a port scan after host discovery.
3. Your code should scan for those ports22,80,443.
4. Your script should accept a subnetwork as an arguments $1.

## [5. Are your privileged enough to scan me ?](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/5-tcp_ack_ping.sh)

Write a bash script that scan a subnetwork to discover live host using *TCP ACK Ping * scan.

1. You should use nmap.
2. Your code should tell nmap not to do a port scan after host discovery.
3. Your code should scan for those ports 22,80,443.
4. You should run your code as privileged user. root or sudoers.
5. Your script should accept a subnetwork as an arguments $1.

## [6. UDP is our last hope](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/6-udp_ping_scan.sh)

Write a bash script that scan a subnetwork to discover live host using UDP Ping scan.

1. You should use nmap.
2. Your code should tell nmap not to do a port scan after host discovery.
3. Your code should scan for those ports 53,161,162.
4. You should run your code as privileged user. root or sudoers.
5. Your script should accept a subnetwork as an arguments $1.

## [7. Simple Catch, is it mimicked ?](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x04_nmap_live_hosts_discovery/100-flag.txt)

1. You should run your scan as privileged user. root or sudoers.
2. The Current Flag is hidden within UDP opened port service VERSION
3. Two hundred, Three hundred but no more. -p200-300
