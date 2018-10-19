FROM busybox:latest

WORKDIR /cni
ADD https://github.com/containernetworking/plugins/releases/download/v0.7.1/cni-plugins-amd64-v0.7.1.tgz cni-plugins.tgz
VOLUME /opt/cni/bin

ENTRYPOINT ["tar", "xvzf", "cni-plugins.tgz", "-C", "/opt/cni/bin"]
