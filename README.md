# rust-service

This is an example rust service with a Helm chart ready to be deployed on Kubernetes, autoscaling included.

## Minikube fix

For some reason metrics cannot be collected out of the box with minikube.
To fix that we need to add these arguments to the metrics-server deployment command:

```
--kubelet-insecure-tls=true --kubelet-preferred-address-types=InternalIP
```
