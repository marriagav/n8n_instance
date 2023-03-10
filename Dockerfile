FROM n8nio/n8n

ARG PGPASSWORD
ARG PGHOST
ARG PGPORT
ARG PGDATABASE
ARG PGUSER
ARG DOMAIN_NAME

ARG USERNAME
ARG PASSWORD

ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_DATABASE=$PGDATABASE
ENV DB_POSTGRESDB_HOST=$PGHOST
ENV DB_POSTGRESDB_PORT=$PGPORT
ENV DB_POSTGRESDB_USER=$PGUSER
ENV DB_POSTGRESDB_PASSWORD=$PGPASSWORD

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=$USERNAME
ENV N8N_BASIC_AUTH_PASSWORD=$PASSWORD

ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_SMTP_SSL=false
ENV N8N_HOST=$DOMAIN_NAME
ENV NODE_ENV=$NODE_ENV
ENV N8N_EMAIL_MODE=smtp
ENV N8N_SMTP_HOST=$SMTP_HOST
ENV N8N_SMTP_PORT=$SMTP_PORT
ENV N8N_SMTP_USER=$SMTP_USER
ENV N8N_SMTP_PASS=$SMTP_PASS
ENV N8N_SMTP_SENDER=$SMTP_SENDER
ENV N8N_EDITOR_BASE_URL=https://${DOMAIN_NAME}/
ENV WEBHOOK_URL=https://${DOMAIN_NAME}/
ENV WEBHOOK_TUNNEL_URL=https://${DOMAIN_NAME}/

CMD ["n8n", "start"]

