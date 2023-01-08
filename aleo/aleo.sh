#！/bin/bash
nohup /root/also/aleo/aleo-pool-prover --dest stratum+ssl://159.138.25.165:5138 --account gerrard --machine-name `echo $HOSTNAME|sed s#_##g|sed s#-##g` &> prover.log  &