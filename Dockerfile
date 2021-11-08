FROM node:14 AS build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./

ENV OIDC_ISSUER=https://dev-hvw40i79.auth0.com
ENV OIDC_CLIENT_ID=5m4i3ZD9M3NqX4qQsB0nsBmCXb6OXBN2
ENV OIDC_REDIRECT_URI=https://darrelopry.com/svelte-oidc
ENV OIDC_POST_LOGOUT_REDIRECT_URI=https://darrelopry.com/svelte-oidc

RUN npm run build

FROM nginx:1.19-alpine
COPY --from=build /app/public /usr/share/nginx/html

ENV OIDC_ISSUER=https://dev-hvw40i79.auth0.com
ENV OIDC_CLIENT_ID=5m4i3ZD9M3NqX4qQsB0nsBmCXb6OXBN2
ENV OIDC_REDIRECT_URI=https://darrelopry.com/svelte-oidc
ENV OIDC_POST_LOGOUT_REDIRECT_URI=https://darrelopry.com/svelte-oidc
