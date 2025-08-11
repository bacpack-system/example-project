# Example Project

This is an example CMake based project which uses BacPack components. It is a part of BacPack
documentation. It prints content of HTTP GET request for `www.example.com` domain.

This project [can be used as a template](#using-the-template-project) for other CMake-based projects.

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

# Using the Template Project

The template project can be used as a starting point for other projects. The following steps
describe how to use it with emphasis on BacPack specific changes. More informations can be found in
[example usage documentation](https://bacpack-system.github.io/example_usage).

1. (Copy the repository, update code) - not BacPack specific
2. Update link to Package Tracker in `CMLibStorage.cmake` (sets using specific Package Repository)
3. Update `CMakeLists.txt`:
    - Change `BA_PACKAGE_LIBRARY(curl v7.79.1)` to `BA_PACKAGE_LIBRARY(<your_package_name> <your_package_version>)`,
      all used Packages must be present in the used Package Repository
    - Change `FIND_PACKAGE(CURL REQUIRED)` to `FIND_PACKAGE(<your_package_name> REQUIRED)`
    - Change `TARGET_LINK_LIBRARIES(example-project PUBLIC CURL::libcurl)` to
      `TARGET_LINK_LIBRARIES(example-project PUBLIC <your_package_name>::<your_package_target>)`
