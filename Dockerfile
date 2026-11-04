FROM nginx:alpine

RUN apk add --no-cache curl && \
    curl -sSL -f "https://raw.githubusercontent.com/BerretMan/DevOps/master/index.html" -o /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
