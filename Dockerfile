FROM alpine:edge

ENV CNI_PLUGINS_URL "https://github.com/containernetworking/plugins/releases/download/v0.7.1/cni-plugins-amd64-v0.7.1.tgz"
ENV CNI_BIN_DIR /opt/cni/bin

RUN set -x \
  \
  && mkdir -p $CNI_BIN_DIR \
  \
  && wget -O cni-plugins.tgz \
    $CNI_PLUGINS_URL \
  && tar xzf cni-plugins.tgz -C \
    $CNI_BIN_DIR \
  && rm cni-plugins.tgz