# DicDoc — Doctor Appointment App 🩺

A Flutter app foundation for booking doctor appointments, with an authentication flow (onboarding, sign in, sign up) wired to an HTTP backend.

> This repository contains the client-side application. The current build covers the authentication journey; appointment features are being built on top of the same architecture.

## ✨ Overview

**DicDoc** is structured around a clean, layered architecture with shared infrastructure in `core/` and per-feature modules split into **data**, **logic**, and **ui**. Authentication talks to a REST backend using Dio + Retrofit, state is handled with BLoC cubits, and dependencies are resolved with `get_it`.

## 🚀 Features

- 📖 Onboarding screen with slides
- 🔐 Login with email/password via `POST /auth/login`
- 📝 Sign up via `POST /auth/register`
- 🏠 Home screen
- ⚠️ Centralized error handling (`ApiResult`): timeout, no-internet, and server error cases
- 🧩 Reusable UI: custom elevated button and custom text field
- 📐 Responsive sizing with `flutter_screenutil`

## 🛠️ Tech Stack

### Framework & Language

- Flutter
- Dart

### State Management & Architecture

- `flutter_bloc` — login & sign-up cubits
- `get_it` — dependency injection
- Feature-first structure with data / logic / ui layers
- Repository pattern

### Networking

- `dio` + `retrofit` — API services
- `json_annotation` + `freezed` — request/response models and states
- `logger` + `pretty_dio_logger` — logging

### UI & Design

- `flutter_screenutil` — responsive UI
- `flutter_svg` — vector assets
- `flutter_native_splash` — splash screen
- `custom_form_w` — form widgets

## 🎨 System Design

<img width="707" height="476" alt="system design diagram" src="https://github.com/user-attachments/assets/2d86fab7-a86a-4f6f-91e6-cd56b6a9b6bb" />

## 🏗️ Project Structure

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

## 📱 Application Version

Current project version: **0.1.0**

## 📸 Screenshots

Add screenshots here to showcase onboarding, login, sign up, and the home screen.

## ▶️ Getting Started

```bash
git clone https://github.com/abdelrhamanadel4-Flutter/appointemnt.git
cd appointemnt
flutter pub get
flutter run
```

## 📄 Note

The backend base URL and endpoints are configured in `lib/core/Networking/api_constants.dart`. The repository currently targets an external API base URL; update it to your own backend before production use.