See: https://medium.com/capital-one-tech/using-kubernetes-configmap-resources-for-dynamic-apps-9e23ef589121

Interesting things here:
1. The point of the article is to show how you can embed files (such as html and css) in a ConfigMap. Cool.
2. This makes use of a 'default nginx ingress'. This would be a good thing to study if I want to build out an app with an NGINX based Ingress.
    The neat thing to see here is how you can hook upstream paths into the NGINX configuration.
3. I attempted to deply this into my Azure K8s cluster (westus2/istio) but that did not work because I don't have (or don't know how to find) the external IP address of my cluster.
    Given what I'm learning about Istio I think my time is better spent working on Gateways/Virtual Services and Destinations, but it's good to know that NGINX Ingress is an option.# lightweightserver
