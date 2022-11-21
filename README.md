# Show IP and hostname

This is a simple kubernetes deployment to show the IP and hostname of a Pod. It also show the node name.
This is useful to study the behavior of kubernetes scheduler and how it assigns Pods to Nodes.

## Deployment

```bash
docker build -t showhostinfo .
kubectl apply -f deployment.yml
kubectl apply -f service.yml
```

## Test

Just open your browser at CLUSTER-IP:30080 and you should see as output:

```bash
IP:         10.1.0.178
HOSTNAME:   showhostinfo-78c67d49d8-dxt57
NODE:       docker-desktop
```
