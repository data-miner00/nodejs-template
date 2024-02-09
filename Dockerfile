FROM node:slim
WORKDIR /app
COPY . .
RUN scripts/install.sh\
    && node-gyp configure\
    && node-gyp build\
    && tsc -p .
EXPOSE 3000
CMD ["node", "./dist/index.js" ]