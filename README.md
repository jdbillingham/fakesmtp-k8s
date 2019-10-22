# fakesmtp-k8s

PoC of getting fakesmtp running in Kubernetes.

Need to k apply -f deployment, then k expose deployment/fakesmtp and it is available to all pods - no external ingress. Email viewable by ssh'ing into pod - ideally needs UI with external ingress. 
