# 🔔 NotifyHub

A modern, clean Flutter application for browsing an e-commerce marketplace with a rich notification center. NotifyHub demonstrates a production-ready feature-based architecture using **BLoC/Cubit** for state management, **GoRouter** for navigation, and **Dio** for API communication.

---

## 📱 Screens & Features

### 🏠 Home Screen
- **Header** with greeting and profile info
- **Search bar** for product/store discovery
- **Category grid** with icons (Cosmetics, Food Delivery, Gifts, Meat, Medicines, Pet Supplies, Stationery, Stores)
- **Promotional banners** (promo deals, craze deals, refer & earn)
- **Trending section** for featured products
- **Nearby Stores section** with store cards

### 🔔 Notification Screen
- Fetches notifications from a **REST API** via Dio
- Displays notification tiles with image, title, body, and timestamp
- Full **loading / error / empty** state handling
- **Retry** button on API failure
- Smooth **fade + slide** page transition

### 🧭 Bottom Navigation
- Home, Cart, My Orders, Account — managed via `BottomNavCubit`
- Custom bottom nav bar with asset icon images
- Notification bell accessible from the home header

---

## 🏗️ Architecture

This project follows a **Feature-First Clean Architecture** pattern:

```
lib/
├── core/                        # Shared, reusable code
│   ├── constants/               # App-wide constants
│   │   ├── app_assets.dart      # Centralized asset paths
│   │   ├── app_colors.dart      # Color palette
│   │   ├── app_spacing.dart     # Spacing tokens
│   │   ├── app_typography.dart  # Text styles
│   │   └── api_constance.dart   # Base URLs / endpoints
│   ├── network/                 # Dio setup & interceptors
│   ├── utils/                   # Helper utilities
│   └── widgets/                 # Reusable shared widgets
│       ├── app_scaffold.dart
│       ├── app_app_bar.dart
│       ├── app_button.dart
│       ├── app_image.dart
│       ├── app_toast.dart
│       ├── app_loading_view.dart
│       ├── app_error_view.dart
│       └── app_empty_view.dart
│
├── features/
│   ├── home/
│   │   ├── view/
│   │   │   ├── screens/         # HomeScreen
│   │   │   └── widgets/         # CategoryGrid, PromoBanner, TrendingSection, etc.
│   │   └── view_model/
│   │       ├── bottom_nav_cubit.dart
│   │       └── home_cubit.dart
│   │
│   └── notification/
│       ├── data/                # API service & repository
│       │   ├── notification_api_services.dart
│       │   └── notification_repository.dart
│       ├── model/               # JSON-serializable models
│       │   └── notification_model.dart
│       ├── view/
│       │   ├── screens/         # NotificationScreen
│       │   └── widgets/         # NotificationTile, NotificationDetails
│       └── view_model/
│           └── bloc/            # NotificationBloc, Event, State
│
├── routes/
│   ├── app_router.dart          # GoRouter configuration
│   └── app_routes.dart          # Route path constants
│
└── main.dart                    # App entry point
```

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| [Flutter](https://flutter.dev) | Cross-platform UI framework |
| [flutter_bloc](https://pub.dev/packages/flutter_bloc) `^9.1.1` | BLoC / Cubit state management |
| [go_router](https://pub.dev/packages/go_router) `^17.5.0` | Declarative navigation & routing |
| [dio](https://pub.dev/packages/dio) `^5.11.1` | HTTP client for REST API calls |
| [google_fonts](https://pub.dev/packages/google_fonts) `^8.2.1` | Custom typography |
| [intl](https://pub.dev/packages/intl) `^0.20.3` | Date/time formatting |
| [equatable](https://pub.dev/packages/equatable) `^3.0.0` | Value equality for BLoC states |

---

## 🗺️ Navigation Routes

| Route | Screen |
|---|---|
| `/` | Home Screen |
| `/notifications` | Notification Screen |
| `/cart` | Cart View |
| `/my-order` | My Orders View |
| `/account` | Account View |

Navigation is handled by **GoRouter** with custom **fade + slide** transitions (300ms) on every route.

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK `^3.12.2`
- Dart SDK `^3.12.2`
- Android Studio / VS Code with Flutter plugin

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd notify_hub
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build

```bash
# Android APK
flutter build apk --release

# iOS (macOS only)
flutter build ios --release
```

---

## 📦 State Management

The app uses **BLoC pattern** throughout:

- **`BottomNavCubit`** — tracks the active bottom navigation tab index
- **`HomeCubit`** — manages home screen state
- **`NotificationBloc`** — handles async notification fetching with `FetchNotifications` event and `NotificationStatus` (loading / success / failure) states

---

## 📡 API Integration

Notifications are fetched from a remote REST API using **Dio**.
The data layer follows a **Repository Pattern**:

```
NotificationBloc
    └── NotificationRepository
            └── NotificationApiServices (Dio)
```

The `NotificationModel` supports full JSON serialization / deserialization.

---

## 🎨 Design System

All design tokens are centralized under `lib/core/constants/`:

- **Colors** → `AppColors`
- **Spacing** → `AppSpacing`
- **Typography** → `AppTypography`
- **Assets** → `AppAssets`

This ensures consistency and makes theme updates trivial.

---

## 📁 Assets

All image assets live in `assets/images/` and are referenced via the `AppAssets` constants class to avoid hardcoded strings scattered throughout the codebase.

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m "feat: add your feature"`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request

---

## 📄 License

This project is private and not published to pub.dev.
