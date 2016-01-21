
https://github.com/kliewkliew/mysql-adventureworks

https://hub.docker.com/r/kliew/mysql-adventureworks

# MySQL-AdventureWorks
MySQL with the Microsoft AdventureWorks sample database converted for MySQL server, from http://sourceforge.net/projects/awmysql/

http://msftdbprodsamples.codeplex.com/
> The AdventureWorks OLTP database supports standard online transaction processing scenarios for a fictitious bicycle manufacturer (Adventure Works Cycles). Scenarios include Manufacturing, Sales, Purchasing, Product Management, Contact Management, and Human Resources.

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
