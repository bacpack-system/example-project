# Example Project

This is an example CMake based project which uses BacPack components. It is a part of BacPack
documentation. It prints content of HTTP GET request for `www.example.com` domain.

This project [can be used as a template](#using-the-template-project) for other CMake-based projects.

# Requirements

- Dependencies built and available in Package Repository. See [example usage documentation]
- [CMCONF system] installed

# Run

./example-projectd

# Build

```
mkdir -p _build && cd _build
cmake ../
make -j 8
```

# Using this Project as a template

This project can be used as a starting point for other projects. The following steps describe how
to use it with emphasis on BacPack specific changes. More informations can be found in
[example usage documentation](https://bacpack-system.github.io/example_usage).

1. (Copy the repository, update code) - not BacPack specific
2. Choose in which [CMCONF] System the project will belong to.
3. Update CMCONF system config file as stated in [config/README.md]. The config file shall not be,
   in most cases, part of the project and shall be stored outside of the project source tree. It
   depends on usage - if the system has the only project it could make sense to be part of the
   project source tree.
4. Update `CMakeLists.txt` as desired for the project needs:
    - Change `BA_PACKAGE_LIBRARY(curl v7.79.1)` to `BA_PACKAGE_LIBRARY(<your_package_name> <your_package_version>)`,
      all used Packages must be present in the used Package Repository
    - Change `FIND_PACKAGE(CURL REQUIRED)` to `FIND_PACKAGE(<your_package_name> REQUIRED)`
    - Change `TARGET_LINK_LIBRARIES(example-project PUBLIC CURL::libcurl)` to
      `TARGET_LINK_LIBRARIES(example-project PUBLIC <your_package_name>::<your_package_target>)`


[example usage documentation]: https://bacpack-system.github.io/example_usage
[CMCONF system]: ./config/README.md
[config/README.md]: ./config/README.md
[CMCONF]: https://github.com/cmakelib/cmakelib-component-cmconf