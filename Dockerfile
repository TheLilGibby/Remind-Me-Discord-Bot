FROM node:8.9.4
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
ENV HOST 0.0.0.0
EXPOSE 4000
CMD ["node", "app.js"]
ENV DISCORD_BOT_TOKEN=placeholder
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["node", "app.js"]

