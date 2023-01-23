# Hybrid

Native apps with integrated RN views (ft. Instabug)

## Helpful commands

1. Allow Android emulator to connect to metro
    ```bash
    adb reverse tcp:8081 tcp:8081
    ```

1. Build Release APK
    ```bash
    npx react-native bundle \
        --platform android \
        --dev false \
        --entry-file index.js \
        --bundle-output android/app/src/main/assets/index.android.bundle \
        --assets-dest android/app/src/main/res
    ```