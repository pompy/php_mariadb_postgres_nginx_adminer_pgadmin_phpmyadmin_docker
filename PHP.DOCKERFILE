FROM php:8.1-fpm
# for old php use below
# FROM php:7.4-fpm

RUN echo "PHP setup "
RUN echo "========================="
RUN echo "Installing php extensions"
RUN apt update \
        && apt install -y \
            g++ \
            libicu-dev \
            libpq-dev \
            libzip-dev \
            zip \
            zlib1g-dev \
        && docker-php-ext-install \
            intl \
            opcache \
            pdo \
            pdo_pgsql \
            pgsql \
			pdo_mysql \
			mysqli  \
            exif 

RUN php -m		
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
