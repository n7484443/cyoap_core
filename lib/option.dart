class Option {
  static final Option _instance = Option._internal();
  factory Option(){
    return _instance;
  }
  Option._internal();

  String? Function(String? name)? convertToWebpFunction;
  String? convertToWebp(String? name){
    if(convertToWebpFunction == null){
      return name;
    }
    return convertToWebpFunction!(name);
  }
}