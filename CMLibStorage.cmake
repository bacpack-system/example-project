FIND_PACKAGE(CMLIB COMPONENTS CMCONF REQUIRED)

# Adding CMCONF system
CMCONF_INIT_SYSTEM(EXAMPLE)

# Defining list of storages
SET(STORAGE_LIST DEP)

# Defining Package Tracker storage url
SET(STORAGE_LIST_DEP "https://github.com/bacpack-system/package-tracker.git")
