# Example Project

This is an example CMake based project which uses BacPack components. It is a part of BacPack
documentation. It prints content of HTTP GET request for `www.example.com` domain.

This project [can be used as a template](#using-the-template-project) for other CMake-based projects.

Full-fledged documentation can be found at [bacpack-system.github.io](https://bacpack-system.github.io).

# Requirements

- Dependencies built and available in Package Repository. See [example usage documentation]
- [example-context] forked
- [CMCONF Global Config] installed

# Run

./example-projectd

# Build

```
mkdir -p _build && cd _build
cmake ../
make -j 8
```

# Using this Project as a template

Example project can be used as a starting point for other projects.

1. Choose in which [CMCONF] System the project will belong to.
1. Fork [example-context] repository.
1. Update Config.cmake as stated in [example-context/config/README.md].
1. Install Config.cmake as stated in [example-context/config/README.md].
1. Update `CMakeLists.txt` as desired for the project needs.


[example-context]: https://github.com/bacpack-system/example-context
[example usage documentation]: https://bacpack-system.github.io/example_usage
[CMCONF Global Config]: https://github.com/bacpack-system/example-context
[example-context/config/README.md]: https://github.com/bacpack-system/example-context/blob/master/config/
[CMCONF]: https://github.com/cmakelib/cmakelib-component-cmconf