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

## Usage

```dart
import 'package:yt_navigation/navigator_util.dart';

NavigatorUtil.push(
  context,
  const HomePage(),
);
```

```dart
import 'package:yt_navigation/navigator_observer.dart';

MaterialApp(
    ...
    navigatorObservers: [NavigatorObserver()],
)
```