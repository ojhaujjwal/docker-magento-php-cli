docker-magento-php-cli
=============================
Docker image for magento php cli. It contains php7, composer and all the required php extensions for running magento on cli.

## Installed components
* php-cli(php7.1)
* composer
* php extensions
  * curl
  * json
  * iconv
  * xml
  * simplexml
  * mbstring
  * mcrypt
  * mysql
  * zip
  * gd
  * intl
  * soap
  * xsl

Base Image: [phusion/baseimage-docker](https://github.com/phusion/baseimage-docker)

## Docker Pull Command
```
docker pull ojhaujjwal/magento-php-cli
```

## Contribution
* Clone the repository
* Build Image: `docker build --no-cache -t magento-php-cli .`
* Tag Image as latest: `docker tag magento-php-cli ojhaujjwal/magento-php-cli:latest`
* Tag Image version: `docker tag magento-php-cli ojhaujjwal/magento-php-cli[:tag]`
* Push to registry: `docker push ojhaujjwal/magento-php-cli[:tag]`

## Related Projects
* [docker-magento-php-fpm](https://github.com/ojhaujjwal/docker-magento-php-fpm)
