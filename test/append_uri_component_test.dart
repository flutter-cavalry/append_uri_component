import 'package:append_uri_component/append_uri_component.dart';
import 'package:test/test.dart';

var fileUri = Uri.file('/a/b/一 ');
var dirUri = Uri.directory('/a/b/一 ');

void main() {
  test('file + file', () {
    expect(fileUri.appendUriComponent('🍉 ', isDirectory: false).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20');
  });
  test('file + dir', () {
    expect(fileUri.appendUriComponent('🍉 ', isDirectory: true).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20/');
  });
  test('dir + file', () {
    expect(dirUri.appendUriComponent('🍉 ', isDirectory: false).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20');
  });
  test('dir + dir', () {
    expect(dirUri.appendUriComponent('🍉 ', isDirectory: true).toString(),
        'file:///a/b/%E4%B8%80%20/%F0%9F%8D%89%20/');
  });
}
