kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/v2.5.2/install.yaml
kubectl patch service argocd-server -n argocd -p '{"metadata":{"annotations":{"traefik.ingress.kubernetes.io/service.serverstransport":"traefik-default@kubernetescrd"}}}'
