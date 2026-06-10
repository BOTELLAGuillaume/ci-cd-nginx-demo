# CI/CD Nginx Demo

## 🏗️ Architecture du pipeline

Push/PR → Build → Test → Publish (GHCR) → Approbation → Deploy

## 📋 Étapes du pipeline

| Étape | Description |
|-------|-------------|
| 🔍 Check fichiers | Vérifie la présence des fichiers essentiels |
| 🔒 Scan secrets | Aucun secret ne doit être commité |
| 🐳 Build Docker | Construction de l'image nginx |
| ✅ Test config | nginx -t pour valider la configuration |
| 🌐 Test HTTP | Vérification réponse 200 |
| 🏥 Test /health | Endpoint de santé |
| 📦 Publish GHCR | Publication avec tag SHA |
| ✋ Approbation | Validation manuelle requise |
| 🚀 Deploy | Mise en production |

## 🚀 Utilisation

```bash
docker pull ghcr.io/TON_USERNAME/ci-cd-nginx-demo:latest
docker run -p 8080:80 ghcr.io/TON_USERNAME/ci-cd-nginx-demo:latest
