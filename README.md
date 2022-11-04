#Docker yml setup for  php, mysql (maria), postgres, adminer, phpmyadmin, pgadmin and nginx 

### GET STARTED

#### Git Clone
```
git clone https://github.com/pompy/php_mariadb_postgres_nginx_adminer_pgadmin_phpmyadmin_docker
```
#### Make sure docker, docker-compose is installed
Installations depends on whether your os is based on windows or linux distribution

#### Docker Compose Up/Build

```
// create and start containers
docker-compose up

docker-compose build
```

#### Docker Compose other handy command

```
// create and start containers
docker-compose up
// start as daemon
docker-compose up -d
// start services with detached mode
docker-compose -d up
// start specific service
docker-compose up <service-name>
// list images
docker-compose images
// list containers
docker-compose ps
// start service
docker-compose start
// stop services
docker-compose stop
// display running containers
docker-compose top
// kill services
docker-compose kill
// remove stopped containers
docker-compose rm
// stop all contaners and remove images, volumes
docker-compose down
//prune
docker system prune 
//information
docker info
//cleaning up and load again
//handy commands
docker-compose rm -f
docker-compose pull
docker-compose up --build -d
# Run some tests
./tests
docker-compose stop -t 1
docker-compose build --no-cache

```
#### Backup of database
```
//example of taking backup of mariadb from container 
docker exec pompycontainermysql /usr/bin/mysqldump -u admin -padmin mydb  > backup.sql
docker exec pompycontainermysql /usr/bin/mysqldump   mydb  > backup.sql

```

#### Placement of files

##### PHP
```
app/public/public
Place your php files. You can install laravel here if you want to.

```
Access   
<http://localhost:81/index.php>   
<http://localhost:82>  
<http://localhost:5051>  
<http://localhost:8088>  
```
you can open pgadmin and adminer using their corresponding ports

```
