# Virtual Machine & Host vscode configuration


## 1. Prerequisites
```bash
# VM: need ssh-server (debian/ubuntu)
sudo apt-get install openssh-server
sudo systemctl restart sshd.service
```

## 2. Add host pubkey to VM whitelist
```bash
# Host: copy pubkey
C:\Users\USER\.ssh\id_rsa.pub

# VM: paste to list
vim ~/.ssh/authorized_keys
```

## 3. Connect to ssh
```bash
# VM: see the 'ens33' entry
ip address

# Host: use vscode remote ssh plugin
ssh USER@ADDR
```
