
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

Let `X` is a SYSTEM name.

- Rename `CMCONF_EXAMPLEConfig.cmake` to `CMCONF_XConfig.cmake`,
- Rename `EXAMPLE` to `X` in `CMCONF_XConfig.cmake`,
- Rename `EXAMPLE` to `X` in `CMLibStorage.cmake`.
- Install `CMCONF_XConfig.cmake` as described above.


[CMCONF_EXAMPLEConfig.cmake]: https://github.com/bacpack-system/package-tracker/example/config
[Package Tracker]: https://github.com/bacpack-system/package-tracker
[Package Tracker Example]: https://github.com/bacpack-system/package-tracker/example
[CMCONF]: https://github.com/cmakelib/cmakelib-component-cmconf
[cmakelib]: https://github.com/cmakelib/cmakelib
[example usage documentation]: https://bacpack-system.github.io/example_usage
