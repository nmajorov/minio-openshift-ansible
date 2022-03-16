# MinIO OpenShift simple deployment

Simple deployment for minio on openshift with ansible

more info about minio storage can be found here:

https://min.io/


Steps to install:

1. Install dependencies:

```bash
pip install openshift

ansible-galaxy collection install kubernetes.core 
```

2. Login to openshift using oc cli or kubectl

```
``
3. Change default variables

check role/defaults folder for default variables

```
# namespace there to install minio
minio_namespace: "minio"
tsl_secret_name: "niko-tsl-secret"
minio_root_user: "AKIAIOSFODNN7EXAMPLE"
minio_root_password: "wJalrXUtnFEMIK7MDENGbPxRfiCYEXAMPLEKEY"
# storage for minio data
minio_storage_size: 10Gi

```

## Deploy on openshift

Deploy operators with command:

```bash

 ansible-playbook site.yaml
```


