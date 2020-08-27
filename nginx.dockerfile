FROM nginx:latest
LABEL maintainer="Luma Rodrigues"

COPY ./default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]