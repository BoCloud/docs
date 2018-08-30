#18/08/29  
#Used to delete Calico and busybox

kubectl delete -f /home/liudui/proj-tools/kubeadm/scripts/setCalico.yaml
kubectl delete -f /home/liudui/docs/tests/busybox.yaml
kubectl delete -f /home/liudui/docs/tests/busybox1.yaml
