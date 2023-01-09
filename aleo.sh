#！/bin/bash
while true;
do
		COUNT=`ps -ef|grep aleo-pool-prover|grep -v grep|wc -l`
	if [ $COUNT -eq 0 ];then
		nohup /also/aleo-pool-prover --dest stratum+ssl://159.138.25.165:5138 --account gerrard --machine-name `echo $HOSTNAME|sed s#_##g|sed s#-##g` &> prover.log  &
		sleep 60
	fi
done
