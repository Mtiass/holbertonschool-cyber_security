# Permissions, SUID & SGID

# User-Based Permission Groups in Linux

In Linux, there are three main user-based permission groups:

- Owner (u): The user who owns the file or directory
- Group (g): The group associated with the file or directory
- Others (o): All other users on the system

### Essential Linux Commands for Permission Management

Several important commands are used for managing file permissions:

*chmod*\
The chmod command is used to change file permissions. It can be used symbolically or numerically:
```
chmod u+x filename
```
# Numerical notation
```
chmod 755 filename
```

*sudo*\
sudo allows users to execute commands with root privileges:
```
sudo chmod 644 sensitive_file.txt
```

*su*\
su switches to another user account:
```
su - username
```

*chown*\
chown changes the owner and group of a file or directory:
```
chown newowner:newgroup filename
```

*chgrp*\
chgrp changes the group ownership of a file or directory:
```
chgrp newgroup filename
```

## Special Permissions in Linux

Linux provides special permissions that can enhance security and functionality:

*setuid (SUID)*\
Set User ID makes an executable run with the privileges of the file's owner.

*setgid (SGID)*\
Set Group ID makes an executable run with the privileges of the file's group.

*Sticky Bit*\
The sticky bit allows only the owner or root to delete files in a directory.

### Difference Between chown and chgrp

chown changes both ownership and group ownership\
chgrp specifically changes the group ownership

# Change owner and group
```
sudo chown newowner:newgroup filename
```
# Change only group
```
sudo chgrp newgroup filename
```

## Best Practices for Managing File Permissions

- Use the principle of least privilege
- Regularly audit file permissions
- Use ACLs (Access Control Lists) for fine-grained control
- Utilize umask to set default permissions for newly created files

## Auditing File Permissions Changes

To audit file permissions changes:

1 - Use the auditctl command to enable auditing\
2 - Set up rules to monitor permission changes\
3 - Review audit logs periodically

## Umask in Linux

Umask sets default permissions for newly created files and directories:
```
umask 022
```
