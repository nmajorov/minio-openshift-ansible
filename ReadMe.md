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

```bash
oc login --token=sha256~NGCzGV7qql --server=https://api.cluster:6443

```

3. Change default variables

check role/defaults folder for default variables

```

minio_namespace: "minio"
tsl_secret_name: "niko-tsl-secret"
minio_root_user: "AKIAIOSFODNN7EXAMPLE"
minio_root_password: "wJalrXUtnFEMIK7MDENGbPxRfiCYEXAMPLEKEY"

minio_storage_size: 10Gi

```

## Deploy on openshift

Deploy  with command:

```bash

 ansible-playbook site.yaml
 
```


