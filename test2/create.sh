#18/08/30  
#Used to create Calico and busybox
kubectl taint nodes --all node-role.kubernetes.io/master-
kubectl create -f /home/liudui/proj-tools/kubeadm/scripts/setCalico.yaml
kubectl create -f /home/liudui/docs/tests/busybox.yaml
kubectl create -f /home/liudui/docs/tests/busybox1.yaml
