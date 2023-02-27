extension UriExtension on Uri {
  /// Appends a list of path components to the URI.
  Uri appendUriComponents(List<String> components,
      {required bool isDirectory}) {
    var s = toString();
    if (s.endsWith('/')) {
      s = s.substring(0, s.length - 1);
    }
    for (final comp in components) {
      s += '/${Uri.encodeComponent(comp)}';
    }
    if (isDirectory) {
      s += '/';
    }
    return Uri.parse(s);
  }

  /// Appends a path component to the URI.
  Uri appendUriComponent(String component, {required bool isDirectory}) {
    return appendUriComponents([component], isDirectory: isDirectory);
  }
}
