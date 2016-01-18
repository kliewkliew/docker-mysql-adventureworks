# MySQL-AdventureWorks
MySQL with the Microsoft AdventureWorks sample database converted for MySQL server, from http://sourceforge.net/projects/awmysql/

## Building
`docker build -t kliew/mysql-adventureworks .`

## Running
### Viewing logs
```
docker kill adventureworks
docker rm adventureworks
docker run -it --name adventureworks kliew/mysql-adventureworks
```
or
### In the background
```
docker kill adventureworks
docker rm adventureworks
docker run -d --name adventureworks kliew/mysql-adventureworks
```

### Opening a bash terminal
`docker exec -it adventureworks bash`
