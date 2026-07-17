# Yasmin Al-Hob

## 💕 Yasmin Al-Hob — النسخة الثالثة

منصة ياسمين الحب الاجتماعية — شبكة تواصل مع منشورات ومحادثات فورية.

## 🚀 Quick Start

```bash
npm install
npx prisma generate
npm run dev
```

## 📁 Structure

```
├── components/       # React components
├── pages/           # Next.js pages
├── api/             # API routes
├── prisma/          # Database schema
└── public/          # Static assets
```

## 🔐 Environment

Copy `.env.example` to `.env` and fill in your values.

## 🐳 Docker

```bash
docker build -t yasmin-al-hob .
docker run -p 3005:3005 yasmin-al-hob
```

## 📊 Health

```bash
curl http://localhost:3005/api/health
```
