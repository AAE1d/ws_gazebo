# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_nixbot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED nixbot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(nixbot_FOUND FALSE)
  elseif(NOT nixbot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(nixbot_FOUND FALSE)
  endif()
  return()
endif()
set(_nixbot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT nixbot_FIND_QUIETLY)
  message(STATUS "Found nixbot: 0.0.0 (${nixbot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'nixbot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${nixbot_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(nixbot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${nixbot_DIR}/${_extra}")
endforeach()
