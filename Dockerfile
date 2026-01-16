# FROM docker.n8n.io/n8nio/n8n
FROM ghcr.io/n8n-io/n8n:2.3.0

LABEL org.opencontainers.image.title="n8n" \
  org.opencontainers.image.description="Custom N8N image with additional PDF packages" \
  org.opencontainers.image.url="https://github.com/jak119/n8n-jk" \
  org.opencontainers.image.source="https://github.com/jak119/n8n-jk" \
  org.opencontainers.image.documentation="https://github.com/jak119/n8n-jk" 

USER root

RUN npm install -g pdf-lib@1.17.1 @visaright/pdf-lib@1.17.2 && \
  npm cache clean --force

USER node
