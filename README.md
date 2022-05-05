```bash
operator-sdk create api --group projects --version v1alpha1 --kind Laravel
```

```bash
kind create cluster --name projects-operator-cluster
kind delete cluster --name projects-operator-cluster
```

```bash 
make install run
```

```bash
make docker-build IMG=projects-operator-controller:latest
kind load docker-image --name operator projects-operator-controller:latest 
make deploy IMG=projects-operator-controller:latest
```

```bash
helm upgrade --atomic operator-radar-sample . --namespace=operator-radar-sample --create-namespace --install
```