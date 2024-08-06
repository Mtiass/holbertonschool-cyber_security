# Linux Security Basics

Linux is a widely used, open-source operating system renowned for its robustness and flexibility. It is utilized in various environments, from servers and desktops to embedded systems. Is an open-source operating system kernel that serves as the core component of various distributions (distros), such as Ubuntu, CentOS, and Fedora. It provides the foundation for running applications and managing hardware resources.

What is a Linux Command?
A Linux command is a text-based instruction used to perform various tasks within the Linux operating system. Commands are entered into a terminal or command-line interface (CLI) and are used for managing files, processes, system settings, and more.

Structure of the Linux Operating System
The Linux operating system is structured in a hierarchical file system with a clear directory hierarchy. Key components include:

- Kernel: The core of the operating system that manages hardware and system resources.
- Shell: The command-line interface through which users interact with the system.
- File System: Organized directories and files where the operating system, applications, and user data reside.

The Filesystem Hierarchy Standard (FHS) defines the directory structure and directory contents in Linux systems. It provides a consistent and predictable file system layout across different Linux distributions. The benefits of using FHS include:

- Consistency: Ensures that files and directories are located in standard locations.

- Interoperability: Simplifies the process of managing and developing software across different Linux distributions.

- Ease of Use: Helps users and administrators navigate and manage the system more efficiently.

Key Directories in the Linux File System:
- /root: The top-level directory containing all other directories and files.

- /bin: Essential command binaries required for system boot and basic operations.

- /boot: Contains boot loader files and kernel images.

- /dev: Contains device files representing hardware devices.

- /etc: Configuration files and system-wide settings.

- /home: User home directories for personal files and settings.

- /lib: Shared libraries needed by system binaries.

- /media: Mount points for removable media.

- /mnt: Temporary mount points for file systems.

- /opt: Optional application software packages.

- /proc: Virtual files representing kernel and process information.

- /root: Home directory for the root user.

- /sbin: System binaries used for system administration.

- /srv: Data for services provided by the system.

- /tmp: Temporary files created by applications.

- /usr: User programs and data, including application binaries and libraries.

- /var: Variable data, such as logs and spool files.


### How to Protect Files and Directories

Permissions: Use chmod to set appropriate read, write, and execute permissions.

Ownership: Use chown to change file ownership and chgrp to change group ownership.

Encryption: Use tools like gpg for file encryption.

Access Control Lists (ACLs): Use setfacl to provide more granular permissions.

### How to Monitor and Investigate System Activity

Logs: Review log files in /var/log/ using tools like tail, grep, and less.

Process Monitoring: Use commands like top, htop, and ps to monitor running processes.

System Performance: Check system performance using vmstat, iostat, and sar.

## How to Securely Transfer Files and Data:

SSH: Use scp and sftp for secure file transfers over SSH.

Encryption: Use gpg or openssl to encrypt files before transferring.

Integrity: Verify file integrity using checksums with md5sum or sha256sum.

## How to Configure and Manage a Firewall

iptables: Use iptables for setting up and managing firewall rules. Example:
```
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```

ufw: Use ufw (Uncomplicated Firewall) for a simpler interface. Example:
```
ufw allow 22/tcp
```

## How to Identify and Terminate Malicious Processes

Identify: Use ps, top, and htop to view running processes.

Terminate: Use kill or killall to terminate processes by their PID or name. Example:
```
kill -9 <PID>
```

### Working with Commands

Using ps and kill
Identify: ps aux lists all processes with details.
Terminate: kill <PID> sends a signal to terminate a process.

Using netstat and ss
Monitor Network Traffic: netstat -tuln shows active connections and listening ports.
Advanced Monitoring: ss -tuln provides similar information with more options.

Using nmap, lynis, and tcpdump
nmap: Scans for open ports and services. Example:
```
nmap -sS -p 1-65535 <IP>
```

lynis: Performs a security audit on the system. Run lynis audit system to start.

tcpdump: Captures and analyzes network traffic. Example:
```
tcpdump -i eth0
```

Using iptables and ufw

iptables: Add rules to manage network traffic. Example:
```
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
```
ufw: Manage firewall rules easily. Example:
```
ufw deny 23/tcp
```
