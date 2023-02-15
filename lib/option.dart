class Option {
  static final Option _instance = Option._internal();
  factory Option() {
    return _instance;
  }
  Option._internal();

  bool isDebugMode = false;
  bool enableSelectLog = false;
  bool enableCode = false;
  bool enableToken = false;
  bool enableRecursiveStack = false;
  bool enableRecursiveResult = false;
  String? locale;
}
