# Kubernetes Tutorial with GCP
  - GCP Homepage 
  - Cloud Shell Editor
  - Uses containerd (Open Source) container

### Creation in Cloud Shell Editor
    - gcloud container clusters create sathya-cluster --num-nodes=2
    - kubectl get nodes
    - kubectl run sathyapod --image=httpd
    - kubectl get pod
    - kubectl delete pod sathyapod 
      - Pod is deleted, its not deleted, as its not used the Deployment controller
    - kubectl create deployment sathyadeployment --image=httpd --replicas=2
    - watch kubectl get po