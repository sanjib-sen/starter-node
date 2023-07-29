# Copyright (c) 2023 Sanjib Kumar Sen <mail@sanjibsen.com>
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM node:alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY dist/* .

CMD ["node", "index.js"]