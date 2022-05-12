# Magento 2 Development (M2DEV)
> A concise and opinionated Docker development environment for Magento 2

## Requirements
1) Project Directory within Linux or WSL 2
1) Docker with Compose Support
1) 6 GB of RAM

## Setup
Use the follow code to quickly setup a new development environment within an empty folder.

```bash
$ mkdir your-dev-folder
$ cd your-dev-folder
$ curl -s https://raw.githubusercontent.com/bgushurst/m2dev/master/installer/setup | bash -s -- magento.dev 2.4.4
```

## Building
Use the follow script snippets to build the difference images.

NGINX
```bash
$ docker build images/nginx -t "bgushurst/m2dev-nginx:1.21"
$ docker push "bgushurst/m2dev-nginx:1.21"
```

PHPFPM
```bash
$ docker build images/php-fpm/8.1 -t "bgushurst/m2dev-phpfpm:8.1"
$ docker push "bgushurst/m2dev-phpfpm:8.1"
```

ELASTICSEARCH
```bash
$ docker build images/elasticsearch/7.16 -t "bgushurst/m2dev-elasticsearch:7.16"
$ docker push "bgushurst/m2dev-elasticsearch:7.16"
```

RABBITMQ
```bash
$ docker build images/rabbitmq/3.9 -t "bgushurst/m2dev-rabbitmq:3.9"
$ docker push "bgushurst/m2dev-rabbitmq:3.9"
```