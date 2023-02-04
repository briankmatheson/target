# target
Shell script for setting up and using nvme targets on linux

bmath@brick:~/src/target$ target connect 127.0.0.2
found target-config.json
connecting to 127.0.0.2

Discovery Log Number of Records 2, Generation counter 8
=====Discovery Log Entry 0======
trtype:  tcp
adrfam:  ipv4
subtype: current discovery subsystem
treq:    not specified, sq flow control disable supported
portid:  1
trsvcid: 4420
subnqn:  nqn.2014-08.org.nvmexpress.discovery
traddr:  127.0.0.2
eflags:  none
sectype: none
=====Discovery Log Entry 1======
trtype:  tcp
adrfam:  ipv4
subtype: nvme subsystem
treq:    not specified, sq flow control disable supported
portid:  1
trsvcid: 4420
subnqn:  disk1
traddr:  127.0.0.2
eflags:  none
sectype: none
bmath@brick:~/src/target$ ls -l /dev/nvme1
crw------- 1 root root 246, 1 Feb  4 17:04 /dev/nvme1
