# Container Orchestration Tools
  - Kubernetes, Docker Swarm, Openshift(Redhat), Apache Mesos
  - GKE(Google Container Engine), AWS Elastic Kubernetes Service (EKS), Amazon EC2 Container Service (ECS)
  - Azure AKS Service 
  --> Features
      - High Availability
      - Fault Tolerance
      - High Scalability
      - Creates a container network
      - Manages life cycle of containers

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
  - Worker Node / Node
  - Pod
    - Smallest Unit
    - Abstraction over container
    - Usually 1 application per Pod
    - Each Pod gets its own IP
    - Only interacts with Kubernetes layer
    - New IP address on re-creation
  - Service
    - Permanent IP address
    - Load Balancer
    - Life cycle of Pod and service NOT connected
    - External service (Ingress)
    - Internal service
  - Ingress
    - Routes traffic into the cluster
  - ConfigMap
    - External configuration of application
    - No credentials
    - We can use these as environment variables or as a properties file
  - Secret
    - To store secret data
    - Base64 encoded
    - We can use these as environment variables or as a properties file
  - Volumes
    - Storage on local machine
    - remote (outside of K8s cluster)
    - K8s doesn't manage the data persistance
  - Deployments
    - Blueprint of pods
    - Abstraction of pods
    - create deployments
    - replicas
    - scale up, scale down
    - for stateLESS apps
  - StatefulSet
    - for stateFUL apps or Databases


### Kubernetes Architecture
    - 2 types of nodes
    - master node
       - less resources (RAM, CPU, Storage)
    - worker node / slave node
       - more resources (RAM. CPU, Storage)

#### Nodes processes

    - Worker servers / Nodes 
    - each node has multiple pods
    - 3 processes must be installed on every node
      - kubelet 
        - interacts with both the container and node
        - starts the pod with a container inside
      - kube proxy (communication / load balancer / forward requests)
      - container runtime (Docker / Kube etc)

#### Master processes
    - Schedule pod
    - Monitor pod
    - Re-schedule / restart pod
    - Joining a new node
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

#### kind
    - kind lets you run Kubernetes on your local computer. 
    - This tool requires that you have Docker installed and configured.

#### Minikube
    - For Test / local cluster setup
    - Master processes and Worker processes in 1 Node
    - Docker pre-installed
    - create, destroy pods, create services etc 
    - minikube start
    - minikube status
    - minikube kubectl -- get po -A 
      - will download kubectl if not available in minikube
    - minikube stop
    - minikube dashboard
    - minikube dashboard --url
    - https://minikube.sigs.k8s.io/docs/start/
    - https://kubernetes.io/docs/tasks/tools/
    - https://gitlab.com/nanuchi/youtube-tutorial-series/-/blob/master/basic-kubectl-commands/cli-commands.md
    - minikube service mongo-express-service
    - kubernetes-dashboard --- only for minikube


## CLI / kubectl

  * az login
  * kubectl version --client
  * kubectl cluster-info
  * kubectl get events
  * kubectl config view
  * kubectl get all
  * kubectl get all | grep nginx

  * kubectl get pods
  * kubectl get pod -o wide
  * kubectl logs pod-label > logs.txt
  * kubectl describe pod pod-name

  * kubectl exec -it sn-nginx-depl-864fc9589b-82hps -- bin/bash
    curl -vk http://localhost:8082/manage/health

  * kubectl get pod,svc -n kube-system

  * kubectl get nodes
  * kubectl describe node node-name
  * kubectl delete pod pod-name
  * kubectl delete pod pod-name --grace-period 0 --force

  * kubectl get deployments
  * kubectl get deployment sn-nginx-depl -o yaml
  * kubectl describe deployment deployment-name
  * kubectl create deployment sn-nginx-depl --image=nginx
  * kubectl edit deployment sn-nginx-depl
  * kubectl delete deployment sn-nginx-depl

  Expose the Pod to the public internet using the kubectl expose command: 
  --type=LoadBalancer flag indicates that you want to expose your Service outside of the cluster 
  * kubectl expose deployment hello-node --type=LoadBalancer --port=8080


  * kubectl get services
  * kubectl describe service service-name

  * kubectl get replicaset
  * kubectl apply -f sn-nginx-deployment.yml
  * kubectl delete -f sn-nginx-deployment.yml

  * kubectl get secrets

  * kubectl get configmap
  * kubectl get configmap -n default
  * kubectl get configmap -o yaml
  * kubectl apply -f mongodb-configmap.yaml --namespace=my-namespace
  * kubectl create configmap hzc-backup-count --from-literal=HZC_BACKUP_COUNT=2 -n=my-namespace
  * kubectl create secret generic my-secret --from-literal=MY_SECRET='sathya' -n=my-namespace

  * kubectl get namespaces
  * kubectl get namespaces -n default

  * install kubectx --
  * kubens my-namespace

## K9S CLI
    - Kubernetes CLI To Manage Your Clusters In Style!
    - https://k9scli.io/
    - Allows to manage OnPrem, Azure Kubernetes clusters with interactive shell


#### K8s config YAML file

  - metadata
  - specification
  - status (automatically generated and added by Kuberenetes)
  - etcd holds the status of any k8s component
  - connecting deployments to pods
  - connecting services to deployments

    - Deployment manages the ReplicaSet
    - ReplicaSet manages the Pods
    - Pods is an abstactions of container
    - Template is the blueprint for pod
    - Template has its own metadata and spec section
    - Deployment metadata has label, which is connected to its spec selector
    - Deployment metadata lable is also connected with service spec selector and deployment template metadata label

#### Namespaces

  - Structure your components
  - Avoid conflicts between teams
  - Shares services between different environments
  - Access and Resource Limits
    - Limit resources like CPU, RAM etc
  - Vol, Node components can't be created with in a Namespace
  - kubectl api-resources --namespaced=false
  - kubectl api-resources --namespaced=true

#### External service vs Ingress
  - External service
    - Used for tests and quick checks 
  - Ingress
    - IP address, port are not opened
    - Routing rules (spec .. rules)

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
  - For Optimum scheduling, should use less resources (CPU, Memory)
  * kubectl scale --replicas=3 pod-name


#### Features
  * Pre-start
  * Post-start
  * Readiness probe
  * Affinity / Anti-affinity
  * Liveness
    httpGet
  * Readiness
    httpGet
    - Failure threshold should be higher than the Readiness threshold.

----------------------------------------------------------

  resources:
   limits:
    cpu: 100m
	memory: 200Mi
   requests:
    cpu: 10m
	memory: 200Mi
	

  1 CPU = 1000m

 - When the CPU limit is reached, the container is throttled.
 - When the Memory limit is reached, the Pod is killed and restarted.

 - CPU Resources to Containers and Pods
    - https://kubernetes.io/docs/tasks/configure-pod-container/assign-cpu-resource/ 
 - Assign Memory Resources to Containers and Pods
    - https://kubernetes.io/docs/tasks/configure-pod-container/assign-memory-resource/ 
 - Configure Default Memory Requests and Limits for a Namespace
    - https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/memory-default-namespace/ 

 - Kubernetes Resource Limits
    - https://www.densify.com/kubernetes-tools/kubernetes-resource-limits 
 - Kubernetes best practices: Resource requests and limits
    - https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-resource-requests-and-limits 

 https://learnk8s.io/setting-cpu-memory-limits-requests



----------------------------------------------------------

Sample Docker Images


  docker pull gcr.io/google-samples/shippingservice:v0.1.2
  docker pull gcr.io/google-samples/shippingservice@sha256:ed43c1e9c515ec440e95d99357e91087d92a1ecc9b9ed799335b4b9e147c1248

  gcr.io/google-samples/paymentservice@sha256:509bff857bd6f2db727cb50322ed0de6a62bddd82ffad35c9603ac4d98acbc3f
  gcr.io/google-samples/currencyservice
  gcr.io/google-samples/emailservice


----------------------------------------------------------

 https://azure.microsoft.com/en-us/resources/kubernetes-learning-path/
 https://gregorsuttie.com/2021/01/20/aks-zero-to-hero-series-for-everyone/
