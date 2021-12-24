docker tag 697f95e27ed1 10.138.100.100:30005/kw-dev:kb                                                                      
docker tag f42d11ac255e 10.138.100.100:30005/quay.io/skopeo/stable:v1.4.1                                                   
docker tag 48ab447e9b0a 10.138.100.100:30005/gcr.io/cloud-builders/mvn:3.8.3                                                
docker tag d5b73a0aceec 10.138.100.100:30005/atlassian/bitbucket-server:latest                                              
docker tag a09172069613 10.138.100.100:30005/quay.io/argoproj/argocd:v2.1.6                                                 
docker tag 8e9885763b85 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard:v0.21.0     
docker tag 327c8c5ff7b8 10.138.100.100:30005/rancher/hyperkube:v1.21.5-rancher1                                             
docker tag b2cb11db9d3d 10.138.100.100:30005/registry:2.7.1                                                                 
docker tag 7aa1277761b5 10.138.100.100:30005/rancher/mirrored-calico-node:v3.19.2                                           
docker tag 6a1186da14d9 10.138.100.100:30005/rancher/mirrored-calico-pod2daemon-flexvol:v3.19.2                             
docker tag 05bf027c9836 10.138.100.100:30005/rancher/mirrored-calico-cni:v3.19.2                                            
docker tag 779aa7e4e93c 10.138.100.100:30005/rancher/mirrored-calico-kube-controllers:v3.19.2                               
docker tag e30b0e044d4b 10.138.100.100:30005/192.168.121.203:5000/dexidp/dex:v2.30.0                                        
docker tag e30b0e044d4b 10.138.100.100:30005/ghcr.io/dexidp/dex:v2.30.0                                                     
docker tag 6eeaa0b8da2c 10.138.100.100:30005/rancher/rke-tools:v0.1.78                                                      
docker tag afbcad32807f 10.138.100.100:30005/rancher/nginx-ingress-controller:nginx-0.48.1-rancher1                         
docker tag d7329a56a8e4 10.138.100.100:30005/rancher/rancher:v2.5.9                                                         
docker tag 55843e1adcf3 10.138.100.100:30005/rancher/rancher-webhook:v0.1.1                                                 
docker tag 500703a12fa4 10.138.100.100:30005/redis:6.2.4-alpine                                                             
docker tag 8d147537fb7d 10.138.100.100:30005/rancher/mirrored-coredns-coredns:1.8.4                                         
docker tag 1c655933b9c5 10.138.100.100:30005/rancher/mirrored-metrics-server:v0.5.0                                         
docker tag 8522d622299c 10.138.100.100:30005/rancher/mirrored-coreos-flannel:v0.14.0                                        
docker tag 532c4733c665 10.138.100.100:30005/rancher/mirrored-coreos-etcd:v3.4.16-rancher1                                  
docker tag 981b7123a405 10.138.100.100:30005/rancher/fleet:v0.3.5                                                           
docker tag 2a0c55d5db35 10.138.100.100:30005/rancher/fleet-agent:v0.3.5                                                     
docker tag c18d03bea7c6 10.138.100.100:30005/rancher/rancher-operator:v0.1.4                                                
docker tag 3aa3f8a8fff7 10.138.100.100:30005/sonatype/nexus3:3.30.1                                                         
docker tag dac9b6c58fe0 10.138.100.100:30005/rancher/gitjob:v0.1.15                                                         
docker tag 0f8457a4c2ec 10.138.100.100:30005/rancher/mirrored-pause:3.4.1                                                   
docker tag 148c19256271 10.138.100.100:30005/rancher/local-path-provisioner:v0.0.19                                         
docker tag 89ac08abb500 10.138.100.100:30005/quay.io/jetstack/cert-manager-controller:v1.1.0                                
docker tag b8d1297ad40f 10.138.100.100:30005/quay.io/jetstack/cert-manager-cainjector:v1.1.0                                
docker tag f37c0bf20685 10.138.100.100:30005/quay.io/jetstack/cert-manager-webhook:v1.1.0                                   
docker tag a5b603e8247c 10.138.100.100:30005/bitnami/mysql:8.0.22-debian-10-r23                                             
docker tag 078b6f04135f 10.138.100.100:30005/rancher/mirrored-cluster-proportional-autoscaler:1.8.3                         
docker tag dfe20193148e 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/webhook:v0.29.0        
docker tag b76a61c62cac 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/controller:v0.17.0     
docker tag e6146edd25c6 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:v0.29.0     
docker tag a18f4a9745c9 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/interceptors:v0.17.0   
docker tag 1c42565eb3fc 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/webhook:v0.17.0        
docker tag 512f56f261aa 10.138.100.100:30005/192.168.121.203:5000/kb-dev:v1

docker push 10.138.100.100:30005/kw-dev:kb                                                                   
docker push 10.138.100.100:30005/quay.io/skopeo/stable:v1.4.1                                                
docker push 10.138.100.100:30005/gcr.io/cloud-builders/mvn:3.8.3                                             
docker push 10.138.100.100:30005/atlassian/bitbucket-server:latest                                           
docker push 10.138.100.100:30005/quay.io/argoproj/argocd:v2.1.6                                              
docker push 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard:v0.21.0  
docker push 10.138.100.100:30005/rancher/hyperkube:v1.21.5-rancher1                                          
docker push 10.138.100.100:30005/registry:2.7.1                                                              
docker push 10.138.100.100:30005/rancher/mirrored-calico-node:v3.19.2                                        
docker push 10.138.100.100:30005/rancher/mirrored-calico-pod2daemon-flexvol:v3.19.2                          
docker push 10.138.100.100:30005/rancher/mirrored-calico-cni:v3.19.2                                         
docker push 10.138.100.100:30005/rancher/mirrored-calico-kube-controllers:v3.19.2                            
docker push 10.138.100.100:30005/192.168.121.203:5000/dexidp/dex:v2.30.0                                     
docker push 10.138.100.100:30005/ghcr.io/dexidp/dex:v2.30.0                                                  
docker push 10.138.100.100:30005/rancher/rke-tools:v0.1.78                                                   
docker push 10.138.100.100:30005/rancher/nginx-ingress-controller:nginx-0.48.1-rancher1                      
docker push 10.138.100.100:30005/rancher/rancher:v2.5.9                                                      
docker push 10.138.100.100:30005/rancher/rancher-webhook:v0.1.1                                              
docker push 10.138.100.100:30005/redis:6.2.4-alpine                                                          
docker push 10.138.100.100:30005/rancher/mirrored-coredns-coredns:1.8.4                                      
docker push 10.138.100.100:30005/rancher/mirrored-metrics-server:v0.5.0                                      
docker push 10.138.100.100:30005/rancher/mirrored-coreos-flannel:v0.14.0                                     
docker push 10.138.100.100:30005/rancher/mirrored-coreos-etcd:v3.4.16-rancher1                               
docker push 10.138.100.100:30005/rancher/fleet:v0.3.5                                                        
docker push 10.138.100.100:30005/rancher/fleet-agent:v0.3.5                                                  
docker push 10.138.100.100:30005/rancher/rancher-operator:v0.1.4                                             
docker push 10.138.100.100:30005/sonatype/nexus3:3.30.1                                                      
docker push 10.138.100.100:30005/rancher/gitjob:v0.1.15                                                      
docker push 10.138.100.100:30005/rancher/mirrored-pause:3.4.1                                                
docker push 10.138.100.100:30005/rancher/local-path-provisioner:v0.0.19                                      
docker push 10.138.100.100:30005/quay.io/jetstack/cert-manager-controller:v1.1.0                             
docker push 10.138.100.100:30005/quay.io/jetstack/cert-manager-cainjector:v1.1.0                             
docker push 10.138.100.100:30005/quay.io/jetstack/cert-manager-webhook:v1.1.0                                
docker push 10.138.100.100:30005/bitnami/mysql:8.0.22-debian-10-r23                                          
docker push 10.138.100.100:30005/rancher/mirrored-cluster-proportional-autoscaler:1.8.3                      
docker push 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/webhook:v0.29.0     
docker push 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/controller:v0.17.0  
docker push 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:v0.29.0  
docker push 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/interceptors:v0.17.0
docker push 10.138.100.100:30005/gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/webhook:v0.17.0     
docker push 10.138.100.100:30005/192.168.121.203:5000/kb-dev:v1
