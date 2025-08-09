# Example Project

This is an example CMake based project which uses BacPack components. It is a part of BacPack
documentation. It prints content of HTTP GET request for `www.example.com` domain.

This project [can be used as a template](#using-the-template-project) for other CMake-based projects.

# Requirements 

- Dependencies build and stored in Package Repository.
  see [example usage documentation].
- [CMCONF Global Configuration] installed and prepared

Local Package Repository is used in this example.

# Run 

./example-projectd

# Build

```
mkdir -p _build && cd _build
cmake ../
make
```

# Using the Template Project

Example project can be used as a starting point for other projects.

1. Choose in which [CMCONF] System the project will belong to.
1. Update Config.cmake as stated in [config/README.md]. Config.cmake shall not be, in most cases, part of the project
   and shall be stored outside of the project source tree. It highly depends on usage - if the system has the only 
   project it coukld make sense to be part of the project source tree. 
1. Install Config.cmake as stated in [config/README.md].
1. Update `CMakeLists.txt` as desired for the project needs.

More informations can be found in [example usage documentation].

[example usage documentation]: https://bacpack-system.github.io/example_usage
[CMCONF]: https://github.com/cmakelib/cmakelib-component-cmconf
[CMCONF Global Configuration]: ./config/README.md
[config/README.md]: ./config/README.md
