# DicDoc — Doctor Appointment App

A Flutter app foundation for booking doctor appointments. The current build covers the authentication flow (onboarding, sign in, sign up) wired to an HTTP backend using Retrofit, with clean layering and BLoC state management.

## System Design

<img width="707" height="476" alt="system design diagram" src="https://github.com/user-attachments/assets/2d86fab7-a86a-4f6f-91e6-cd56b6a9b6bb" />

## Features

- Onboarding screen
- Login with email/password via `POST /auth/login`
- Sign up via `POST /auth/register`
- Home screen
- Centralized error handling (`ApiResult`, timeout / no-internet / server error cases)
- Reusable UI: custom elevated button, custom text field
- Responsive sizing with `flutter_screenutil`

## Tech Stack

- Flutter / Dart
- `dio` + `retrofit` + `json_annotation` / `freezed` — networking and models
- `flutter_bloc` — state management (login & sign-up cubits)
- `get_it` — dependency injection
- `flutter_screenutil` — responsive UI
- `flutter_svg`, `flutter_native_splash`

## Architecture

The project follows a clean, layered structure per feature: **data** (models + repo), **logic** (cubit/state), and **ui** (screens + widgets), with shared infrastructure in `core/`.

```
lib/
├── core/
│   ├── di/               # get_it registrations
│   ├── Helpers/          # spacing, extensions
│   ├── Networking/       # dio factory, Retrofit services, error handling, ApiResult
│   ├── Routing/          # routes + AppRouter
│   ├── Theming/          # colors, styles, font weight helper
│   └── Widgets/          # reusable widgets
└── features/
    ├── onborading/       # onboarding
    ├── login/            # data / logic (cubit) / ui
    ├── sign_up/          # data / logic (cubit) / ui
    └── home/             # home screen
```

## Getting Started

```bash
git clone https://github.com/abdelrhamanadel4-Flutter/appointemnt.git
cd appointemnt
flutter pub get
flutter run
```

The backend base URL is configured in `lib/core/Networking/api_constants.dart`.