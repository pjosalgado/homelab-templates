# Install K3s

## Pre-requisites for all machines

### Edit /boot/cmdline.txt and put on the end
```
cgroup_memory=1 cgroup_enable=memory
```

### Configure iptables
```
sudo iptables -F \
    && sudo update-alternatives --set iptables /usr/sbin/iptables-legacy \
    && sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy \
    && sudo reboot
```

# Master installation

### Install K3s on master
```
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -s -
```

# Node installation

### Get node token on master
```
sudo cat /var/lib/rancher/k3s/server/node-token
```

### Install K3s on nodes
```
curl -sfL https://get.k3s.io | K3S_TOKEN="YOURTOKEN" K3S_URL="https://[your server]:6443" K3S_NODE_NAME="servername" sh -
```

# Client configuration

### Get kubectl configuration file
```
cat /etc/rancher/k3s/k3s.yaml
```
