### Image build

```
VERSION=latest
CNI_VERSION=v1.0.1
FLANNEL_CNI_VERSION=v1.0.0
TAG=ghcr.io/randomcoww/cni-plugins:$VERSION

buildah build \
  --build-arg CNI_VERSION=$CNI_VERSION \
  --build-arg FLANNEL_CNI_VERSION=$FLANNEL_CNI_VERSION \
  -f Dockerfile \
  -t localtemp

container=$(buildah from localtemp)
buildah run --net=none $container -- rm /etc/hosts
buildah commit $container $TAG

buildah push $TAG
```