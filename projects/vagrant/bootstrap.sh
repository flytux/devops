#!/bin/bash


echo "[TASK 1] Disable and turn off SWAP"
sed -i '/swap/d' /etc/fstab
swapoff -a

echo "[TASK 2] Stop and Disable firewall"
systemctl disable --now firewalld >/dev/null 2>&1

echo "[TASK 3] Enable and Load Kernel modules"
cat >>/etc/modules-load.d/containerd.conf<<EOF
overlay
br_netfilter
EOF
modprobe overlay
modprobe br_netfilter

echo "[TASK 4] Add Kernel settings"
cat >>/etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
EOF
sysctl --system 

echo "[TASK 5] Install docker-ce, docker-ce-cli, containerd runtime"
yum install -y yum-utils

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum update
yum install -y docker-ce-cli docker-ce containerd 

systemctl start docker
systemctl enable docker

usermod -aG docker vagrant
newgrp docker

echo "[TASK 6] Enable ssh password authentication"
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
systemctl reload sshd

echo "[TASK 7] Set root, vagrant password"
echo -e "1\n1" | passwd root >/dev/null 2>&1
echo -e "1\n1" | passwd vagrant >/dev/null 2>&1

echo "[TASK 8] Update /etc/hosts file"
cat >>/etc/hosts<<EOF
192.168.100.101   kw01
192.168.100.201   kw02
