FROM docker.n8n.io/n8nio/n8n
USER root
RUN npm install -g pdf-lib @visaright/pdf-lib && npm cache clean --force
USER node
