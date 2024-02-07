FROM node:slim
WORKDIR /app
COPY . .
RUN scripts/install.sh\
    && tsc -p .
EXPOSE 3000
CMD ["node", "./dist/index.js" ]