docker-magento-php-cli
=============================
Docker image for magento php cli. It contains php7, composer and all the required php extensions for running magento on cli.

## Installed components
* php-cli(php7)
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

## Related Projects
* [docker-magento-php-fpm](https://github.com/ojhaujjwal/docker-magento-php-fpm)
