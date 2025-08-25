# JDK Debug Image

JDK container image with debug symbols and utils, used for debugging JVM crashes due to native code

This image is built by compiling JDK source code with the following configuration:

```
--with-native-debug-symbols=external \
--with-debug-level=slowdebug \
```

Only JDK 8 is supported now.

This image can be used directly or as base image in Dockerfile.

```sh
docker pull ghcr.io/alexcheng1982/jdk-debug:jdk8u462-b08
```

```dockerfile
FROM ghcr.io/alexcheng1982/jdk-debug:jdk8u462-b08
```