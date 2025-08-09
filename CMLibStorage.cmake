FIND_PACKAGE(CMLIB REQUIRED COMPONENTS CMCONF)

#
# Initialize the system so the Package Tracker
# can use CMCONF_GET.
# The Configuration needs to be installed. See config/README.md
#
CMCONF_INIT_SYSTEM(EXAMPLE)

SET(STORAGE_LIST DEP)
SET(STORAGE_LIST_DEP "https://github.com/bacpack-system/package-tracker.git")
