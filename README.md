# Projects Operator
Projects operator helps development companies which are working on more than one project at the same time. It allows to save time on deploy and replace DevOps routine tasks with the smart solution. At this stage the next frameworks are supported:

- Laravel;
- React;
- NextJS;
- Angular.

We are more than happy to add more to cover as many cases as possible. Please feel free to open PR/issue with the technology you wish to see here.

## Description
Projects operator is k8s application which manages projects developed using various frameworks and thechnologies. For each framework there is a helm chart developed in line with its specifics and possible dependencies.

Helm charts are used as projects templates.To describe the specific project there is a short manifest. Manifest points to operator which chart should be used to launch the project and with which values. Projects operator merges values from manifest with values from chart and creates resource in k8s cluster. 

Based on the created resource projects operator manages helm releases for each project.

Projects operator simultaneously tracks changes in project's resources and helm charts as well. In case of changes, it updates the projects affected by these changes.  

## Benefits
- Fast start.
- Allows developers to be sure all apps are updated.
- Manage everything from single place.
- Fully automated.
- Cloud agnostic.
- Flexible and customizable.
- Smart resource usage.

## Current status
At the moment projects operator is under extensive development. The number of the projects running via operator are growing, so we do fixes and add new supported technologies on a fly. 

In our plans to cover the next cases by the end of 2022:
- [ ] Python + Django;
- [ ] Node + NestJS;
- [ ] Redis Timeseries;
- [ ] MongoDB.

## Developer quick start
You’ll need a Kubernetes cluster to run against. You can use [KIND](https://sigs.k8s.io/kind) to get a local cluster for testing, or run against a remote cluster.
**Note:** Your controller will automatically use the current context in your kubeconfig file (i.e. whatever cluster `kubectl cluster-info` shows).

### Running on the cluster

1. Build and push your image to the location specified by `IMG`:
	
```sh
make docker-build docker-push IMG=gcr.io/ronas-cloud/projects-operator:latest
```
	
2. Deploy the controller to the cluster with the image specified by `IMG`:

```sh
make deploy IMG=gcr.io/ronas-cloud/projects-operator:latest
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
To get app deployed you need to create k8s resource using  simple manifest. 

```yaml
apiVersion: projects.ronas.cloud/v1alpha1
kind: Laravel
metadata:
  name: example-laravel
spec:
  ingress:
    host: api.laravl.example.com
	soketi:
    enabled: true
    host:  ws.laravel.example.com
```

More useful samples can be found here [into repo](https://github.com/RonasIT/projects-operator/tree/main/config/samples).

## How it works
This project aims to follow the Kubernetes [Operator pattern](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/)

It uses [Controllers](https://kubernetes.io/docs/concepts/architecture/controller/) 
which provides a reconcile function responsible for synchronizing resources until the desired state is reached on the cluster. 

## Contributing
Thank you for considering contributing to projects-operator plugin! The contribution guide can be found in the [Contributing guide](CONTRIBUTING.md).

## License
Projects operator is open-sourced software licensed under the [MIT license](LICENSE).