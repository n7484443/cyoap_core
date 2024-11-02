import 'dart:convert';

import 'package:cyoap_core/design_setting.dart';
import 'package:cyoap_core/preset/node_preset.dart';
import 'package:test/test.dart';

void main() {
  test('PlatformDesignSettingTest', () {
    var expectedJson = {"default" : ChoiceNodeDesignPreset().toJson()};
    var expected = {"default" : ChoiceNodeDesignPreset()};

    var platformDesign = PlatformDesignSetting();
    var json = platformDesign.toJson();
    expect(json['choiceNodePresetMap'], expectedJson);
    var jsonString = jsonEncode(json);
    var jsonDecoded = PlatformDesignSetting.fromJson(jsonDecode(jsonString));
    expect(jsonDecoded.choiceNodePresetMap, expected);
  });
}
