FROM busybox:latest

ARG CNI_VERSION
ARG FLANNEL_CNI_VERSION

RUN set -x \
  \
  && mkdir -p /src \
  && cd /src \
  && wget -O flannel \
    https://github.com/flannel-io/cni-plugin/releases/download/$FLANNEL_CNI_VERSION/flannel-amd64 \
  && chmod +x flannel \
  \
  && wget -O cni-plugins.tgz \
    https://github.com/containernetworking/plugins/releases/download/$CNI_VERSION/cni-plugins-linux-amd64-$CNI_VERSION.tgz \
  \
  && mkdir -p cni-plugins/ \
  && tar xzf cni-plugins.tgz -C cni-plugins/ \
  && mv flannel cni-plugins/ \
  && cd cni-plugins \
  && tar czf /cni-plugins.tgz . \
  && rm -rf /src