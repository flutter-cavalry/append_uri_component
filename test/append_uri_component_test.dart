import 'package:append_uri_component/append_uri_component.dart';
import 'package:test/test.dart';

var fileUri = Uri.file('/a/b/δΈ ');
var dirUri = Uri.directory('/a/b/δΈ ');

void main() {
  test('file + file', () {
    expect(fileUri.appendUriComponent('π ', isDirectory: false).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20');
  });
  test('file + dir', () {
    expect(fileUri.appendUriComponent('π ', isDirectory: true).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20/');
  });
  test('dir + file', () {
    expect(dirUri.appendUriComponent('π ', isDirectory: false).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20');
  });
  test('dir + dir', () {
    expect(dirUri.appendUriComponent('π ', isDirectory: true).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20/');
  });

  test('multiple components', () {
    expect(
        dirUri.appendUriComponents(['π ', 'a', 'π'],
            isDirectory: true).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20/a/%F0%9F%8C%8F/');
  });
}
