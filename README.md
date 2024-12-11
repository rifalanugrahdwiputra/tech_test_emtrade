# Tech Skill Emtrade

This project is a Flutter application built for managing tech skill-based tasks. Below are the steps to set up and run the app locally.

## Prerequisites

Before running the app, ensure you have the following installed:

- **Flutter**: Version 3.24.3
- **Dart SDK**: Version 3.5.3 (stable)
- **An IDE**: Android Studio, VS Code, or IntelliJ IDEA

Ensure that your environment configuration (e.g., `config/.dev.env` files, API keys) is set up correctly before running the app.

## Steps to Run the App

1. **Ensure Environment Configuration is Set Up**  
   Make sure your environment configuration (such as API keys, Firebase settings, etc.) is properly set up. You can check the project’s documentation or `.env` files for the necessary details.

2. **Clean the Project**  
   Run the following command to clean the Flutter project:
   ```bash
   flutter clean

3. **Get Dependencies**
   Fetch all the dependencies required for the project:
   ```bash
   flutter pub get
   
4. **Build Code Generators**
   If you're using code generation (e.g., with json_serializable), run the following command to generate the necessary files:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs

5. **Run the App**
   Finally, to run the app on an emulator or a connected device, use:
   ```bash
   flutter run
