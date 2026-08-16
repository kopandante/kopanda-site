# Визитка kopanda.ru на Astro. Сборка и отдача через bun (astro preview), без nginx.
FROM oven/bun:1-alpine

WORKDIR /app

COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile

COPY . .
RUN bun run build

EXPOSE 4321
CMD ["bun", "run", "preview", "--", "--host", "0.0.0.0", "--port", "4321"]
