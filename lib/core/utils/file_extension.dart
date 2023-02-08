class FileExtension {
  static String getExtensionFile(String url) {
    return url.split('.').last;
  }
}
