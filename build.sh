# git submodule install
git submodule update --init --recursive

echo "
set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_CMAKE_SYSTEM_NAME Android)
set(VCPKG_C_FLAGS -std=c99)
set(VCPKG_CXX_FLAGS -std=c++17)
" > ./vcpkg/triplets/community/arm64-android.cmake

export ANDROID_NDK_HOME="/home/sier/android-sdk/ndk/21.4.7075529"

./gradlew assembleDebug