extension UriExtension on Uri {
  Uri appendUriComponent(String component, {required bool isDirectory}) {
    var s = toString();
    if (!s.endsWith('/')) {
      s += '/';
    }
    return Uri.parse(
        '$s${Uri.encodeComponent(component)}${isDirectory ? '/' : ''}');
  }
}
