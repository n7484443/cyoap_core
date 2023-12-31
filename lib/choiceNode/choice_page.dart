import 'choice.dart';
import 'choice_line.dart';

// TODO: page 시스템 구현
class ChoicePage extends Choice {
  List<ChoiceLine> lineSettings = List.empty(growable: true);

  ChoicePage(int page) {
    currentPos = page;
  }

  @override
  void generateParser() {}

  @override
  bool get isSelectableMode => true;

  @override
  void updateStatus() {}
}
