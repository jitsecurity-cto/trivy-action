FROM ghcr.io/jitsecurity-cto/jit-trivy-control:latest
COPY entrypoint.sh /
RUN apk --no-cache add bash curl npm
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/opt/entrypoint", "/entrypoint.sh"]
