FROM busybox:latest

ENV CNI_VERSION v0.7.5

WORKDIR /cni
ADD https://github.com/containernetworking/plugins/releases/download/$CNI_VERSION/cni-plugins-amd64-$CNI_VERSION.tgz cni-plugins.tgz
VOLUME /opt/cni/bin

ENTRYPOINT ["tar", "xvzf", "cni-plugins.tgz", "-C", "/opt/cni/bin"]
