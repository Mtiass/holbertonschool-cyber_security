# BurpSuite - Fundamentals

### What is Burp Suite?

Burp Suite is a comprehensive platform for performing security testing of web applications.\
It includes various tools that work seamlessly together to support the entire testing process,\
from initial mapping and analysis of an application’s attack surface to finding and exploiting security vulnerabilities.

### How do you set up a proxy in Burp Suite?

- Open Burp Suite and go to the “Proxy” tab.
- Ensure the “Intercept” is turned on.
- Configure your browser to use Burp Suite as a proxy by setting the proxy server to 127.0.0.1 and the port to 8080.
- Install Burp’s CA certificate in your browser to intercept HTTPS traffic.

### What are Burp Suite’s main components?

- Proxy: Intercepts and modifies HTTP/S traffic between your browser and the target application.
- Spider: Automatically crawls the target application to discover content and functionality.
- Scanner: Automatically scans for vulnerabilities.
- Intruder: Performs automated customized attacks.
- Repeater: Manually modifies and reissues individual HTTP requests.
- Sequencer: Analyzes the quality of randomness in an application’s session tokens.
- Decoder: Decodes and encodes data in various formats.
- Comparer: Performs a visual comparison of any two pieces of data.

### How does Spider work in Burp Suite?

The Spider tool automatically crawls the target web application to map out its structure and discover content and functionality.\
It follows links, submits forms, and identifies all the resources that make up the application.

### What is the purpose of Repeater in Burp Suite?

Repeater allows you to manually modify and reissue individual HTTP requests. This is useful for testing how the application responds to different inputs\
and for verifying the presence of vulnerabilities.

### How can Intruder be used for attacks?

Intruder is used to perform automated customized attacks, such as brute force attacks, parameter fuzzing, and enumeration.\
You can configure payload positions and define payload sets to test various inputs systematically.

### What is Burp Scanner and when to use it?

Burp Scanner is an automated vulnerability scanner that identifies security issues in web applications.\
It is used during the security testing process to find common vulnerabilities such as SQL injection, cross-site scripting (XSS), and others.

### How to interpret results from Burp Suite?

Results from Burp Suite can be viewed in the “Issues” tab. Each issue includes a description, severity level, and remediation advice.\
Detailed request and response information is provided to help understand and reproduce the issue.

### What are some common issues that Burp Suite can identify?

- SQL Injection
- Cross-Site Scripting (XSS)
- Cross-Site Request Forgery (CSRF)
- Insecure Direct Object References
- Security Misconfigurations
- Sensitive Data Exposure

### How do you configure Burp Suite for HTTPS traffic?

- Go to the “Proxy” tab and select “Options”.
- Under “Proxy Listeners”, ensure an entry is configured to listen on 127.0.0.1:8080.
- Click “Import / export CA certificate” to export Burp’s CA certificate.
- Import the CA certificate into your browser’s trusted root certificate store.
