
# EXAMPLE Configuration

## Prerequisites

- [cmakelib] installed
- prepare Package Repository as described by [example usage documentation]

## Install EXAMPLE Config

The EXAMPLE config is in `CMCONF_EXAMPLEConfig.cmake` file. To install it, run following command:

```bash
cmake -DCMCONF_INSTALL_AS_SYMLINK=ON -P ./CMCONF_EXAMPLEConfig.cmake
```

To uninstall it, run following command:

```bash
cmake -DCMCONF_UNINSTALL=ON -P ./CMCONF_EXAMPLEConfig.cmake
```

## Change System Name

Let `X` be the SYSTEM name.

- Rename `CMCONF_EXAMPLEConfig.cmake` to `CMCONF_XConfig.cmake`,
- Rename `EXAMPLE` to `X` in `CMCONF_XConfig.cmake`,
- Rename `EXAMPLE` to `X` in `CMLibStorage.cmake`.
- Install `CMCONF_XConfig.cmake` as described above.


[cmakelib]: https://github.com/cmakelib/cmakelib
[example usage documentation]: https://bacpack-system.github.io/example_usage
