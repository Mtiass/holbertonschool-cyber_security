# OWASP TOP 10

### What is it?

The OWASP Top 10 is a standard awareness document for developers and web application security.\
It represents a broad consensus about the most critical security risks to web applications1.

### Why is injection dangerous?

Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent to an interpreter as part of a command or query.\
The attacker’s hostile data can trick the interpreter into executing unintended commands or accessing data without proper authorization1.

### How does XSS affect web applications?

Cross-Site Scripting (XSS) flaws occur whenever an application includes untrusted data in a new web page without proper validation or escaping,\
or updates an existing web page with user-supplied data using a browser API that can create HTML or JavaScript.\
XSS allows attackers to execute scripts in the victim’s browser, which can hijack user sessions, deface websites, or redirect the user to malicious sites1.

### What is the risk of broken authentication?

Broken authentication and session management can allow attackers to compromise passwords, keys, or session tokens,\
or to exploit other implementation flaws to assume other users’ identities temporarily or permanently1.

### Can you explain sensitive data exposure?

Sensitive data exposure occurs when applications do not adequately protect sensitive information such as financial data,\
healthcare information, or personally identifiable information (PII). Attackers may steal or modify such weakly protected data to conduct fraud,\
identity theft, or other crimes1.

### Security misconfiguration.

Security misconfiguration is the most commonly seen issue. It often results from insecure default configurations,\
incomplete or ad hoc configurations, open cloud storage, misconfigured HTTP headers, and verbose error messages containing sensitive information1.

### What is XML External Entity (XXE)?

XXE vulnerabilities occur when older or poorly configured XML processors evaluate external entity references within XML documents.\
These can be used to disclose internal files, perform internal port scanning, execute remote code, and launch denial of service attacks1.

### How do broken access controls impact security?

Broken access controls allow attackers to bypass authorization and perform tasks as if they were privileged users.\
This can lead to unauthorized access to sensitive data, modification of user data, or changes to access rights1.

### What are common web application security flaws?

Common web application security flaws include injection, broken authentication, sensitive data exposure, XML External Entities (XXE),\
broken access control, security misconfiguration, cross-site scripting (XSS), insecure deserialization,\
using components with known vulnerabilities, and insufficient logging and monitoring1.

### How to prevent Insecure Deserialization?

Insecure deserialization often leads to remote code execution. To prevent it, ensure that only trusted data is deserialized, use integrity checks such as digital signatures, and monitor deserialization activities1.

### What is the use of security logging and monitoring?

Security logging and monitoring are crucial for detecting and responding to security breaches.\
Insufficient logging and monitoring can allow attackers to further attack systems, maintain persistence, pivot to more systems,\
and tamper, extract, or destroy data1.

### Explain the risks of using components with known vulnerabilities.

Using components with known vulnerabilities can compromise the entire application. These vulnerabilities can be exploited to perform a wide range of attacks,\
including data breaches, system takeovers, and more1.

### How can using APIs increase security risks?

APIs can increase security risks if they are not properly secured. They can expose endpoints that attackers can exploit, leading to data breaches,\
unauthorized access, and other security issues1.
