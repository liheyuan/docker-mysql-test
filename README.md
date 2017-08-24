# docker-mysql-test

## How to run 
```
# first time
./create_vm.sh
./run_mysql_docker.sh

# after reboot vm
./run_mysql_docker.sh

# reboot vm
./stop_vm.sh
./start_vm.sh

# connect to mysql
VM_IP=$(./ip_vm.sh)
mysql -h $VM_IP -uroot -phehehe
```
