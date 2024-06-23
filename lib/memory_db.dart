import 'dart:collection';

const initialMemory = 1000;

class MemoryDb {
  static final MemoryDb _instance = MemoryDb._internal();

  factory MemoryDb() => _instance;

  MemoryDb._internal();

  List<dynamic> _heapMemory = [];
  DoubleLinkedQueue<dynamic> _stackMemory = DoubleLinkedQueue();

  void clear() {
    clearHeapMemory();
    clearStackMemory();
  }

  int addHeapMemory(dynamic value) {
    for (int address = 0; address < _heapMemory.length; address++) {
      if (_heapMemory[address] == null) {
        _heapMemory = value[address];
        return address;
      }
    }
    var address = _heapMemory.length;
    _heapMemory.add(value);
    return address;
  }

  void setHeapMemory(int address, dynamic value) {
    _heapMemory[address] = value;
  }

  dynamic getHeapMemory(int address, dynamic value) {
    return _heapMemory[address];
  }

  void clearHeapMemory() {
    _heapMemory = [];
  }

  void pushStackMemory(dynamic value) {
    _stackMemory.addLast(value);
  }

  dynamic popStackMemory(int address, dynamic value) {
    return _stackMemory.removeLast();
  }

  dynamic peekStackMemory() {
    return _stackMemory.last;
  }

  dynamic isEmptyStackMemory() {
    return _stackMemory.isEmpty;
  }

  void clearStackMemory() {
    _stackMemory = DoubleLinkedQueue();
  }
}
