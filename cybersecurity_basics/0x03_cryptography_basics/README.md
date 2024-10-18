# Cryptography in Cybersecurity

This repository contains information about cryptography in cybersecurity,/
including encryption, decryption, hash algorithms, and password-cracking/
tools like John the Ripper and Hashcat.

## What is Cryptography?

Cryptography is the practice and study of techniques for secure communication in the presence of adversaries./
It involves transforming plaintext (readable text) into ciphertext (unreadable text) using mathematical/
algorithms and then reversing this process to retrieve the original message.

### Types of Cryptography

There are several types of cryptography:

- Symmetric cryptography: Uses the same secret key for both encryption and decryption

- Asymmetric cryptography: Uses a pair of keys - one public and one private

- Quantum cryptography: Uses quantum mechanics principles for secure communication

### Encryption and Decryption

Encryption is the process of converting plaintext into ciphertext, while decryption\
is the reverse process of converting ciphertext back into plaintext.

## Importance of Cryptography

Cryptography plays a crucial role in cybersecurity by:

- Protecting sensitive information
- Ensuring secure communication
- Preventing unauthorized access to data
- Maintaining confidentiality and integrity of digital assets

## Applications of Cryptography

Cryptography has numerous applications in various fields:

- Secure messaging apps
- Online banking and financial transactions
- Data protection in cloud storage
- Digital signatures for document verification
- Password hashing and authentication systems

## Hash Algorithms

Hash algorithms are one-way functions that take input data of any size and produce a fixed-size output hash value.

### What SHA Stands For

SHA stands for Secure Hash Algorithm. It's a widely used cryptographic hash function developed by the U.S.\
National Security Agency (NSA).

## John the Ripper

John the Ripper is a popular password-cracking tool designed to recover lost passwords from various\
types of encrypted files.

## How to Use John the Ripper

To use John the Ripper run John the Ripper with the following command:
```
john filename
```
Enter the password when prompted

### Cracking Advanced Hashes with John the Ripper

To crack advanced hashes:

- Use wordlists for brute-force attacks
- Utilize rules to generate variations of words
- Combine multiple techniques for increased efficiency

## Hashcat

Hashcat is another powerful password-cracking tool that supports a wide range of hash formats.

How to Use Hashcat
- Navigate to the directory containing the encrypted file
- Run Hashcat with the following command:
```
hashcat -a 0 -m 1000 input.txt output.txt
```
Adjust parameters as needed for your specific use case.
