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

## 4. Q&A
### Q1: host cannot ping to VM, while VM can ping to host ?
1. Reset the VMnet8 network adapter, make sure it uses the *auto-assigned address*;
2. then modify the DHCP settings in *Virtual Web Editor*, and set the maximal rent time (63 days).

### Q2: vscode freezes at "setting vscode server" (wget) ?
delete `~/.vscode-server`, there are path conflicts.
