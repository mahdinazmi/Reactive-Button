# Reactive Button Package

This package provides a customizable button widget with built-in loading, success, and failure states. It's designed to work with Flutter's `Bloc` architecture and allows you to pass your own functions for handling success and failure.

## Features
- Display a loading indicator when the button is pressed.
- Automatically handle success and failure states.
- Pass custom actions to be executed on button press.
- Easily customize what happens when the action succeeds or fails via callbacks.

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  reactive_button: ^0.0.1

Run `flutter pub get` to install the package.

## Usage

Here is an example of how to use the `Reactive Button` widget:

```dart
import 'package:reactive_button/reactive_button.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Button Example'),
      ),
      body: Center(
        child: ReactiveButton(
          onPressed: onPressed,
          title: 'Submit',
          onSuccess: () {
            print('Action succeeded!');
          },
          onFailure: (String error) {
            print('Action failed: $error');
          },
        ),
      ),
    );
  }
}
```

## License

This package is licensed under the MIT License.  
