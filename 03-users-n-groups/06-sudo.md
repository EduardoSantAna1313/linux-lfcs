## Sudoers list

To have a more fine grained control, dont add a user direct to the sudo group.

```sh
# DON'T DO THIS!!!!
sudo gpasswrd -a edu sudo
```

## Editing the sudoers list

```sh
sudo visudo
```

## Allow the user to run any commands with any user

`sudo visudo`
```text
edu     ALL=(ALL)   ALL
```

## Alow only certain process

The user `edu` can only execute `ls` and `stat` with `sudo`.

`sudo visudo`
```text
edu     ALL=(ALL)   /bin/ls, /bin/stat
```

## ALLOW EXECUTE ANY COMMAND WITHOUT PASSWORD

`sudo visudo`
```sh
trinity ALL=(ALL)   NOPASSWD:ALL
```