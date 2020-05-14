# APISTORE SECURE PROXY
This Docker-file is a proof of concept to demonstrate how easy
an authenticating proxy-server using client certificates is being acomplished.

This proof of concept comes with 4 scripts to explains the proces step by step.

# Usage:

## 1-gencert.sh
This script generates the required self-signed certificatase for use by Nginx 
(the proxy server) and Curl (the client) in this proof of concept.

## 2-buid-and-run.sh
This script builds the Docker image and runs the docker container.
After completion the HTTPS proxyserver is listening on port 8443.

## 3-do-requests.sh
This script demonstrates three scenario's:
- Request basic proxy-URL without the required client certificate.
  This will FAIL.

- Request basic proxy-URL authenticated by the client certificate.
  This will succeed with OK.

- Request end-point API via the secure proxy authenticated by the client certificate. 
  This proof of concept will send an API request to APISTORE for demo purposes.

## 4-stop-and-cleanup.sh
Done playing? Stop and clean up the Docker container.
