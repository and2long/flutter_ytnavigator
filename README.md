<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

The interface navigation tools used in the YT team.

# Getting Started
Add this to your package's pubspec.yaml file:

```
dependencies:
  flutter_ytnavigator: 0.0.1
```

## Usage
### import package
`import 'package:flutter_ytnavigator/flutter_ytnavigator.dart';`

### Push Page
```dart
NavigatorUtil.push(
  context,
  const HomePage(),
);
```

### Add YTNavigatorObserver
When the interface changes, print the interface name in the log window.
```dart
MaterialApp(
    ...
    navigatorObservers: [YTNavigatorObserver()],
)
```