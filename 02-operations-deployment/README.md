##  56 list and identify SELinux file and process context

> $ ls -l

Show the permissions from files. But only allow rwx for user,groups and other its not fit well for modern systems.

## Security Enhanced Linux (SELinux)

Its enables by default on RedHat SOs. Its based on policies, like aws policies.


### Show the SELinux Context for files:

> $ ls -Z

> unconfined_u:object_r:user_home_t:s0

Output format:

> user:role:type:level

1. user -> Its no t the same user that you login. It's the SELinux User
2. role
3. type: Type enforcement. It's like a protective software jail.
4: level: Exemple military access level from zero to four. Which four is top secret.


### How its work

1. Only certain users can enter certain roles and certain types.
2. It lets authorized user and process do their job, by granting the permissions they need.
3. Authorized users and processes are allowed to take only a limited set of actions.

### User unconfined

Can run anything

### Login

When we logged in the SO, our user is mapped to a SELinux user.

Print the security context of the process:

> $ id -Z

Show the mapping betweem linux users and SELinux confined users:

> $ sudo semanage login -l

List all SELinux users:

> $ sudo semanage user -l


## Check if the SELinux is enforcing the rules

> $ getenforce

This command could produce 3 outputs:

1. Enforce: The System is enforcing the policies.
2. Permissive: The system is logging and just whatching the policies.
3. Disabled: Even the logs are disabled;


## Change the SELinux Mode

> $ sudo setenforce (0|1)

0 - Permissive
1 - Enforce


## Change the context

Lets change the context for a file:

> $ sudo chcon -u unconfined_u /var/log/auth.log

> $ sudo chcon -r object_r /var/log/auth.log

> $ sudo chcon -t user_home_t /var/log/auth.log

Change all the permissions on user, role and type (domain).

## Generate Module with current permissions

> $ sudo audit2allow --all -M my_module_name

This command will produce 2 files:

- my_module_name.pp
- my_module_name.te

The `.te` file is like an OPA `.rego`file.


```
allow unconfined_t self:process execheap;
```
