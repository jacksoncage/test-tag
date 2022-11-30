FROM ubuntu
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install chrome dependencies
RUN apt-get update && apt-get install -yq dumb-init \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["sh "]
