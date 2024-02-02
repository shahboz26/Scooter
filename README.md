
# scooter



# Overview
Scuter is a Flutter-based mobile application designed to facilitate electric scooter rentals. The app offers a seamless interface for users to sign up, log in, locate scooters, and manage rentals. This document provides a comprehensive guide to understanding the Scuter app's architecture, functionality, and development environment.

# System requirements
Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

# Project structure
android/: Android-specific implementation.
ios/: iOS-specific implementation.
lib/: Dart source files.
core/: Core functionalities including utilities and services.
presentation/: UI screens and widgets.
routes/: Navigation and route management.
theme/: Application-wide theme data.
widgets/: Custom reusable widgets.
assets/: Images, fonts, and other assets.
test/: Dart unit and widget tests.

# Installation
Clone the repository:
git clone https://github.com/shahboz26/scooter.git

Navigate to the project directory:
cd scooter

Get Flutter dependencies:
flutter pub get

Run the app:
flutter run

# Screens and Navigation
## Sign Up and Login
Sign Up Screen (lib/presentation/sign_up_screen/sign_up_screen.dart): Allows new users to create an account. Integrates with Firebase Authentication for user management.
Login Screen (lib/presentation/log_in_screen/log_in_screen.dart): Enables existing users to log in using their credentials. Utilizes Firebase Authentication.
## Home and Rental Management
Home Screen (lib/presentation/home_screen/home_screen.dart): Displays available scooters and allows users to initiate rentals.
Rental Screen (lib/presentation/rent_screen/rent_screen.dart): Users can manage their active rentals and view rental history.
## Additional Screens
Profile, Payment, History, etc.: Detailed explanations of each screen, their functionalities, and navigation flow.
## Networking and Database Interaction
The Scuter app interacts with backend services for authentication, scooter management, and user profiles. 
It primarily uses Firebase for these purposes:
Firebase Authentication: Manages user sign-up, login, and authentication.
Cloud Firestore: Stores and retrieves scooter availability, user profiles, and rental history.
Firebase Storage: Hosts app assets like scooter images.

# About application
I(Shahboz Safoyev) work as a graphic designer, therefore I made application's design with simple UI/UX so it's easier to use and looks neat. 
I didn't have any experience with coding, so during the coding process I faced some troubles which were not as easy to fix(I hope you will take a note) but we with my teammate Dilnoza did our best!





                    


