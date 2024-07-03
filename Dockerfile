# use the official Bun image
# see all versions at https://hub.docker.com/r/oven/bun/tags
FROM oven/bun:1 AS base
WORKDIR /usr/src/app

COPY . .
RUN bun install
RUN bun run build

# run the app
EXPOSE 3000
ENTRYPOINT [ "bun", "run", "build/index.js" ]