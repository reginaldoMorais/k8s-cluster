# K8S JS TEST

## Sumary

- [K8S JS TEST](#k8s-js-test)
  - [Sumary](#sumary)
  - [Requirements](#requirements)
  - [Creating a cluster](#creating-a-cluster)
    - [Configuring the cluster on kubectl](#configuring-the-cluster-on-kubectl)
  - [kubectl cheat sheet](#kubectl-cheat-sheet)
    - [Apply Yaml](#apply-yaml)
    - [Get Pods](#get-pods)
    - [Delete Pods](#delete-pods)
    - [Execution bash on pod](#execution-bash-on-pod)
    - [View tail from pod](#view-tail-from-pod)
    - [Pod port forward](#pod-port-forward)
    - [Get Services](#get-services)
    - [Get Persistent Volume](#get-persistent-volume)
    - [Delete Deployment](#delete-deployment)
    - [Delete Service](#delete-service)
  - [Author](#author)

## Requirements

To run this example you need to install:

- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [kind](https://kind.sigs.k8s.io/)

## Creating a cluster

```bash
kind create cluster --config k8s/kind.yaml --name=k8s-js-test
```

### Configuring the cluster on kubectl

```bash
kubectl cluster-info --context kind-k8s-js-test
```

## kubectl cheat sheet

Commands using [kubectl](https://kubernetes.io/docs/tasks/tools/).

### Apply Yaml

```bash
kubectl apply -f k8s/xxxxx.yaml
```

### Get Pods

```bash
kubectl get pods
# or
kubectl get po
```

Getting a pod in a namespace:

```bash
kubectl get pods --namespace {namespace}
```

### Delete Pods

```bash
kubectl delete pod {pod}
```

### Execution bash on pod

```bash
kubectl exec -it {pod} -- bash
```

### View tail from pod

```bash
kubectl --tail 1000 logs {pod}
```

### Pod port forward

```bash
kubectl port-forward {pod} 8080:8080
```

### Get Services

```bash
kubectl get services
```

### Get Persistent Volume

```bash
kubectl get pvc
```

### Delete Deployment

```bash
kubectl delete deploy {name}
```

### Delete Service

```bash
kubectl delete service {name}
```

## Author

[Reginaldo Morais](mailto:reginaldo.cmorais@gmail.com)

[GitHub](https://github.com/reginaldoMorais) |
[GitLab](https://gitlab.com/reginaldoMorais)
