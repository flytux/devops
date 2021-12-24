# Build Docker Images

docker build -t grype:dev .

# Image Scan docker daemon

docker run -v /var/run/docker.sock:/var/run/docker.sock grype:dev docker:nginx

# Image Scan registry

docker run grype:dev -vvv nginx
