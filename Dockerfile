FROM registry.access.redhat.com/ubi9/ubi-micro:9.4-13

LABEL name="Simple demo image"
LABEL description="A container image for a demo"
LABEL com.redhat.component="multiarch-demo"
LABEL io.k8s.description="A container image for a demo"
LABEL io.k8s.display-name="Multiarch demo image"

COPY LICENSE /licenses/

RUN \
  echo echo "\"hello! I do nothing\"" > /entrypoint.sh && \
  chmod +x /entrypoint.sh

USER 65532:65532
ENTRYPOINT /entrypoint.sh
