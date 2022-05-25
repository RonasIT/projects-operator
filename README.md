# Projects Operator
// TODO(user): Add simple overview of use/purpose

## Description
// TODO(user): An in-depth paragraph about your project and overview of use

## Getting Started
You’ll need a Kubernetes cluster to run against. You can use [KIND](https://sigs.k8s.io/kind) to get a local cluster for testing, or run against a remote cluster.
**Note:** Your controller will automatically use the current context in your kubeconfig file (i.e. whatever cluster `kubectl cluster-info` shows).

### CI/CD

#### Secrets

- `GKE_SA_KEY`

### Running on the cluster

1. Build and push your image to the location specified by `IMG`:
	
```sh
make docker-build docker-push IMG=gcr.io/ronas-cloud/projects-operator:tag
```
	
2. Deploy the controller to the cluster with the image specified by `IMG`:

```sh
make deploy IMG=gcr.io/ronas-cloud/projects-operator:tag
```

### Uninstall CRDs
To delete the CRDs from the cluster:

```sh
make uninstall
```

### Undeploy controller
UnDeploy the controller to the cluster:

```sh
make undeploy
```

## Usage

```yaml
apiVersion: projects.ronas.cloud/v1alpha1
kind: NextJS
metadata:
  name: demo-nextjs
spec:
  image:
    repository: gcr.io/project/image
    tag: latest
  ingress:
    host: demo.next.ronasit.com
```

## How it works
This project aims to follow the Kubernetes [Operator pattern](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/)

It uses [Controllers](https://kubernetes.io/docs/concepts/architecture/controller/) 
which provides a reconcile function responsible for synchronizing resources untile the desired state is reached on the cluster 

## Contributing
// TODO(user): Add detailed information on how you would like others to contribute to this project

### Test It Out
1. Install the CRDs into the cluster:

```sh
make install
```

2. Run your controller (this will run in the foreground, so switch to a new terminal if you want to leave it running):

```sh
make run
```

**NOTE:** You can also run this in one step by running: `make install run`
