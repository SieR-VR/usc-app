# git submodule install
git submodule update --init --recursive

if [ -e "${ANDROID_HOME}/ndk/21.4.7075529" ]
then
    echo "NDK Already exists. skip installation"
else
    echo "y" | ${ANDROID_HOME}/tools/bin/sdkmanager --install 'ndk;21.4.7075529'
fi 

echo "
set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_CMAKE_SYSTEM_NAME Android)
set(VCPKG_C_FLAGS -std=gnu11)
set(VCPKG_CXX_FLAGS -std=gnu++17)
" > ./vcpkg/triplets/community/arm64-android.cmake

# ./gradlew assembleDebug
# ./gradlew assembleDebug