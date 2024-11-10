## Create a template file

The template its a folder that we can put files that will be added to each new user.

First create a template into the /etc/skel dir:

```sh
echo "Please be careful" >> vi /etc/skel/README
```

Then when we create a new user

```sh
sudo adduser edu
```

The file README will be created automatically.

```sh
sudo ls -a /home/edu
## . .. .bash_logout .bash_rpofile README
```

## Create a bash script to execute after a user login

```sh
sudo vi /etc/profile.d/welcome.sh
```