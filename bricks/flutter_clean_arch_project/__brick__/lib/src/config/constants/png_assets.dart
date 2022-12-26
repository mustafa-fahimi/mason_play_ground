class PngAssets {
  const PngAssets._();

  static String get successAsset => 'success'.png;
}

extension on String {
  String get png => 'assets/images/png/$this.png';
}
