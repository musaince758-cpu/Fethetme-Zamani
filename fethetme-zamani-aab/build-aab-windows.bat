@echo off
title Fethetme Zamani - AAB Build Araci
echo ====================================================
echo   FETHETME ZAMANI - GOOGLE PLAY AAB BUILD ARACI
echo ====================================================
echo.

where npm >nul 2>nul
if %errorlevel% neq 0 (
    echo [HATA] Node.js / npm bulunamadi! Lutfen Node.js kurun.
    pause
    exit /b 1
)

echo [1/4] Bagimliliklar yukleniyor...
call npm install

if not exist "android\gradlew.bat" (
    echo [2/4] Capacitor Android platformu olusturuluyor...
    call npx cap add android
    copy /Y "android_templates\gradle.properties" "android\gradle.properties"
    copy /Y "android_templates\app\build.gradle" "android\app\build.gradle"
    copy /Y "android_templates\app\fethetme-zamani-release.jks" "android\app\fethetme-zamani-release.jks"
)

echo [3/4] Oyun dosyalari (www) Android projesine aktariliyor...
call npx cap sync android

echo [4/4] Imzali Release AAB (app-release.aab) olusturuluyor...
cd android
call gradlew.bat bundleRelease

echo.
echo ====================================================
echo   ISLEM TAMAMLANDI!
echo   AAB Dosyasi: android\app\build\outputs\bundle\release\app-release.aab
echo ====================================================
pause
