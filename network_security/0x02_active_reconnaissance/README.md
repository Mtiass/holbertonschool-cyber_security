# Active reconnaissance

Active reconnaissance is a crucial step in the process of gathering information about a target system or network.\ This document provides an overview of active reconnaissance, its importance, and how to perform various techniques\ using different tools.

## What is Active Reconnaissance?

Active reconnaissance is the process of actively engaging with a target system to gather information. Unlike passive\
reconnaissance, which involves collecting information without directly interacting with the target (e.g., through\
public sources), active reconnaissance involves techniques that directly query or interact with the target system.\ This might include network scanning, port scanning, or querying services.

## Why is Active Reconnaissance Important for Cyber Security?

Active reconnaissance helps security professionals and attackers understand the layout, vulnerabilities, and\ potential weaknesses of a target system. For cybersecurity, this is important because:

- **Identifying Vulnerabilities**: It helps in identifying potential vulnerabilities that can be exploited.

- **Understanding the Target**: Provides insights into the system's architecture, operating system, and running services.

- **Planning Attacks**: Helps in planning more effective and targeted security assessments or attacks.

- **Strengthening Defenses**: Enables organizations to better prepare and defend against potential attacks by understanding their own weaknesses.

## How Can Wappalyzer Be Used for Active Reconnaissance?

[Wappalyzer](https://www.wappalyzer.com/) is a tool used for identifying technologies used by websites. It helps in active reconnaissance by:

- **Identifying Technologies**: Detects web technologies such as content management systems (CMS), e-commerce platforms, JavaScript frameworks, and server software.

- **Understanding Dependencies**: Provides insights into the technology stack which can be useful in identifying potential vulnerabilities related to specific technologies.

- **Gathering Information**: Helps in gathering detailed information about the technologies in use, which can be useful for both attackers and defenders in planning their strategies.

### How to Use Wappalyzer

1. **Install Wappalyzer Browser Extension**: Available for Chrome, Firefox, and Edge.

2. **Visit the Target Website**: Navigate to the website you want to analyze.

3. **View Technologies**: Click on the Wappalyzer icon in your browser's toolbar to see a list of detected technologies.

## What is DNS Enumeration?

DNS enumeration is the process of gathering information about domain names and their associated IP addresses using DNS queries. It helps in discovering:

- **Subdomains**: Identifies subdomains associated with the target domain.

- **IP Addresses**: Maps domain names to their respective IP addresses.

- **DNS Records**: Retrieves various DNS records like A, MX, CNAME, TXT, and NS records.

## How to Enumerate SMTPs Using Command-Line Tools

SMTP enumeration involves discovering and interacting with SMTP servers to gather information. Common command-line tools for SMTP enumeration include:

- **`nmap`**: Can be used to discover SMTP servers and perform banner grabbing.
  ```
  nmap -p 25 --script smtp-enum <target>
  ```
## How Should We Perform OS Fingerprinting?

OS fingerprinting involves determining the operating system of a target machine. It can be performed using:

- Active Fingerprinting: Techniques like sending crafted packets and analyzing responses.
nmap: Use the -O option to detect the OS.
```
nmap -O <target>
```
- Passive Fingerprinting: Analyzing traffic to infer the operating system.
p0f: A tool for passive OS fingerprinting.
```
p0f -i <interface>
```

## What is SQLmap? How to Use It?

SQLmap is an open-source tool used for automating the process of detecting and exploiting SQL injection vulnerabilities. It can also be used to access the underlying database and extract information.

## How to Use SQLmap

**Basic Usage**: To scan a URL for SQL injection vulnerabilities:
```
sqlmap -u "http://example.com/vulnerable.php?id=1"
```
**Advanced Options**: Use additional flags to specify parameters and provide more detailed scanning:
```
sqlmap -u "http://example.com/vulnerable.php?id=1" --risk=3 --level=5 --dump
```
--risk and --level control the intensity of the scan.\
--dump retrieves the contents of the database.

## Tasks

### [0. Are they any opened Port ?](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/0-ports.txt)

1. Connect to the VPN server
2. Get Target Machine -> cyber_netsec_0x02
3. Scan that Machine top ports using nmap.
4. echo "<openport>, <openport>" > 0-ports.txt

### [1. Inspect the runner](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/1-webserver.txt)

Edit /etc/hosts to point active.hbtn domain name to the Target IP.\
sudo bash -c 'echo "<target_ip>    active.hbtn" >> /etc/hosts'\
Inspect the found website.\
Using Wappalyzer, check for webserver name and version\
echo "<webservername> <webserverversion>" > 1-webserver.txt

### [2. Nothing defeat Manual inspection](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/100-flag.txt)

1. Browse active.hbtn
2. Search for the first flag.
3. echo "<FLAG_1>" > 100-flag.txt
Hints:\
Some Developer forgets comments in productions

### [3. Trypanophobia](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/2-injectable.txt)

Search for vulnerable page.\
echo "/<pathname>" > 2-injectable.txt\
Example: http://active.hbtn/orders/1511515\
echo "/orders" > 2-injectable.txt

### [4. SQLmap is an army \o/](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/3-database.txt)

Find the main Database name.\
echo "<database_name>" > 3-database.txt\
Check how many Tables it does contain\
echo "<tables_count>" > 4-tables.txt\
- Hints
You need to use sqlmap\
--dbs to fetch databases names\
-D <database_name> --tables To fetch tables names

### [5. Injections hurt)](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/101-flag.txt)

Search for the second flag.\
echo "<FLAG_2>" > 101-flag.txt\
- Hints:
-D <database_name> --dump to dump the database.\
Check for the Users table\
Flag is exposed clearly in active.hbtn

[2nd file](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/4-tables.txt)

### [6. My NAV doesn't include all my pages](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/5-hidden_dir.txt)

Find the admin panel login page.\
echo "/<pathname>" > 5-hidden_dir.txt\
Hints:\
You need to use gobuster with dir option\
-b 302 to ignore 302 status code.\
-w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt for the wordlist

### [7. It may look the same, but it’s not](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/network_security/0x02_active_reconnaissance/102-flag.txt)

Search for the third flag.\
echo "<FLAG_3>" > 102-flag.txt\
Hints:\
Flag is exposed clearly in active.hbtn at Admin panel
