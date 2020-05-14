clear
echo Building docker
docker build . --tag apistore-secure-proxy
echo Running docker
docker run -p 8443:443 -d --name apistore-secure-proxy apistore-secure-proxy
