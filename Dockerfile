FROM alpine:edge

ENV HTTP_PORT=80

# Copy the file layer
COPY ./docker/ /

# Update the whole system
RUN apk --no-cache --update upgrade

# Install system deps
RUN apk add \
    curl \
    composer \
    grpc \
    php7 \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-iconv \
    php7-json \
    php7-mbstring \
    php7-session \
    php7-openssl \
    php7-xml

# Go into app folder
WORKDIR /var/www/app

# Install all PHP deps
RUN composer install -o

# Start road runner
EXPOSE ${HTTP_PORT}
ENTRYPOINT [ "/usr/local/bin/rr", "serve", "-v",  "-d" ]