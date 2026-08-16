# Личная визитка kopanda.ru — статика на nginx (перенос со SpaceWeb).
FROM nginx:alpine
COPY . /usr/share/nginx/html
# Dockerfile и git-метаданные в раздаче не нужны
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/.dockerignore
EXPOSE 80
