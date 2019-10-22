# fakesmtp-k8s

PoC of getting fakesmtp running in Kubernetes.

Dockerfile and build-docker.sh will build an image and push to gcr.io, need to change to your own or use my image. If using your own the fakesmtp-deploy.yaml will need to be edited.

On Kubeernetes. Need to run in your namespace -
'''
kubectl apply -f fakesmtp-deploy
'''
then
'''
kubectl expose deployment/fakesmtp
'''
and it is available to all pods - no external ingress. Email viewable by ssh'ing into pod. All pods can send email by connecting to fakesmtp:25 once the deployment is exposed.

TODO - UI accessible over external ingress to view emails - not very user friendly at the moment.
