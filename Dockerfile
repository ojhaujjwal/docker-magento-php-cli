FROM phusion/baseimage:latest

RUN DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm

# Add the "PHP 7" ppa
RUN apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get update


RUN apt-get install -y --force-yes \
        php7.3-cli \
        php7.3-common \
        php7.3-curl \
        php7.3-json \
        php7.3-xml \
        php7.3-mbstring \
        php7.3-mysql \
        php7.3-zip \
        php7.3-gd \
        php7.3-intl \
        php7.3-soap \
        pkg-config \
        php-dev \
        libcurl4-openssl-dev \
        libedit-dev \
        libssl-dev \
        libxml2-dev \
        libmcrypt-dev \
        gcc \
        autoconf \
        libc-dev \
    && apt-get clean

RUN pecl install mcrypt-1.0.2

# Install composer and add its bin to the PATH.
RUN curl -s http://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer


# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["php"]
