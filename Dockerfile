FROM docker.n8n.io/n8nio/n8n
USER root
RUN npm install -g pdf-lib && npm install -g @visaright/pdf-lib
USER node
