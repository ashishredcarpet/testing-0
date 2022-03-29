#!/bin/bash
echo "#!/bin/bash"
E="|"
echo curl -sfL https://get.k3s.io ${E} K3S_URL=https://$(curl http://169.254.169.254/latest/meta-data/public-ipv4):6443  K3S_TOKEN=$(cat /var/lib/rancher/k3s/server/node-token) K3S_NODE_NAME=worker sh -