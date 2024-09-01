# Web Fundamentals

## How the Web Works

The web is a system of interconnected documents and resources, linked by hyperlinks and URLs. It operates on a client-server model where:

- **Client**: The device (e.g., computer, smartphone) that requests and displays web content.
- **Server**: The system that hosts the web content and serves it to clients.

When you enter a URL into your browser, the following process typically occurs:

1. **DNS Resolution**: The browser translates the URL into an IP address using the Domain Name System (DNS).

2. **HTTP Request**: The browser sends an HTTP (or HTTPS) request to the server at that IP address.

3. **Server Response**: The server processes the request and sends back the requested resource (e.g., HTML, CSS, JavaScript).

4. **Rendering**: The browser interprets and renders the content to the user.

## Examples of Web Applications

- **Social Media**: Facebook, Twitter, Instagram
- **E-commerce**: Amazon, eBay, Shopify
- **Productivity Tools**: Google Docs, Microsoft Office Online, Trello
- **Streaming Services**: Netflix, YouTube, Spotify

## Web 1.0 vs Web 2.0 vs Web 3.0

- **Web 1.0**: The "static web" where content is static and read-only. It was primarily composed of HTML pages with minimal interactivity.
  
- **Web 2.0**: The "dynamic web" introduced interactivity and user-generated content. Key features include AJAX, social media, and APIs that allow for more dynamic and interactive experiences.
  
- **Web 3.0**: The "semantic web" aims to make web data machine-readable, incorporating technologies like blockchain, decentralized applications (dApps), and advanced AI to provide more personalized and autonomous web experiences.

## Progressive Web Applications (PWA)

**Progressive Web Applications (PWAs)** are web applications that use modern web capabilities to deliver an app-like experience to users. They are designed to work offline, provide push notifications, and load quickly. Key features include:

- **Offline Capabilities**: Service workers cache content for offline use.
- **App-Like Experience**: PWAs offer smooth, native-like interactions and can be installed on devices.
- **Responsive Design**: Works on various devices and screen sizes.

## How Does the Front-End Communicate with the Back-End?

The front-end and back-end communicate primarily through:

- **HTTP Requests**: The front-end sends HTTP requests (GET, POST, PUT, DELETE) to the back-end server to retrieve or send data.
- **APIs**: Application Programming Interfaces (APIs) define the methods and data formats for the communication between the front-end and back-end.
- **AJAX/Fetch**: Technologies like AJAX or the Fetch API enable asynchronous communication, allowing web pages to update dynamically without a full page reload.

## Stateful vs Stateless:

- **Stateful**: Maintains state between requests. The server keeps track of the user's state (e.g., user sessions). Examples include traditional web applications that use cookies or sessions.

- **Stateless**: Each request from a client to a server is independent; the server does not store any state information between requests. HTTP is inherently stateless, and modern REST APIs often follow this model.

## Structured vs Unstructured Data:

- **Structured Data**: Organized and easily searchable within databases. Examples include relational databases (SQL) with predefined schemas (tables, columns).

- **Unstructured Data**: Does not have a predefined format or structure. Examples include text documents, videos, and social media posts. Unstructured data often requires more advanced techniques for processing and analysis.

## Web Application Security Risks

- **Cross-Site Scripting (XSS)**: Malicious scripts are injected into web pages viewed by other users.
- **SQL Injection**: Attacker manipulates a web application's database query to execute malicious SQL code.
- **Cross-Site Request Forgery (CSRF)**: Unauthorized commands are transmitted from a user that the web application trusts.
- **Man-in-the-Middle (MitM)**: Attackers intercept and potentially alter communications between the client and server.
- **Data Breaches**: Unauthorized access to sensitive data due to security flaws or attacks.

## Bug Bounty Programs

**Bug Bounty Programs** are initiatives where organizations reward individuals for finding and reporting bugs or vulnerabilities in their software. Benefits include:

- **Improved Security**: Identifies and fixes vulnerabilities before they can be exploited.
- **Community Involvement**: Leverages the skills of independent security researchers.
- **Financial Incentives**: Offers rewards or bounties for reported issues, encouraging thorough testing and discovery.
