# Yasmin Al-Hob - Production Dockerfile
FROM node:18-alpine AS base

RUN apk add --no-cache libc6-compat curl

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npx prisma generate || true
RUN npm run build

EXPOSE 3005
ENV PORT=3005
ENV NODE_ENV=production

CMD ["npm", "start"]
