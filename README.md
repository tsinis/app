[![codecov](https://codecov.io/gh/tsinis/app/graph/badge.svg?token=03NKJBVT6F)](https://app.codecov.io/gh/tsinis/app/flags)
![CodeRabbit Pull Request Reviews](https://img.shields.io/coderabbit/prs/github/tsinis/app?labelColor=171717&color=FF570A&link=https%3A%2F%2Fcoderabbit.ai&label=CodeRabbit%20Reviews)
[![License MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# app

A cross-platform app using `drift` for local persistence.

> [!TIP]
> On this website [tsin.is/app](https://tsin.is/app), you will find a limited demo of the app that should run on the latest browsers only. You can find the APK release in the [Releases](https://github.com/tsinis/app/releases) section.

## Supported platforms

This app runs on:

- iOS
- macOS
- Android (universal APK is provided in releases)
- Web (with mocked response data due to CORS)
- Linux (not tested)
- Windows (not tested)

## Setup

> [!WARNING]
> Flutter SDK version 3.29.0 is needed for this app.

1. Clone the repository:

```shell
git clone https://github.com/tsinis/app.git && cd app
```

2. Install dependencies:

```shell
flutter pub get
```

3. Generate code (Optional) - navigate to the packages or app and:

```shell
dart run build_runner build -d
```

## Running the App

> [!CAUTION]
> For non-web builds it's crucial to provide `BASE_URL` via `dart-define`!
>
> Use `flutter run --dart-define=BASE_URL=https://example.com` command or
> set this URL in environment variables to the [app/.env/secret.env](app/.env/) and
> run with `flutter run --dart-define-from-file=.env/secret.env` command.,

To run the app on a specific platform, use the following commands (from the root folder):

```shell
cd app && flutter run --dart-define-from-file=.env/secret.env
```

- or without .env file:

```shell
cd app && flutter run --dart-define=BASE_URL=https://example.com
```

> [!IMPORTANT]
> To prevent any "works on my machine" issues, please make sure you have up-to-date native dependencies (cocoapods, gradle, etc.).

If you just want to quickly bootstrap and play around on the web with mocked response (due to CORS):

```shell
cd app && flutter run -d chrome --wasm
```

## Testing

Run unit and widget tests with the following command from any of the packages/app directory:

```shell
flutter test
```

## Architecture

The app is organized with layers for data, domain, and presentation plus related local packages in Dart Workspace. Navigation is managed with the Auto Route package, state management is handled using the BLoC library. Local storage is implemented using Drift for SQLite.

## Key Design Decisions

The app's architecture and design were carefully considered to ensure a robust, maintainable, and user-friendly experience. Here are the key design decisions:

1. **State Management**: The BLoC (Business Logic Component) library is utilized to manage the app's business logic, handle API calls, and manage various app states such as loading, success, and error. This approach ensures a clear separation of concerns and makes the app's state management predictable and testable.

2. **Navigation**: The Auto Route package is employed for navigation between screens and managing tab-based navigation. This package simplifies the routing process and provides a structured way to handle navigation within the app.

3. **Local Storage**: Drift is used for local storage to save favorite hotels. Drift provides a powerful and flexible way to manage local databases, ensuring that users' favorite hotels are stored efficiently and can be accessed quickly.

4. **Error Handling**: The app includes simple error states that are displayed if API calls fail to fetch hotel data. This ensures that users are informed of any issues and can take appropriate action, such as retrying the request.

5. **Design**: The app follows the provided design for hotel cards and the favorites screen. Simple placeholders are used for loading and error states, ensuring a consistent and user-friendly interface.

## Optional / Bonus Features

In addition to the core features, the app includes some optional and bonus features:

1. **Deep Linking**: The app supports deep linking, allowing it to open directly to a specific tab. This enhances the user experience by providing quick access to specific parts of the app.

## Deliverables

The project deliverables include the following:

1. GitHub Repository:

   - The repository contains the full project code and necessary assets.
   - This README file is included, explaining how to set up, run, and test the app.
   - A detailed explanation of the app's architecture and key design decisions is provided.
   - Link to the demo (limited) web-site.

2. Unit and Widget Tests:

   - Comprehensive unit tests are provided for the business logic.
   - Widget tests are included to ensure the UI behaves as expected.
