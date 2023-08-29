OLD=$(cat ip_gr.txt)
dig +short txt ch whoami.cloudflare @1.0.0.1 > ip_gr.txt
IP=$(cat ip_gr.txt)
if [ "$OLD" = "$IP" ] ; then echo "ip is old $OLD" ; else echo 'New IP=$IP' git add * ; git commit -m 'new ip' ; yes | git push; fi
#sleep 600