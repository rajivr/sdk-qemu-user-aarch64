# sdk-qemu-user-aarch64

To build docker image

```
$ cd sdk-qemu-aarch64/

$ docker build --squash \
   -t viryaos/sdk-qemu-user-aarch64:<VERSION>-<SHORT_SHA>-x86_64 .
```

(Target arch is x64\_64)

`<SHORT_SHA>` can be obtained using,

```
(inside sdk-qemu-aarch64 directory)

$ git rev-parse --short HEAD
```
