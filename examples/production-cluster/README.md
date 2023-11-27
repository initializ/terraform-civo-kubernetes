# Production Grade CIVO Kubernetes Cluster with CIVO Object Storage as State Store

This folder shows an example of how to use CIVO Kubernetes Module with CIVO Object Storage as S3 Backend for terraform state


### **initializ** Terraform

```
terraform init -backend-config="bucket=<replace with CIVO Object Store Name>" -backend-config="key=<replace with state file name with folder path>" -backend-config="region=<replace with CIVO region>"
```

### Terrafrom Plan

```
terraform plan -var="civo_token=<replace with CIVO API Token>"
```

### Terrafrom Apply

```
terraform apply -var="civo_token=<replace with CIVO API Token>"
```