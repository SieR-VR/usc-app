# git submodule install
git submodule update --init --recursive

echo "
set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_CMAKE_SYSTEM_NAME Android)
" > $VCPKG_ROOT/triplets/community/arm64-android.cmake

./gradlew assembleDebug