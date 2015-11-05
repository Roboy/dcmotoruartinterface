# - Find the SERIAL includes and library
# This module defines
#  SERIAL_INCLUDE_DIR, path to SERIAL.h
#  SERIAL_LIBRARIES, the libraries required to use SERIAL.
#  SERIAL_FOUND, If false, do not try to use SERIAL.

FIND_LIBRARY(SERIAL_LIBRARY serial)

FIND_PATH(SERIAL_INCLUDE_DIR SerialPort.h)

MARK_AS_ADVANCED(
  SERIAL_INCLUDE_DIR
  SERIAL_LIBRARY)

SET( SERIAL_FOUND "NO" )
IF(SERIAL_INCLUDE_DIR)
  IF(SERIAL_LIBRARY)
    SET( SERIAL_FOUND "YES" )
    SET( SERIAL_LIBRARIES
      ${SERIAL_LIBRARY})
  ENDIF(SERIAL_LIBRARY)
ENDIF(SERIAL_INCLUDE_DIR)

IF(SERIAL_FOUND)
    MESSAGE(STATUS "Found serial library")
    MESSAGE(STATUS "serial include dir: ${SERIAL_INCLUDE_DIR}" )
    MESSAGE(STATUS "serial library: ${SERIAL_LIBRARY}" )
ELSE(SERIAL_FOUND)
  IF(SERIAL_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find libSERIAL 
-- please give some paths to CMake or make sure libSERIAL is installed in your system")
  ELSE(SERIAL_FIND_REQUIRED)
    MESSAGE(STATUS "Could not find libSERIAL 
-- please give some paths to CMake or make sure libSERIAL is installed in your system")
  ENDIF(SERIAL_FIND_REQUIRED)
ENDIF(SERIAL_FOUND)
