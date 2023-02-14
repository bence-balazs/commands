mariabackup --defaults-extra-file=~/mariabackup.cnf --backup --stream=xbstream | gzip > /app/mysql/backup/mariadb-$(date +"%Y-%b-%d--%R").gz

CREATE USER 'mariabackup'@'localhost' IDENTIFIED BY 'mypassword';
GRANT RELOAD, PROCESS, LOCK TABLES, BINLOG MONITOR ON *.* TO 'mariabackup'@'localhost';


mariabck.cnf

[mariabackup]
user=mariabackup
password=mypassword

chmod 0600 mariabck.cnf







----------- backup
---unzip:
gunzip -c mariadb-2022-Dec-15--10\:25.gz | mbstream -x
---prepare:
mariabackup --prepare --target-dir=/app/mysql/backup/unzip/
---restore:
mariabackup --copy-back --target-dir=/app/mysql/backup/unzip/