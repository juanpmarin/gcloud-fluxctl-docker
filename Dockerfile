# alpine based
FROM google/cloud-sdk:272.0.0

LABEL maintainer="Juan Marín"

ENV FLUX_LATEST_VERSION="1.16.0"

# Get Flux Client
RUN curl -L -sS https://github.com/weaveworks/flux/releases/download/${FLUX_LATEST_VERSION}/fluxctl_linux_amd64 -o /usr/local/bin/fluxctl \
 && chmod +x /usr/local/bin/fluxctl

ENV SENTRY_CLI_LATEST_VERSION="1.49.0"

# Get Sentry CLI
RUN curl -L -sS https://downloads.sentry-cdn.com/sentry-cli/${SENTRY_CLI_LATEST_VERSION}/sentry-cli-Linux-x86_64 -o /usr/local/bin/sentry-cli \
 && chmod +x /usr/local/bin/sentry-cli

WORKDIR /root

