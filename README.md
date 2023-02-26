[![pub package](https://img.shields.io/pub/v/append_uri_component.svg)](https://pub.dev/packages/append_uri_component)
[![Build Status](https://github.com/flutter-cavalry/append_uri_component/workflows/Build/badge.svg)](https://github.com/flutter-cavalry/append_uri_component/actions)

Append a component to a Dart `Uri`.

## Usage

```dart
import 'package:append_uri_component/append_uri_component.dart';

void main() {
  var dirUri = Uri.directory('/a/b');
  print(dirUri.appendUriComponent('hello 🌏', isDirectory: true));
  // Prints 'file:///a/b/hello%20%F0%9F%8C%8F/'
}
```
