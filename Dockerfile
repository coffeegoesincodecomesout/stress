FROM rhel7:7.9-924

RUN yum -y install stress

ENV CPU_LOAD=1 MEM_LOAD=1 MEM_SIZE=256M
CMD stress --cpu $CPU_LOAD --vm $MEM_LOAD --vm-bytes $MEM_SIZE
