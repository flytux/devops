FROM centos:7

RUN echo -e "\n[trivy]\nname=Trivy repository\nbaseurl=https://aquasecurity.github.io/trivy-repo/rpm/releases/\$releasever/\$basearch/\ngpgcheck=0\nenabled=1" | tee -a /etc/yum.repos.d/kubernetes.repo

RUN yum -y update && yum -y install trivy
