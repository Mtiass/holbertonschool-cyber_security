# Mandatory access control

## What is MAC in Linux?

Mandatory Access Control (MAC) is a security model that restricts the ability of users to access or modify resources based on predefined policies. Unlike discretionary access control (DAC), where the owner of a resource decides who can access it, MAC enforces policies that cannot be altered by users.

### How does SELinux enforce MAC?

SELinux (Security-Enhanced Linux) enforces MAC by using security policies that define how processes and users can interact with files, devices, and other system resources. It operates on the principle of least privilege, restricting access based on user roles and the sensitivity of data.

### Differences between SELinux and AppArmor

- Policy Model: SELinux uses a complex, label-based policy model with fine-grained control (Type Enforcement, Role-Based Access Control), while AppArmor uses path-based profiles that define access permissions based on executable files.
- Configuration: SELinux requires more configuration and understanding of policies, whereas AppArmor is generally considered simpler to set up and manage.
- Flexibility: SELinux provides more flexibility and granularity in defining access controls, while AppArmor focuses on ease of use.

### Purpose of Policy in MAC Systems

Policies in MAC systems define the rules and constraints for access to resources. They specify what actions are allowed or denied, ensuring that even users with administrative privileges cannot override the security settings.

### How do labels work in SELinux?

In SELinux, every process and resource (like files) has a label associated with it, consisting of a user, role, type, and level. The type is the most critical for access decisions, determining which processes can access which resources based on the defined policy.

###### Type Enforcement, Role-Based Access Control, and Multi-Level Security in SELinux

- Type Enforcement (TE): This mechanism restricts the access rights of processes based on their type, allowing only specified types to interact with each other.

- Role-Based Access Control (RBAC): Users are assigned roles that determine their permissions, providing a way to manage access based on job functions.

- Multi-Level Security (MLS): This feature supports data classification and access based on levels of sensitivity, allowing for fine-grained control over who can access specific data.

### How to check the status of SELinux on a system
You can check the status of SELinux by using the following command:
```
sestatus
or
getenforce
```
### Common SELinux management commands

setenforce : Temporarily change the mode (0 = permissive, 1 = enforcing).
getsebool: Get the status of SELinux boolean variables.
setsebool: Set SELinux boolean variables.
restorecon: Restore default security contexts for files.
semanage: Manage SELinux policy components.

### How to set file contexts in SELinux

You can set file contexts using the chcon command or by defining rules in the policy with the semanage fcontext command followed by restorecon to apply the changes. Example:
```
semanage fcontext -a -t httpd_sys_content_t '/my/custom/path(/.*)?'
restorecon -Rv /my/custom/path
```

### What is an AppArmor profile?

An AppArmor profile is a set of rules that define what resources an application can access and what operations it can perform. Profiles can be in enforce or complain mode, with enforce mode denying unauthorized actions.

### How to reload AppArmor profiles

You can reload AppArmor profiles with the following command:
```
sudo apparmor_parser -r /path/to/profile
```

### Concept of least privilege in MAC

The principle of least privilege dictates that users and processes should have only the permissions necessary to perform their tasks. This minimizes potential damage from accidents or malicious actions.

### How to troubleshoot SELinux issues

- Check Audit Logs: Use ausearch or sealert to identify issues.
- Set to Permissive: Temporarily set SELinux to permissive mode to diagnose issues without enforcing policies.
- Use audit2allow: Convert audit logs to allow rules to fix issues.

### Significance of audit logs in MAC systems

Audit logs are crucial for monitoring and forensic analysis. They record security-relevant events, helping administrators identify unauthorized access attempts and assess compliance with security policies.

### Concept of capabilities in Linux security

Capabilities break down the privileges traditionally held by the root user into distinct units. This allows programs to run with only the necessary privileges, enhancing security.

### How to use semanage

The semanage command is used to manage SELinux policy components, such as file contexts, port contexts, and booleans. Common usages include:

Setting file contexts: semanage fcontext -a -t type '/path'
Listing booleans: semanage boolean -l
Modifying port contexts: semanage port -a -t http_port_t -p tcp 8080
