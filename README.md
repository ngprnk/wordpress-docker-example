```yml
version: '3.1'
services:
  db:
    image: mysql:5.5
    restart: always
    volumes:
      - mysql:/var/lib/mysql
    environment:
      MYSQL_ROOT_PASSWORD: wordpress
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wordpress
      MYSQL_PASSWORD: wordpress
      MYSQL_ALLOW_EMPTY_PASSWORD: ""
    networks:
      - bridge
  wordpress:
    image: wordpress
    restart: always
    links:
      - db:mysql
    ports:
      - "8000:80"
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_DB_NAME: wordpress
    volumes:
      - wpdata:/var/www/html
    networks:
     - bridge
volumes:
  mysql:
  wpdata:
networks:
  bridge:
```