#CA 키 / 인증서 생성

openssl genrsa -out ca.key 2048

openssl req -new -x509 -days 3650 -key ca.key -subj "/C=KR/ST=SE/L=SE/O=Kubeworks/CN=KW Root CA" -out ca.crt

#서버 키 / 인증서 생성

openssl req -newkey rsa:2048 -nodes -keyout server.key -subj "/C=KR/ST=SE/L=SE/O=Kubeworks/CN=*.kw" -out server.csr

echo "subjectAltName=DNS:kw,DNS:rancher.kw" >> ext.file
#openssl x509 -req -extfile <(printf "subjectAltName=DNS:kw,DNS:rancher.kw") -days 3650 -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt
openssl x509 -req -extfile ext.file -days 3650 -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt


#서버 인증서 출력

openssl x509 -in server.crt -text

#Rancher private CA secret 생성
kubectl create ns cattle-system

kubectl -n cattle-system create secret generic tls-ca --from-file=cacerts.pem=./ca.crt

#서버 인증서 Secret 생성
kubectl -n cattle-system create secret tls tls-rancher-ingress --key server.key --cert server.crt

kubectl -n cattle-system get secret
