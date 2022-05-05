```bash
make docker-build IMG=projects-operator-controller:latest
kind load docker-image --name operator projects-operator-controller:latest 
make deploy IMG=projects-operator-controller:latest
```