import 'dart:convert';

import 'package:cyoap_core/design_setting.dart';
import 'package:cyoap_core/preset/choice_node_preset.dart';
import 'package:test/test.dart';

void main() {
  test('PlatformDesignSettingTest', () {
    var expectedJson = [ChoiceNodeDesignPreset(name: 'default').toJson()];
    var expected = [ChoiceNodeDesignPreset(name: 'default')];

    var platformDesign = PlatformDesignSetting();
    var json = platformDesign.toJson();
    expect(json['choiceNodePresetList'], expectedJson);
    var jsonString = jsonEncode(json);
    var jsonDecoded = PlatformDesignSetting.fromJson(jsonDecode(jsonString));
    expect(jsonDecoded.choiceNodePresetList, expected);
  });
}
