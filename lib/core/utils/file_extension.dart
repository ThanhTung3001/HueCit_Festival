class FileExtension {
  static String getExtensionFile(String url) {
    return url.split('.').last;
  }

  static String getFileNameFromUrl(String url) {
    final uri = Uri.parse(url);
    final pathSegments = uri.pathSegments;
    return pathSegments.isNotEmpty ? pathSegments.last : "thuml_1";
  }
}
