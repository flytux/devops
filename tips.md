# Get Secret

kubectl get secret gitlab-gitlab-initial-root-password -o jsonpath='{.data.password}' | base64 -d
