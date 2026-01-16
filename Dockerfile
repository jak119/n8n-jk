FROM docker.n8n.io/n8nio/n8n

LABEL org.opencontainers.image.title="n8n" \
  org.opencontainers.image.description="Custom N8N image with additional PDF packages" \
  org.opencontainers.image.url="https://github.com/jak119/n8n-jk" \
  org.opencontainers.image.source="https://github.com/jak119/n8n-jk" \
  org.opencontainers.image.documentation="https://github.com/jak119/n8n-jk" 

USER root
# Install in n8n's local node_modules, not globally
RUN cd /usr/local/lib/node_modules/n8n && \
    npm install pdf-lib @visaright/pdf-lib && \
    npm cache clean --force
USER node
