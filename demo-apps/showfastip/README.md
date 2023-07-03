Build the Image
```
$ docker build -t showfastip .
```

Run the Image as Docker Container
```
$ docker run -d -p 80:80 showfastip
```

Testing which IP address connects to the dontainer for example from Kubernetes pods:
```
$ kubectl -n prod exec '<PODNAME>' -- curl -s 'http://<DOCKERHOST>'
```
_Requester IP: aaa.bbb.ccc.ddd_

