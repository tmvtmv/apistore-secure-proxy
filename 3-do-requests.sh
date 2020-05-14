clear
echo Request WITHOUT client certificate:
echo Response:
curl https://localhost:8443

echo
echo
echo Request WITH client certificate to apistore-secure-proxy:
echo Response:
curl  --cacert certs/ca.crt --key certs/client.key --cert certs/client.crt https://localhost:8443


echo
echo
echo Request WITH client certificate to https://api-prd.kpn.com/httpbin/ip via apistore-secure-proxy:
echo Response:
curl  --cacert certs/ca.crt --key certs/client.key --cert certs/client.crt https://localhost:8443/httpbin/ip

