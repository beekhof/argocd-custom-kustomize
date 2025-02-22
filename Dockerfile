FROM registry.redhat.io/openshift-gitops-1/argocd-rhel8:v1.1.2

# Switch to root for the ability to perform install
USER root

ARG KUSTOMIZE_VERSION=v4.2.0

# Install tools needed for your repo-server to retrieve & decrypt secrets, render manifests
# (e.g. curl, awscli, gpg, sops)
RUN curl -o /tmp/kustomize.tar.gz -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz && \
    ls /tmp && \
    tar -xvf /tmp/kustomize.tar.gz -C /usr/local/bin && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Switch back to non-root user
USER argocd
