# docker-kubectl
A docker container with quantil kubectl

### Useage
```bash
docker pull registry-qcc.quantil.com/ibe-tools/kubectl:2.2.2 \
  && docker tag registry-qcc.quantil.com/ibe-tools/kubectl:2.2.2 kubectl:2.2.2
```
Copy your cert, pem and `config` file locally   
Export your cert and pem file
```bash
export CERT=<your_cert_file>
export PEM=<your_pem_file>
```
Run kubectl
```bash
docker run \
  -v /$(pwd)/config:/root/.kube/config \
  -v /$(pwd)/$CERT:/root/.kube/$CERT \
  -v /$(pwd)/$KEY:/root/.kube/$KEY kubectl:2.2.2
```

### Build
```bash
docker build -t kubectl:2.2.2 .
```
