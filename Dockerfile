FROM viryaos/apkrepo-sdk:v3.7-b3dce3b-aarch64.x86_64 as apkrepo-sdk

FROM busybox:musl

COPY --from=apkrepo-sdk /home/builder/apkrepo/sdk/v3.7/main/x86_64/qemu-aarch64-2.12.1-r0.apk /tmp/qemu-aarch64-2.12.1-r0.tar.gz

RUN \
  cd /tmp && \
  tar zxvf qemu-aarch64-2.12.1-r0.tar.gz && \
  mkdir -p /home/builder/sdk-qemu-user-aarch64 && \
  cp usr/bin/qemu-aarch64 /home/builder/sdk-qemu-user-aarch64 && \
  # cleanup
  rm -rf *
