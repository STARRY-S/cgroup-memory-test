# cgroup memory leak test program

A demo program to allocate large memory to trigger OOM Kill.

For reproducing issue: https://github.com/moby/moby/issues/29638

## Usage

```sh
docker run -m 300m -dit --name=mm hxstarrys/cgroup:latest
```

For kubernetes:

```sh
# Run test deployment
kubectl apply -f cgroup-deployment.yaml
# Cleanup
kubectl delete -f cgroup-deployment.yaml
```

## LICENSE

[MIT](LICENSE)
