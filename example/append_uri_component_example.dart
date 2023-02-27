import 'package:append_uri_component/append_uri_component.dart';

void main() {
  var dirUri = Uri.directory('/a/b');
  print(dirUri.appendUriComponent('hello 🌏', isDirectory: true));
  // 'file:///a/b/hello%20%F0%9F%8C%8F/'

  print(dirUri.appendUriComponents(['a', 'b', 'c'], isDirectory: false));
  // 'file:///a/b/a/b/c'
}
