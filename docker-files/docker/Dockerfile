FROM remote-host

RUN yum update -y


RUN yum install -y yum-utils && \
    yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

RUN yum install -y docker-ce docker-ce-cli containerd.io
    
RUN usermod -aG docker remote_user

RUN groupmod -g 974 docker

