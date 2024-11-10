## Create a new user

```sh
sudo adduser edu
```

With this command, it will be created an user and a group called "edu" and a folder into /home/ called "/home/edu/"

## Create a new user changing the default values

```sh
sudo adduser --shell /bin/othershell --home /home/anotherdirectory/ edu
```

## Create a system user

Create a system user without creating a home folder.

```sh
sudo adduser --system --no-create-home sysaccount
```


## Change password

```sh
sudo passwd edu
```

## Change the home folder for an user

```sh
sudo usermod --home /home/otherdir/ --move-home edu
# or
sudo usermod -d /home/otherdir/ -m edu
```

Chage the home dir for the user.


## Change the login name

```sh
sudo usermod --login eduardo edu
# or
sudo usermod -l eduardo edu
```

## Disable an user

Disabling the userlogin without deleting the user.

```sh
sudo usermod --lock edu
```
## Adding a change password rule

The command will force the user change its password after 30 days.

```sh
sudo chage --maxdays 30 edu
```

## Show warning message

Before two days to expires, the system will warning the user to change theirs password.

```sh
sudo chage -W 2 edu
```
