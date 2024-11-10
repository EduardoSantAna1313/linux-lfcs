## Defining resource limits for users and groups.

```sh
sudo vim /etc/security/limits.conf

<dmain> <type> <intem> <value>
@developers soft nproc 20 # limit the group developers
* soft cpu 5 # for all the users
```

1. Domain

Can be a username, groupname (with @group syntax) or all.

2. Type

- Soft: the user can change their own limits. It cant be greater than the hard limit.

- Hard: The limits set with hard cant be changed.

3. item

An Item could be like : data (max data size), cpu (cpu time in minutes), nproc(number of process)

## Define a limit

```sh
# Create a new user
sudo adduser edu

sudo vi /etc/security/limits.conf

# type the config below into the file
# edu - nproc 3

# login with the user
sudo -iu edu

# Try to run 3 more processes
ls -a | grep bash | less
# Output
# Error message Resource temporary unavailable
```

## Show the limits from current context

```sh
unlimit -a
```

## Change the limits

Change the nprocess with unlimit. By default a user can only lower a value. Only there have a hard and soft limits defined the user can rise theirs limits.

```sh
unlimit -u 5000
```

## Max file size of 4MB

```sh
sudo vi /etc/security/limits.conf
# add new line
# edu hard fsize 4096
```
