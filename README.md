
# Spotify Clone 🎧

A full-featured Spotify clone built with Flutter using Clean Architecture and the VLoC (View, Logic, Controller) pattern. The app leverages Hydrated Bloc for state management with persisted state and Firebase as the backend service for authentication, storage, and more.


## Features

- 🎵 **Music Streaming**: Stream music from a vast library of songs.
- 📂 **Playlist Management**: Create, edit, and manage playlists.
- ❤️ **Favorites**: Mark your favorite songs and access them easily.
- 🔍 **Search**: Find your favorite songs, artists, and albums quickly.
- 🔄 **Offline Mode**: Download songs to listen offline.
- 🌗 **Theme Support**: Switch between light and dark themes.
- 🔐 **Secure Authentication**: Sign in using Firebase Authentication.
- 💾 **Persisted State**: Hydrated Bloc ensures the app state is persisted across sessions.

## Project Structure

This project follows Clean Architecture principles along with the VLoC (View, Logic, Controller) pattern.

```
lib/
├── core/
│   ├── configs/        # Theme, assets, and other configurations
│   ├── utils/          # Utility classes and functions
│   └── widgets/        # Reusable UI components
├── data/
│   ├── models/         # Data models and entities
│   ├── repositories/   # Repository interfaces and implementations
│   └── sources/        # Remote and local data sources
├── domain/
│   ├── entities/       # Business entities
│   ├── usecases/       # Interactors or use cases
│   └── repositories/   # Domain layer repository interfaces
├── presentation/
│   ├── blocs/          # State management using Hydrated Bloc
│   ├── pages/          # UI pages or screens
│   └── widgets/        # Widgets specific to the presentation layer
├── app.dart            # Application entry point
└── main.dart           # Main function and app initialization
```

## Getting Started

### Prerequisites

- Flutter SDK
- Firebase account

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/spotify-clone.git
   ```
2. Navigate to the project directory:
   ```bash
   cd spotify-clone
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```

### Firebase Setup

1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Create a new project and add your app to it.
3. Download the `google-services.json` file and place it in the `android/app` directory.
4. Configure Firebase for iOS by downloading `GoogleService-Info.plist` and placing it in the `ios/Runner` directory.

### Running the App

- Run the app on your preferred device/emulator:
  ```bash
  flutter run
  ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.