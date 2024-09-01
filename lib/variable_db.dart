import 'grammar/value_type.dart';

typedef VariableChangeCallback = void Function();
typedef CheckListChangeCallback = void Function();

enum ValueTypeLocation { global, local, auto }

class VariableDataBase {
  static final VariableDataBase _instance = VariableDataBase._init();

  factory VariableDataBase() {
    return _instance;
  }

  VariableDataBase._init();

  var varMapGlobal = <String, ValueTypeWrapper>{};
  var varMapLocal = <String, ValueTypeWrapper>{};
  var visibleOrder = <String>[];

  VariableChangeCallback? variableChangeCallback;
  CheckListChangeCallback? checkListChangeCallback;

  void updateVariableTiles() {
    if (variableChangeCallback != null) {
      variableChangeCallback!();
    }
  }

  void updateCheckList() {
    if (checkListChangeCallback != null) {
      checkListChangeCallback!();
    }
  }

  void setValue(
      String name, ValueTypeWrapper value, ValueTypeLocation location) {
    var trim = name.trim();
    switch (location) {
      case ValueTypeLocation.global:
        varMapGlobal[trim] = value;
        break;
      case ValueTypeLocation.local:
        varMapLocal[trim] = value;
        break;
      case ValueTypeLocation.auto:
        if (varMapLocal.containsKey(name)) {
          varMapLocal[trim] = value;
        } else if (varMapGlobal.containsKey(name)) {
          varMapGlobal[trim] = value;
        }
        break;
    }
    updateVariableTiles();
  }

  void deleteValue(String name) {
    var trim = name.trim();
    if (varMapLocal.containsKey(trim)) {
      varMapLocal.remove(trim);
    } else {
      varMapGlobal.remove(trim);
    }
    updateVariableTiles();
  }

  bool hasValue(String name) {
    var trim = name.trim();
    return varMapLocal.containsKey(trim) || varMapGlobal.containsKey(trim);
  }

  ValueTypeWrapper? getValueTypeWrapper(String name) {
    var trim = name.trim();
    if (hasValue(trim)) {
      return varMapLocal[trim] ?? varMapGlobal[trim];
    }
    return null;
  }

  ValueType? getValueType(String name) {
    var trim = name.trim();
    return getValueTypeWrapper(trim)?.valueType;
  }

  @override
  String toString() {
    return varMapGlobal.toString();
  }

  void clear() {
    varMapGlobal.clear();
    varMapLocal.clear();
    visibleOrder.clear();
    updateVariableTiles();
    updateCheckList();
  }

  void clearLocalVariable() {
    varMapLocal.clear();
  }

  void initializeGlobalSetting(List<(String, ValueTypeWrapper)> globalSetting) {
    for (var (name, value) in globalSetting) {
      visibleOrder.add(name);
      VariableDataBase().setValue(name, value, ValueTypeLocation.global);
    }
  }
}
