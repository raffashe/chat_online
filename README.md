# App Flutter - Chat Online

![chat_online](https://github.com/user-attachments/assets/36d2fd24-5852-4e58-abe3-ec5007709137)

## About the Project

The **Chat Online** is a simple chat application developed with **Flutter** and integrated with **Firebase** for authentication and real-time communication. It includes the following features:

- **Splash Screen**
- **Sign Up**
- **Login**
- **Conversations List**
- **Chat Screen**
- **Real-time Messaging**

### Features

- **UI Design**: Simple and intuitive interface.
- **Firebase Integration**: Integration with Firebase for authentication and data storage.
- **Firebase Authentication**: User authentication with email and password.
- **Firestore Database Integration**: Use of Firestore as the database for storing and retrieving conversations.
- **Realtime Chat Functionality**: Real-time chat with sending and receiving messages.
- **Unread Message Counter**: Counter for unread messages.
- **Last Message shown**: Displays the last message in the conversations list.
- **Error Handling**: Robust error handling.
- **Optimization and Best Practices**: Optimized code with best practices.
- **Enhancement & Debugging**: Continuous improvement and code debugging.
- **Provider State Management**: State management using Provider.
- **MVVM Architecture**: Architecture based on the MVVM pattern.

## Installation and Running the Project

Follow the steps below to set up and run the project on your machine:

### 1. Clone the repository
```bash
git clone https://github.com/raffashe/chat_online.git
cd chat_online
```

### 2. Install Flutter dependencies
```bash
flutter pub get
```

### 3. Set up Firebase
> **Note**: As the project is connected to Firebase, you will need to notify the developer to configure Firebase correctly in your testing environment. Contact them to get the configuration files (`google-services.json` for Android and `GoogleService-Info.plist` for iOS).

### 4. Run the project
```bash
flutter run
```

## Dependencies

The project uses the following dependencies:

| Dependency            | Version  | Description                                                              |
| --------------------- | -------- | ------------------------------------------------------------------------ |
| `firebase_core`       | ^3.8.0   | Flutter integration with Firebase for app initialization.                |
| `firebase_auth`       | ^5.3.3   | User authentication using Firebase Authentication.                       |
| `cloud_firestore`     | ^5.5.0   | Real-time NoSQL database provided by Firebase Firestore.                 |
| `firebase_storage`    | ^12.3.6  | File and media storage in Firebase Storage.                              |
| `provider`            | ^6.1.2   | Simple state management using the Provider approach.                     |
| `flutter_screenutil`  | ^5.9.3   | Tool for responsive UI design.                                           |
| `cupertino_icons`     | ^1.0.8   | Cupertino-style icon package for iOS.                                    |
| `flutter_lints` (dev) | ^4.0.0   | Recommended set of lints for good coding practices in Flutter.           |
| `flutter_test` (dev)  |          | Testing framework for Flutter applications.                              |

## Notes

- Firebase needs to be properly configured for the project to work. This includes adding Firebase configuration files for both Android and iOS.
- Make sure to use the compatible Flutter SDK version as specified in the `pubspec.yaml` file.

