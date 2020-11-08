# Foo

## metrics-server fix

For some reason metrics cannot be collected out of the box with minikube.
To fix that we need to add these arguments to the metrics-server deployment command:

```
--kubelet-insecure-tls=true
--kubelet-preferred-address-types=InternalIP
```
