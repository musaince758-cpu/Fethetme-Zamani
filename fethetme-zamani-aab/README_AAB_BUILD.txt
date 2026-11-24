FETHETME ZAMANI — ANDROID APP BUNDLE (.AAB) PAKETİ
====================================================

YÖNTEM 1: Bilgisayarında Tek Tıkla AAB Alma (Windows / Mac / Linux)
1. ZIP klasörünü dışarı çıkart.
2. Windows için `build-aab-windows.bat` dosyasına çift tıkla (Mac/Linux için `bash build-aab-mac-linux.sh`).
3. Çıktı: `android/app/build/outputs/bundle/release/app-release.aab`

YÖNTEM 2: Bilgisayara Android Studio Kurmadan Bulutta AAB Alma (GitHub Actions)
1. Bu klasörü özel (Private) bir GitHub deposuna yükle.
2. GitHub'da Actions -> Build Signed Android AAB -> Run workflow butonuna tıkla.
3. Oluşan `fethetme-zamani-release-aab` paketini indirip Google Play Console'a yükle.
