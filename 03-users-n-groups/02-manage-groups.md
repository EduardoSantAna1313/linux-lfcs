## Groups

Groups are used to manage access across different users.

An user can have more than one group.

When a user runs a program, that program run under that account and group, with the same privilages of account and group.

## Creating a group

With the bellow commands, we can create a group called `developers` and than adding the user `edu`to the group.

```sh
sudo groupadd developers

sudo gpasswd -a edu developers
```

## List the groups owned by a user

```sh
groups edu
```

## Delete and user

```sh
sudo gpasswd -d edu developers
```

## Change groups name

```sh
sudo groupmod -n programmers developers
```


