Build the Image
$ docker build -t showfastip .

Run the Image as Docker Contaier
$ docker run -d -p 80:80 showfastip

Testing which IP address connects to the dontainer for example from Kubernetes pods:
$ kubectl -n prod exec <podname> -- curl -s http://<dockerhost>
Requester IP: aaa.bbb.ccc.ddd
