FROM nginx:alpine

# Copie la config nginx
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Copie les fichiers HTML
COPY html/ /usr/share/nginx/html/

EXPOSE 80
