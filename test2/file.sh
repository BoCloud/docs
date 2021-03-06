USER=root # customizable
CONTROL_PLANE_IPS= 192.168.140.135
for host in ${CONTROL_PLANE_IPS} do
    scp /etc/kubernetes/pki/ca.crt ${USER}@$host:/etc/kubernetes/pki
    scp /etc/kubernetes/pki/ca.key ${USER}@$host:/etc/kubernetes/pki
    scp /etc/kubernetes/pki/sa.key ${USER}@$host:/etc/kubernetes/pki
    scp /etc/kubernetes/pki/sa.pub ${USER}@$host:/etc/kubernetes/pki
    scp /etc/kubernetes/pki/front-proxy-ca.crt ${USER}@$host:/etc/kubernetes/pki
    scp /etc/kubernetes/pki/front-proxy-ca.key ${USER}@$host:/etc/kubernetes/pki
    scp /etc/kubernetes/pki/etcd/ca.crt ${USER}@$host:/etc/kubernetes/pki/etcd
    scp /etc/kubernetes/pki/etcd/ca.key ${USER}@$host:/etc/kubernetes/pki/etcd
    scp /etc/kubernetes/admin.conf ${USER}@$host:/etc/kubernetes
done
