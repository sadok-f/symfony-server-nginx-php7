# symfony-server-nginx-php7
Symfony web server container runs supervisord (php7 and nginx)

## Usage

```sh
    $ docker pull sadokf/symfony-server-nginx-php7
```

```sh
docker run -t -d -i -p 8080:80 sadokf/symfony-server-nginx-php7
```

##Mount the Symfony app directory:

```sh
docker run -t -d -i -p 8080:80 -v /sf-app-path/:/var/www/html sadokf/symfony-server-nginx-php7
```


http://127.0.0.1:8080/
