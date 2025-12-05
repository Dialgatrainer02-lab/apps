# openbao
use case

syncing k8 secrets from external (ansible) sources
use as an internal ca
  - cert manager for the tls certs
  - trust-manager for the ca


## implementation

opanbao uses self signed ca for tls

## polices

superuser: admin role which can do anything
reader: can read any secret

{app}-reader: if an app needs a specific secret this will allow it to acces it