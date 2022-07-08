#!/bin/bash -x 

###################
#NESTOR SANCHEZ G
################### 
#FUENTES: https://www.dns-oarc.net/tools/dnsperf


sudo apt install -y libssl-dev libldns-dev libck-dev libnghttp2-dev ;
wget https://www.dns-oarc.net/files/dnsperf/dnsperf-2.9.0.tar.gz ;
tar -xf dnsperf-2.9.0.tar.gz ;
cd dnsperf-2.9.0/ ;
sudo ./configure ;
sudo make ;
sudo make install ;

#COMANDOS RECOMENDADO
#dnsperf -s {dns-ip} -T 128 -p 53 -d 
#while sleep 0.1s; do host google.com {dns-ip}; done
#FILES DE PRUEBA: https://github.com/DNS-OARC/sample-query-data.git


