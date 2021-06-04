# Kubernetes Tutorial

## Docker
  - Containers, isolated environment for application
  - Automated Building and deploying applications - CI
  - Before and when deploying
  - Develop applications with docker containers -> Build docker image -> Push to Docker Trusted Registry

## Kubernetes
  - Infrastructure for managing multiple containers
  - Automated scheduling and management of application containers
  - After container deployment
  - Pod
    - Smallest Unit
    - Abstraction over container
    - Usually 1 application per Pod
    - Each Pod gets its own IP
  - Service
    - Permanent IP address
    - Load Balancer
    - Life cycle of Pod and service NOT connected
  - Ingress
    - Routes traffic into the cluster
  - ConfigMap
    - External configuration of application
    - No credentials
    - We can use these as environment variables or as a properties file
  - Secret
    - To store secret data
    - We can use these as environment variables or as a properties file
  - Volumes
    - local
    - remote (outside of K8s cluster)
  - Deployments
    - Blueprint of pods
    - Abstraction of pods
    - create deployments
    - scale up, scale down
    - replicas
    - for stateLESS apps
  - StatefulSet
    - for STATEFUL apps like Databases


### Kubernetes Architecture
#### Nodes processes

    - Worker servers / Nodes 
    - each node has multiple pods
    - 3 processes must be installed on every node
      - container runtime
      - kubelet 
        - interacts with both the container and node
        - starts the pod with a container inside
      - kube proxy (communication / load balancer / forward requests)

#### Master processes
    - 4 processes must be installed on every master node
      - API server
        - cluster gateway
        - acts as a gatekeeper for authentication
      - Scheduler
        - where to put the pod based on the available resources ?
      - Controller manager
        - detects the state changes
      - etcd
        - cluster brain
        - cluster changes gets stored in key value pair



## CLI
  * az login
  * kubectl get pods
  * kubectl logs pod-label > logs.txt
  * To view the nodes in the cluster
     - kubectl get nodes
  * kubectl get deployments
  * kubectl get services
  * kubectl describe pod pod-name
  * kubectl describe node node-name

#### Deploy Containers
  - Details of the cluster and its health status can be discovered
    - kubectl cluster-info
  - Containers to be deployed onto the cluster
  `
      kubectl create deployment first-deployment --image=katacoda/docker-http-server
  `
  - container can be exposed via different networking options, depending on requirements. One possible solution is NodePort, that provides a dynamic port to a container.
  `
      kubectl expose deployment first-deployment --port=80 --type=NodePort
  `
  - finds the allocated port and executes a HTTP request
  `
      export PORT=$(kubectl get svc first-deployment -o go-template='{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}')
echo "Accessing host01:$PORT"
curl host01:$PORT
  `
  - deploying the following YAML definition
  `  
  kubectl apply -f /opt/kubernetes-dashboard.yaml
  `

#### Scaling Resources
  * kubectl scale --replicas=3 pod-name