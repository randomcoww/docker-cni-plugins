FROM busybox:latest

ENV CNI_PLUGINS_URL "https://github.com/containernetworking/plugins/releases/download/v0.7.1/cni-plugins-amd64-v0.7.1.tgz"
WORKDIR /opt/cni/bin

RUN set -x \
  \
  && wget -O cni-plugins.tgz $CNI_PLUGINS_URL \
  && tar xzf cni-plugins.tgz \
  && rm cni-plugins.tgz
