#!/usr/bin/env bash
set -e

echo "===================================================="
echo "  FETHETME ZAMANI - GOOGLE PLAY AAB BUILD ARACI"
echo "===================================================="

npm install

if [ ! -f "android/gradlew" ]; then
  npx cap add android
  cp -f android_templates/gradle.properties android/gradle.properties
  cp -f android_templates/app/build.gradle android/app/build.gradle
  cp -f android_templates/app/fethetme-zamani-release.jks android/app/fethetme-zamani-release.jks
fi

npx cap sync android
cd android
chmod +x gradlew
./gradlew bundleRelease

echo "AAB Hazır: android/app/build/outputs/bundle/release/app-release.aab"
