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


## CLI
  * az login
  * kubectl get pods
  * kubectl logs pod-label > logs.txt
  * To view the nodes in the cluster
     - kubectl get nodes
  * kubectl get deployments

#### Deploy Containers
  - Details of the cluster and its health status can be discovered
    - kubectl cluster-info
  - Containers to be deployed onto the cluster
  `
    - kubectl create deployment first-deployment --image=katacoda/docker-http-server
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
