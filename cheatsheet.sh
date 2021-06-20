# Get help
kubectl --help

# -------
# PODS
# -------
# Get number of pods
kubectl get pods

#Get number of nodes
kubectl get nodes

# Get version of Kubernetes
kubectl version

# Get OS it is running
kubectl get nodes -o wide

# How many pods exist on the system in the current(default) namespace
kubectl get pods -o wide

# Create a new pod with the nginx image
kubectl run nginx --image=nginx

# Describe pods
kubectl describe pods newpods-c8s2b

# Delete pods
kubectl delete pods webapp

# Create yaml file from kubectl run command
# This will help you to create the sample yaml file
kubectl run redis --image=redis --dry-run=client -o yaml > sample.yaml

# Create pods from yaml file
kubectl apply -f ./sample.yaml

# Update pod on the fly
kubectl edit pod redis

# Replace/Update the existing pod
kubectl replace --force -f ./sample.yaml


# -------
# REPLICASETS
# -------
# Get number of replicasets
kubectl get rs

# Describe the replicasets
kubectl describe rs/new-replica-set

# Delete pod
kubectl delete pod new-replica-set-j2b9f

# Create replicaset
kubectl create -f replicaset-definition-1.yaml

# Delete replicaset
kubectl delete rs replicaset-1

# Update replicaset
kubectl edit rs ReplicaSet_name

# Delete all the pods with specific label name
kubectl delete pods -l name=busybox-pod

# Edit using replace
kubectl replace -f replicaset-definition.yml

# Scale replicaset
kubectl scale replicaset –replicas=2 new-replica-set

# -------
# DEPLOYMENT
# -------

# Get deployment status
kubectl get deployments

# describe
kubecetl describe deployment myapp-deployment

# Get all the objects created in the session
kubectl get all

#Create a record in the history so you know what changes you make
kubectl create -f deployment.yaml --record

# Create deployment on the fly
# Put the name and image
# Then can just scale the deployment replicas
kubectl create deployment http-d-frontend --image=hhtpd:2.4-alpine
kubectl scale deployment --replicas=3

#Rollout status
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment

# Undo deployment
kubectl rollout undo deployment/myapp-deployment

