FROM alpine:3.7
RUN apk add --no-cache rpm
COPY kubectl-2.2.2-1.el7.noarch.x86_64.rpm .
RUN rpm -ivh  --nodeps kubectl-2.2.2-1.el7.noarch.x86_64.rpm
ENTRYPOINT ["kubectl"] 
