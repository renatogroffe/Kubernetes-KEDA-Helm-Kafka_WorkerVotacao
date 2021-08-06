kubectl create namespace keda

helm repo add kedacore https://kedacore.github.io/charts

helm install keda kedacore/keda --namespace keda

kubectl create namespace votacao

kubectl apply -f .\workervotacao-secret.yml --namespace votacao

kubectl apply -f .\workervotacao-deployment.yml --namespace votacao

kubectl apply -f .\workervotacao-scaledobject.yml --namespace votacao