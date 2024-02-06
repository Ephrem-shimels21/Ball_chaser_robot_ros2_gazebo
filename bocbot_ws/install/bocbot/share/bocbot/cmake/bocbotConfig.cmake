# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_bocbot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED bocbot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(bocbot_FOUND FALSE)
  elseif(NOT bocbot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(bocbot_FOUND FALSE)
  endif()
  return()
endif()
set(_bocbot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT bocbot_FIND_QUIETLY)
  message(STATUS "Found bocbot: 0.0.0 (${bocbot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'bocbot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${bocbot_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(bocbot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${bocbot_DIR}/${_extra}")
endforeach()
