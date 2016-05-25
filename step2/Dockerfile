FROM node

COPY src/ /opt/app/
RUN cd /opt/app && npm install

ENTRYPOINT ["node", "/opt/app/index.js"]

