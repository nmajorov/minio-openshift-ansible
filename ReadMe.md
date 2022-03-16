# Minio OpenShift simple deployment

Simple deployment for minio on openshift with ansible

1. Install dependencies:

```bash
pip install openshift

ansible-galaxy collection install kubernetes.core 
```

2. Login to openshift using oc cli or kubectl


## Deploy on openshift

Deploy operators with command:

```bash

 ansible-playbook site.yaml
```

