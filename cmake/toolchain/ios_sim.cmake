set(CMAKE_SYSTEM_NAME iOS)

set(CMAKE_OSX_ARCHITECTURES arm64 x86_64)
set(CMAKE_OSX_DEPLOYMENT_TARGET 15.0)
set(CMAKE_OSX_SYSROOT iphonesimulator)
set(CMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH NO)

set(OPENSSL_CONFIGURE_OPTIONS
    -mios-simulator-version-min=${CMAKE_OSX_DEPLOYMENT_TARGET}
    "-arch arm64"
    "-arch x86_64"
    no-asm
    no-tests
)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)