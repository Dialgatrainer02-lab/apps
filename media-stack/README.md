# Config
use argocd PostSync hook to run a job which calls the playbooks to configure the arr's

playbooks arent ready yet 

access the apikey like 
```
containers:
       ...
        env:
            - name: apiKey
              valueFrom:
                secretKeyRef:
                  key: apiKey
                  name: media-stack-radarr
```