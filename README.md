### Image build

```
VERSION=latest
CNI_VERSION=v1.0.1
FLANNEL_CNI_VERSION=v1.0.0

buildah build \
  --build-arg CNI_VERSION=$CNI_VERSION \
  --build-arg FLANNEL_CNI_VERSION=$FLANNEL_CNI_VERSION \
  -f Dockerfile \
  -t ghcr.io/randomcoww/cni-plugins:$VERSION

buildah push ghcr.io/randomcoww/cni-plugins:$VERSION
```