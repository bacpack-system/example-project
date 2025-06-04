
IF(BRINGAUTO_TESTS)
    MESSAGE(WARNING "Project has no tests!")
ENDIF()
    
# Delete FORCE once the tests are implemented
SET(BRINGAUTO_TESTS OFF
    CACHE BOOL
    "Enable/disable tests"
    FORCE
)

IF(BRINGAUTO_SAMPLES)
    MESSAGE(WARNING "Project has no samples!")
ENDIF()
    
# Delete FORCE once the tests are implemented
SET(BRINGAUTO_SAMPLES OFF
    CACHE BOOL
    "Enable/disable samples"
    FORCE
)

SET(BRINGAUTO_SYSTEM_DEP OFF
    CACHE BOOL
    "Enable/disable using system dependencies. If OFF we use BringAuto Package Tracker to download dependencies"
)
