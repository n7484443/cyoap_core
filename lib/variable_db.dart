import 'dart:collection';

import 'grammar/value_type.dart';

typedef VariableChangeCallback = void Function();
typedef CheckListChangeCallback = void Function();

enum ValueTypeLocation { global, auto }

class StackFrame {
  final Map<String, ValueTypeWrapper> _variableMap =
      <String, ValueTypeWrapper>{};
  ValueTypeWrapper? _returnValue;

  StackFrame();

  void set(String name, ValueTypeWrapper value) {
    _variableMap[name] = value;
  }

  void remove(String name) {
    _variableMap.remove(name);
  }

  ValueTypeWrapper? get(String name) {
    return _variableMap[name];
  }

  bool containsKey(String name) {
    return _variableMap.containsKey(name);
  }

  void setReturnValue(ValueTypeWrapper value) {
    _returnValue = value;
  }

  ValueTypeWrapper? getReturnValue() {
    return _returnValue;
  }

  @override
  String toString() => _variableMap.toString();

  Map<String, ValueTypeWrapper> getVariableMap() {
    return _variableMap;
  }
}

class VariableDataBase {
  Queue<StackFrame> stackFrames = Queue<StackFrame>();

  StackFrame enterStackFrame() {
    var child = StackFrame();
    stackFrames.add(child);
    return child;
  }

  ValueTypeWrapper? exitStackFrame() {
    var output = stackFrames.last.getReturnValue();
    stackFrames.removeLast();
    return output;
  }

  void clearStackFrames() {
    stackFrames.clear();
  }

  (StackFrame, ValueTypeWrapper)? findVariable(String name) {
    for (var index = stackFrames.length - 1; index >= 0; index--) {
      var stackFrame = stackFrames.elementAt(index);
      if (stackFrame.containsKey(name)) {
        return (stackFrame, stackFrame.get(name)!);
      }
    }
    return null;
  }

  static final VariableDataBase _instance = VariableDataBase._init();

  factory VariableDataBase() {
    return _instance;
  }

  VariableDataBase._init();

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
    if (location == ValueTypeLocation.auto) {
      var out = findVariable(trim);
      if (out == null) {
        stackFrames.last.set(name, value);
        updateVariableTiles();
        return;
      }
      var (stackframe, variable) = out;
      stackframe.set(trim, value);
    } else {
      stackFrames.first.set(trim, value);
    }
    updateVariableTiles();
  }

  void deleteValue(String name) {
    var trim = name.trim();
    var out = findVariable(trim);
    if (out != null) {
      var (stackframe, variable) = out;
      stackframe.remove(trim);
    }
    updateVariableTiles();
  }

  bool hasValue(String name) {
    var trim = name.trim();
    var out = findVariable(trim);
    return out != null;
  }

  ValueTypeWrapper? getValueTypeWrapper(String name) {
    var trim = name.trim();
    var out = findVariable(trim);
    if (out != null) {
      var (stackframe, variable) = out;
      return variable;
    }
    return null;
  }

  ValueType? getValueType(String name) {
    return getValueTypeWrapper(name)?.valueType;
  }

  @override
  String toString() {
    return stackFrames.toString();
  }

  void clear() {
    visibleOrder.clear();
    updateVariableTiles();
    updateCheckList();
  }

  void initializeGlobalSetting(List<(String, ValueTypeWrapper)> globalSetting) {
    clearStackFrames();
    var stackFrame = enterStackFrame();
    for (var (name, value) in globalSetting) {
      visibleOrder.add(name);
      stackFrame.set(name, value);
    }
  }
}
