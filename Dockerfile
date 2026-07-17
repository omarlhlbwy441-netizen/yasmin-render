# Yasmin Al-Hob - Production Dockerfile
FROM node:18-alpine AS base

RUN apk add --no-cache libc6-compat

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci --only=production

COPY . .

RUN npx prisma generate
RUN npm run build

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs
RUN chown -R nextjs:nodejs /app/.next

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3005/api/health || exit 1

EXPOSE 3005
ENV PORT=3005
ENV NODE_ENV=production

USER nextjs

CMD ["npm", "start"]
