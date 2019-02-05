# Laravel CI/CD 
The main goal from this project is to make your development process fast beside your deployment process.

This project is using laravel 5.7 with php7.2

If you want to apply the concept of `CI/CD` for your project this project for you.

## Get the project work in your local

1- first you should install docker you an check it from <a href="https://docs.docker.com/install/">here</a>
install it and run it.

2- clone the project to your local
```
git clone https://github.com/ahmedzidan/laravel-ci-cd.git
```

3- from your command line run this
```
 make build
```
This step will build 4 containers php-fpm, nginx, mysql and adminer

4- from the command line run this command
```
 make composer-install
``` 
This will install all the dependencies from composer.json file.

5- from the commandline run this command
```
docker ps
```
this will show you the running containers name.

6- from your browser open this your <a href="http://localhost/">http://localhost/</a>

you should see this text "my first CI/CD project".

7- you can connect to adminer using this url <a href="">http://localhost:8080/</a>

You can connect to mysql using this credential 
```
Server : myproject_dbMysql_1
Username : root
Password : root
Database : mydb
```

## Description 
-In environment/dev.yml file we build 4 containers 
 
 we will go through them later

## Contribution

This project i make it open source if you want to update or enhance anything so other people can take the benefits also, please feel free to open a pull request.
