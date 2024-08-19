# Wireshark Basics

Wireshark is a widely-used open-source tool for network protocol analysis.\
It allows users to capture and inspect network traffic in real-time, making it\
an essential tool for network troubleshooting, analysis, and security assessment.

## What is Wireshark?

Wireshark is a network protocol analyzer that:

- Captures network packets from various interfaces

- Provides detailed information about each packet, including protocols, source and destination addresses, and payload data

- Allows users to view, filter, and analyze network traffic to diagnose issues or understand network behavior

## How to Use Wireshark Filters

Wireshark filters help you narrow down the packets displayed in the packet list pane,\
making it easier to focus on specific traffic. There are two main types of filters:

**Capture Filters**:

- Applied while capturing traffic to limit the data collected.
- Use the syntax of libpcap or tcpdump for defining these filters.
Example: To capture only HTTP traffic, use tcp port 80.

**Display Filters**:

- Applied after capturing traffic to filter the displayed packets.
- Use Wireshark’s filter syntax, which is more expressive and user-friendly.
Example: To display only packets from a specific IP address, use ip.src == 192.168.1.1.

### To apply a filter:

Type the filter expression in the filter box at the top of the Wireshark interface.
Press Enter or click Apply to activate the filter.

### To analyze a packet in Wireshark:

Start a Capture:

- Select the network interface you want to capture traffic from.
- Click the shark fin icon (Start capturing packets).

Locate the Packet:

- Use filters to find specific packets or scroll through the packet list pane.

Inspect Packet Details:

- Click on a packet to view its details.
- The packet details pane displays information such as headers, protocol fields, and payload.

Analyze Protocol Layers:

- Expand different protocol layers in the packet details pane to see more granular information.
- Look for details such as source and destination IP addresses, TCP/UDP ports, flags, and payload content.

Follow Streams:

- For TCP streams, right-click on a packet and select “Follow” > “TCP Stream” to see the entire conversation between two endpoints.

Use Statistics Tools:

- Wireshark includes tools for generating statistics and visualizations, such as protocol hierarchy, I/O graphs, and flow graphs.

Tips for Effective Analysis:

- Save Your Work: Regularly save your capture files for later analysis or documentation.
- Use Coloring Rules: Apply coloring rules to make it easier to identify specific types of traffic.
- Check for Updates: Ensure you are using the latest version of Wireshark for new features and bug fixes.

#### [Wireshark documentation](https://www.wireshark.org/docs/)

# Tasks

### [0. IP protocol scan](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/0-ip_scan.txt)

Create a Wireshark filter to detect packets sent by the nmap -sO <target> command for IP protocol scanning.

### [1. TCP SYN scan](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/1-tcp_syn.txt)

Create a Wireshark filter to detect packets sent by the nmap -sS <target> command for TCP SYN scan.

### [2. TCP Connect() scan](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/2-tcp_connect_scan.txt)

Create a Wireshark filter to detect packets sent by the nmap -sT <target> command for TCP Connect() scan.

### [3. TCP FIN scan](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/3-tcp_fin.txt)

Create a Wireshark filter to detect packets sent by the nmap -sF <target> command for TCP FIN scan.

### [4. TCP ping sweeps](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/4-tcp_ping_sweep.txt)

Create a Wireshark filter to detect packets sent by the nmap -sn -PS/-PA <subnet> command for TCP SYN Ping/TCP ACK Ping.

### [5. UDP port scan](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/5-udp_port_scan.txt)

Create a Wireshark filter to detect packets sent by the nmap -sU <target> command for UDP port scan.

### [6. UDP ping sweeps](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/6-udp_ping_sweep.txt)

Create a Wireshark filter to detect packets sent by the nmap -sn -PU <subnet> command for UDP ping sweeps.

### [7. ICMP ping sweep](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/7-icmp_ping_sweep.txt)

Create a Wireshark filter to detect packets sent by the nmap -sn -PE <subnet> command for ICMP ping sweeps.

### [8. ARP scanning](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x05_wireshark_basics/8-arp_scanning.txt)

Create a Wireshark filter to detect packets sent by the arp-scan -l command for ARP scanning .
