# Create Dev POD in cluster

---

**1) install nerdctl** 

```bash
$ wget https://github.com/containerd/nerdctl/releases/download/v1.4.0/nerdctl-full-1.4.0-linux-amd64.tar.gz
$ sudo tar Cxzvvf /usr/local nerdctl-full-1.4.0-linux-amd64.tar.gz
$ sudo mkdir /etc/nerdctl
$ cat <<EOF | sudo tee /etc/nerdctl/nerdctl.toml

# This is an example of /etc/nerdctl/nerdctl.toml .
# Unrelated to the daemon's /etc/containerd/config.toml .
debug          = false
debug_full     = false
address        = "unix:///run/k3s/containerd/containerd.sock"
namespace      = "k8s.io"
snapshotter    = "stargz"
cgroup_manager = "cgroupfs"
hosts_dir      = ["/etc/containerd/certs.d", "/etc/docker/certs.d"]
experimental   = true
EOF

```

---

**2) design dev pod**

```bash
- small image - alpine
- zsh
- network tools - curl
- java mvn
- nerdctl
- mc
- kubectl k9s
```
