echo "
set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_CMAKE_SYSTEM_NAME Android)
set(VCPKG_LIBRARY_LINKAGE static)
" > ./vcpkg/triplets/community/arm64-android.cmake

./gradlew assembleDebug

cat "/home/runner/work/usc-app/usc-app/vcpkg/buildtrees/detect_compiler/config-${VCPKG_TARGET_TRIPLET}-rel-err.log"
ls "/usr/local/lib/android/ndk/"