# Copilot Instructions for _263_firebase Flutter Project

## Project Overview
- This is a Flutter mobile app using Firebase (Realtime Database) for backend data storage and sync.
- Main app logic is in `lib/main.dart`. Data model is in `lib/Kİsiler.dart`.
- The app demonstrates CRUD operations on a `kisiler_tablo` node in Firebase.

## Architecture & Data Flow
- App entry: `main()` in `lib/main.dart` initializes Firebase and launches `MyApp`.
- UI: `MyHomePage` widget manages state and interacts with Firebase.
- Data model: `Kisiler` class in `lib/Kİsiler.dart` (note: Turkish naming convention).
- Firebase operations (add, update, delete, listen) are implemented as methods in `_MyHomePageState`.
- Data is stored as a map with keys `ad` and `yas` (Turkish for name and age).

## Developer Workflows
- **Build:**
  - Run: `flutter run` (default target: Android/iOS)
  - Build APK: `flutter build apk`
  - Build iOS: `flutter build ios`
- **Test:**
  - Run widget tests: `flutter test`
  - Main test file: `test/widget_test.dart`
- **Firebase Setup:**
  - Android config: `android/app/google-services.json`
  - iOS config: `ios/Runner/GoogleService-Info.plist` (not present, add if needed)
- **Assets:**
  - Launch images: `ios/Runner/Assets.xcassets/LaunchImage.imageset/`

## Conventions & Patterns
- Turkish variable/class names (e.g., `Kisiler`, `kisiEkle`, `yas`).
- Firebase node: `kisiler_tablo`.
- Data is handled as `HashMap<String, dynamic>` for Firebase operations.
- CRUD methods are not abstracted into separate services; all logic is in the main widget state.
- Uses `onValue.listen` for real-time updates from Firebase.

## External Dependencies
- `firebase_core`, `firebase_database` (see `pubspec.yaml`)
- `cupertino_icons` for iOS style icons

## Key Files & Directories
- `lib/main.dart`: App entry, UI, Firebase logic
- `lib/Kİsiler.dart`: Data model
- `android/app/google-services.json`: Firebase config (Android)
- `ios/Runner/Assets.xcassets/`: iOS launch assets
- `test/widget_test.dart`: Example widget test
- `pubspec.yaml`: Dependencies and project metadata

## Example: Adding a Person to Firebase
```dart
Future<void> kisiEkle() async {
  var bilgi = HashMap<String, dynamic>();
  bilgi["ad"] = "Mahmut";
  bilgi["yas"] = 25;
  refKisiler.push().set(bilgi);
}
```

## Tips for AI Agents
- Respect Turkish naming and data conventions.
- When adding new features, keep Firebase logic in the main widget unless refactoring is requested.
- For new models, follow the pattern in `Kisiler`.
- Always update `pubspec.yaml` for new dependencies.
- Use real-time listeners (`onValue.listen`) for live data sync.

---
If any section is unclear or missing, please provide feedback to improve these instructions.
