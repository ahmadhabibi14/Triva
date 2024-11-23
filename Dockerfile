FROM node:18-slim

WORKDIR /app
COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./
RUN \

  if [ -f yarn.lock ]; then yarn --frozen-lockfile; \
  elif [ -f package-lock.json ]; then npm ci; \
  elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm i; \
  else echo "Lockfile not found." && exit 1; \
  fi
COPY . .
RUN pnpm build

RUN groupadd -g 1001 nodejs
RUN useradd vite -u 1001

USER vite

EXPOSE 3000

CMD ["node", "server.js"]