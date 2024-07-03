# use the official Bun image
# see all versions at https://hub.docker.com/r/oven/bun/tags
FROM oven/bun:1 AS base
WORKDIR /usr/src/app

COPY . .
RUN bun install
RUN bun run build

ENV NODE_ENV production

# run the app
EXPOSE 3000
ENTRYPOINT [ "bun", "start" ]