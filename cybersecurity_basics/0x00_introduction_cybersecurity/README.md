# Introduction to Cybersecurity Project

## Learning Objectives

#### What is Cybersecurity?

- Cybersecurity involves protecting computer systems and networks from digital attacks, theft, and damage./
  It encompasses a range of practices and technologies designed to safeguard data and systems.

#### What are the Core Principles of Cybersecurity? (CIA Triad)

- Confidentiality: Ensuring that information is accessible only to those authorized to have access.
- Integrity: Ensuring the accuracy and completeness of data.
- Availability: Ensuring that information and resources are available to authorized users when needed.

#### How Does Encryption Contribute to Security?

Encryption converts data into a code to prevent unauthorized access. It ensures that even if data is intercepted, it cannot be read without the proper decryption key.

#### What is Risk Management in Cybersecurity?

Risk management involves identifying, assessing, and mitigating risks to protect information systems from potential threats and vulnerabilities.

#### What are the Different Types of Cybersecurity Threats?

Common threats include malware, phishing, ransomware, denial-of-service (DoS) attacks, and insider threats.

#### What is the Difference Between a Virus and a Worm?

- Virus: A virus attaches itself to a legitimate program and spreads to other programs and files when the infected program runs.
- Worm: A worm is a standalone malware that replicates itself to spread to other systems without needing to attach to a program.

#### What is Social Engineering in the Context of Security?

Social engineering involves manipulating individuals into divulging confidential information or performing actions that compromise security, often through psychological manipulation.

#### What are the Key Components of an Information Security Program?

Key components include policies and procedures, risk management, access control, incident response, and continuous monitoring.

#### How Do Security Policies and Frameworks Contribute to an Organization’s Security Posture?

Security policies and frameworks provide structured guidelines and best practices to help organizations manage security risks and ensure compliance with regulations.

#### What is the Purpose of the OWASP Top Ten?

The OWASP Top Ten is a list of the most critical web application security risks. It helps organizations understand and address common vulnerabilities.

#### What is the Role of Access Control in Cybersecurity?

Access control mechanisms ensure that only authorized individuals can access specific resources and data, reducing the risk of unauthorized access and data breaches.

#### How Does Multi-Factor Authentication Enhance Security?

Multi-factor authentication (MFA) requires users to provide two or more verification factors to gain access, adding an extra layer of security beyond just a password.

#### What are the Common Methods for Securing a Network?

Common methods include using firewalls, intrusion detection systems (IDS), encryption, network segmentation, and regular security updates.

## Tasks and Explanations

[0. Did you install kali ?](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/cybersecurity_basics/0x00_introduction_cybersecurity/0-release.sh)

Write a bash script that display the distributor ID in a concise single-line output.
```
#!/bin/bash
lsb_release -is
```
lsb_release -is: This command is used to display the distributor ID of the Linux distribution.\
-i: Displays the distributor ID (e.g., Ubuntu, Debian).\
-s: Outputs the information in a concise, single-line format without additional text.

[1. Strong Password Generation](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/cybersecurity_basics/0x00_introduction_cybersecurity/1-gen_password.sh)

Task: Create a Bash script that generates a strong random password.

Requirements:

Script should be less than 3 lines long.\
Accept password length as an argument.\
Use /dev/urandom for randomness.\
Use [:alnum:] as character classes.
```
#!/bin/bash
< /dev/urandom tr -dc '[:alnum:]' | head -c "$1"
```
< /dev/urandom reads random data from /dev/urandom.
tr -dc '[:alnum:]' filters the data \to include only alphanumeric characters.\
head -c "$1" limits the output to the length specified by the argument $1, providing a password of the\
desired length.

[2. Verify the integrity of a filemandatory](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/cybersecurity_basics/0x00_introduction_cybersecurity/2-sha256_validator.sh)

Create a Bash script that validate the integrity of a file.
```
#!/bin/bash
echo "$2 $1" | sha256sum -c -
```
echo "$2 $1" constructs a string with the filename $1 and its expected hash $2.\
sha256sum -c - verifies the file against the given hash. The -c option checks the file's hash against the\
provided hash value, indicating whether the file's integrity is intact.

[3. We need an SSH key pair!](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/cybersecurity_basics/0x00_introduction_cybersecurity/3-gen_key.sh)

Create a Bash script that generates an RSA SSH key pair.

Your key size should be 4096\
You Should Use Open-ssh
```
#!/bin/bash
ssh-keygen -t rsa -b 4096 -f "$1" -N ""
```
ssh-keygen -t rsa -b 4096 -f "$1" -N "" generates a new RSA key pair with a key size of 4096 bits.\
-t rsa specifies the key type.\
-b 4096 sets the key size to 4096 bits.\
-f "$1" specifies the output file name for the key pair.\
-N "" sets an empty passphrase for the key.

[4. Let's Monitor root activity](https://github.com/Mtiass/holbertonschool-cyber_security/blob/main/cybersecurity_basics/0x00_introduction_cybersecurity/4-root_process.sh)

Create a Bash script that monitors all processes started by specified user.

Your script should accept user as 1st agrs.\
Your script should use grep -v to to exclude processes with VSZ and RSS values of 0\
You Should Use ps command
```
#!/bin/bash
ps aux | grep "$1" | grep -v "vsz" | grep -v "rss"
```
ps aux lists all processes with detailed information.\
grep "$1" filters the output to include only lines containing the username specified by the argument $1.\
grep -v "vsz" and grep -v "rss" remove lines containing the strings "vsz" and "rss", which correspond to the headers in the ps output, thus excluding the header row from the process listing.
