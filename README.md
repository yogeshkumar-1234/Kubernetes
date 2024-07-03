# MINIKUBE SETUP 

## Use the following command for downloading minkube in linux

```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

```

## Start your cluster
```
minikube start
```
### Add this alias to your shell config or use 
```
alias kubectl="minikube kubectl --"
```

### For viewing the dashboard
```
minikube dashboard
```

### For making your current terminal session to use docker deamon
```
eval $(minikube docker-env)
```

### Build your docker image 
```
docker build -t image_name: tag .
```

### Create a deployment of your app and the service

```
minikube kubectl -- apply -f deployment.yaml
minikube kubectl -- apply -f service.yaml
```

## Checks pods status or view them in dashboard
```
minikube kubectl -- get pods
```

##  To access the app 
```
minikube service your-service
```