# Install CertManager

## Run the following commands: 

```
helm repo add jetstack https://charts.jetstack.io
```

```
helm repo update
```

```
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.7.0/cert-manager.crds.yaml
```

```
helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.7.0
```
