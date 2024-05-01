FROM node:lts-alpine3.18

WORKDIR /usr/src/app

COPY project-1/web/package.json /app

COPY project-1/web/. .

RUN ls -l

RUN npm set progress=false && npm install

ENV VITE_HOST=0.0.0.0
ENV VITE_PORT=5173

EXPOSE 5173

CMD ["npm", "run","dev"]