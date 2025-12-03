# To do list

- configure home assistant automations
- configure arr stack 
- enable ingress
- deploy ollama for home assistant
- sort out storage
- deploy postgress
- deploy immitch (needs postgres)
- deploy vault warden (needs postgres)
- deploy mealie (needs postgres)
- (low) think about sso
- (low) mqtt auth
- (low) smallstep ca for tls

### sso
ingress with network policys disallowing external access?
configure in app? 
id provider deployment?



## certificate management 

acme with vault and cert manager with vault secret operator
can also be used to pass data between ansible and argo via cubbyhole