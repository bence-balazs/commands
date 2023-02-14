	lxc search:
lxc image list images:centos

	lxc install:
lxc launch images:centos/8-Stream 


	lxc-shared-folder:
lxc config device add p-boar-node01 sharedfolder disk source=/home/dba/shared path=/media/shared/