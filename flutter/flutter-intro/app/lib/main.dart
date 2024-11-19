// Import the Flutter material package, which provides the core UI components.
import 'package:flutter/material.dart';

void main() {
  // The main function is the entry point of the Flutter application.
  runApp(const MyApp()); // Run the MyApp widget as the root of the application.
}

// Define a stateless widget, MyApp, which is the root of the application.
class MyApp extends StatelessWidget {
  // Use a constant constructor for MyApp.
  const MyApp({super.key});

  // The build method describes the UI structure.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp is the base widget for a Flutter app using Material Design.
      title: 'Flutter Demo', // Sets the title of the app (used on Android task manager).
      
      theme: ThemeData(
        primarySwatch: Colors.blue, // Sets the primary color of the app.
      ),
      
      home: const HomeScreen(), // Sets the initial screen (HomeScreen) when the app starts.
    );
  }
}

// Define another stateless widget, HomeScreen, which represents the main screen of the app.
class HomeScreen extends StatelessWidget {
  // Use a constant constructor for HomeScreen.
  const HomeScreen({super.key});

  // The build method describes the UI for HomeScreen.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides a basic visual structure with an AppBar and a body.
      appBar: AppBar(
        title: const Text('Demo App'), // Title displayed in the app bar.
      ),
      
      body: const Center(
        // Center widget centers its child widget within itself.
        child: Text(
          'Hello, Flutter!', // The text displayed on the screen.
          style: TextStyle(fontSize: 24), // Sets the font size of the text.
        ),
      ),
    );
  }
}
