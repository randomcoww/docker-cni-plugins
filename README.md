### Image build

```
mkdir -p build
export TMPDIR=$(pwd)/build

VERSION=v1.0.1

podman build \
  --build-arg VERSION=$VERSION \
  -f Dockerfile \
  -t ghcr.io/randomcoww/cni-plugins:$VERSION
```

```
podman push ghcr.io/randomcoww/cni-plugins:$VERSION
```