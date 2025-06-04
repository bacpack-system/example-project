# Example Project

This is an example CMake based project which uses BacPack components. It is a part of BacPack
documentation. It prints content of HTTP GET request for `www.example.com` domain.

# Requirements 

No depencies are required on host system. The only `curl` dependency is pulled using Package Tracker.

# Run 

./example-projectd

# Build 

```
mkdir -p _build && cd _build
cmake ../
make -j 8
```
