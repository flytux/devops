FROM ubuntu:bionic

RUN apt-get update && apt-get install -y curl net-tools iproute2 dnsutils iputils-ping openssh-server zsh git vim tmux jq netcat net-tools gnupg apt-transport-https lsb-release openjdk-11-jdk maven 

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

COPY .zshrc /root

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
RUN curl -LO https://github.com/tektoncd/cli/releases/download/v0.18.0/tkn_0.18.0_Linux_x86_64.tar.gz
RUN tar xvzf tkn_0.18.0_Linux_x86_64.tar.gz -C /usr/local/bin/ tkn && rm tkn_0.18.0_Linux_x86_64.tar.gz
RUN curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/v2.0.1/argocd-linux-amd64
RUN chmod +x /usr/local/bin/argocd

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list

RUN apt-get update && apt-get -y install docker-ce-cli kubectl

RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN echo 'root:1' | chpasswd

COPY entrypoint.sh /entrypoint.sh 
RUN chmod 755 /entrypoint.sh   
ENTRYPOINT ["/entrypoint.sh"]
