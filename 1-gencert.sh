openssl genrsa -out certs/ca.key 4096
openssl req -new -x509 -key certs/ca.key -days 365 -sha256 -subj "/C=NL/ST=Grunn/L=Grunn/O=Vnet/CN=localhost" -out certs/ca.crt

openssl genrsa -out certs/server.key 4096
openssl req -subj "/CN=localhost" -sha256 -new -key certs/server.key -out certs/server.csr
echo "subjectAltName = DNS:localhost" > certs/extfile.cnf
openssl x509 -req -days 365 -sha256 -in certs/server.csr -CA certs/ca.crt -CAkey certs/ca.key -CAcreateserial -out certs/server.crt -extfile certs/extfile.cnf


openssl genrsa -out certs/client.key 4096
openssl req -subj "/CN=client" -new -key certs/client.key -out certs/client.csr
echo "extendedKeyUsage = clientAuth" > certs/extfile2.cnf
openssl x509 -req -days 365 -sha256 -in certs/client.csr -CA certs/ca.crt -CAkey certs/ca.key -CAcreateserial -out certs/client.crt -extfile certs/extfile2.cnf
