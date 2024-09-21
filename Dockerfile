FROM node:22
WORKDIR /usr/src/myapp/
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install
COPY . .
RUN npm run build
CMD ["node", "."]