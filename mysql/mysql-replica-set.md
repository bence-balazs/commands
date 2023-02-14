	user:
create user cladmin@'%' identified by 'Start_123';
GRANT REPLICATION SLAVE ON *.* TO 'cladmin'@'%';
flush privileges;

	mysqlsh <--
***rs = dba.getReplicaSet()
cladmin@localhost
dba.configureReplicaSetInstance() -- both node
rs = dba.createReplicaSet('myReplica')
rs.status()
rs.addInstance('cladmin@t-rs2')


	mysqlrouter
mysqlrouter --bootstrap cladmin@t-rs1 --user mysqlrouter
systemctl start mysqlrouter -- enable?







******** NOTES ********

rs.status({extended:true})  -- extended status 