# alpine based
FROM google/cloud-sdk:287.0.0

LABEL maintainer="Juan Marín"

ENV FLUX_LATEST_VERSION="1.19.0"

# Get Flux Client
RUN curl -L -sS https://github.com/weaveworks/flux/releases/download/${FLUX_LATEST_VERSION}/fluxctl_linux_amd64 -o /usr/local/bin/fluxctl \
 && chmod +x /usr/local/bin/fluxctl

WORKDIR /root
