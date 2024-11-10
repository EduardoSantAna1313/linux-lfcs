## UFD - Uncomplicated Firewall

### Enable

First allow ssh connections then enable ufw.

```sh
sudo ufw allow 22
sudo ufw enable
```

### Check rules

```sh
sudo ufw status numbered
```

### Managing rules

```sh
# Allow inbound traffic from any IP from 10.0.0.0 to 10.0.0.255
sudo ufw allow from 10.0.0.0/24

# Deny inbound traffic from 192.168.0.0 to 192.168.255.255
sudo ufw deny from 192.168.0.10/16

# List rules and its indexes
sudo ufw status numbered

# Remove a rule from index
sudo ufw delete 2

# insert a rule on the top
sudo ufw insert 1 allow 22
```