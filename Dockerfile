FROM busybox:latest

ARG VERSION

WORKDIR /cni
ADD https://github.com/containernetworking/plugins/releases/download/$VERSION/cni-plugins-linux-amd64-$VERSION.tgz cni-plugins.tgz

ENTRYPOINT ["tar", "xvzf", "cni-plugins.tgz", "-C", "/opt/cni/bin"]
