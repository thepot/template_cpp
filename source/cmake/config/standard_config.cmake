# ===================================================
# Compiler options
# ===================================================
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# ===================================================
# Set output directories
# ===================================================
include(GNUInstallDirs)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_REPORTS_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/reports)
set(CMAKE_DOC_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/doc)