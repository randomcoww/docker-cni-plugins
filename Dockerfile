FROM busybox:latest

ARG VERSION

ADD https://github.com/containernetworking/plugins/releases/download/$VERSION/cni-plugins-linux-amd64-$VERSION.tgz /cni-plugins.tgz