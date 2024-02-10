import 'analyser_const.dart';

class TokenData {
  AnalyserConst type;
  String dataString;

  TokenData(this.type, {this.dataString = ""});

  TokenData changeUnitType(AnalyserConst newType) {
    return TokenData(newType, dataString: dataString);
  }

  void addUnitData(String newData) {
    dataString += newData;
  }

  @override
  String toString() {
    return '$type : $dataString';
  }

  dynamic get data {
    switch (type) {
      case AnalyserConst.ints:
        return int.tryParse(dataString);
      case AnalyserConst.doubles:
        return double.tryParse(dataString);
      case AnalyserConst.bools:
        return dataString == 'true';
      default:
        return dataString;
    }
  }

  bool get isString {
    return type == AnalyserConst.strings;
  }

  bool get isDouble {
    return type == AnalyserConst.doubles;
  }

  bool get isInt {
    return type == AnalyserConst.ints;
  }

  Map<String, dynamic> toJson() {
    return {"type": type.toString(), "dataString": dataString};
  }
}
