FROM nginx:alpine

COPY dhparam.pem /etc/nginx/dhparam.pem
COPY nginx.conf /etc/nginx/nginx.conf