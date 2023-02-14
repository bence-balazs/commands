	host file:
192.168.100.10 MYSQL-IDC-01
192.168.100.11 MYSQL-IDC-02
192.168.100.12 MYSQL-IDC-03

	create cluster admin:
CREATE USER 'cladmin'@'%' IDENTIFIED BY 'Start_123';
GRANT ALL PRIVILEGES ON *.* TO 'cladmin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

	Innodb cluster setup:
mysqlsh
dba.checkInstanceConfiguration('cladmin@t-db1:3306');
dba.configureInstance('cladmin@t-db1:3306');


shell.connect('cladmin@t-db1:3306');
cl = dba.createCluster('innodb_cluster');
cl.status();


cl.addInstance('cladmin@t-db3:3306');


cl = dba.getCluster();
cl.setPrimaryInstance('t-db1:3306');
