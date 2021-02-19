Dockerfile for overriding kustomize in the argocd image with a specific version. I opted not to do the multiple kustomize version because this is a temporary solution to workaround a kustomize bug.

Once ArgoCD catches up in terms of kustomize version this image will no longer be needed.

The built image is in a public repository at [quay.io/gnunn/argocd](https://quay.io/repository/gnunn/argocd).
