import 'package:cyoap_core/grammar/analyser.dart';
import 'package:test/test.dart';

void main() {
  test('nested_test_0', () {
    String code = """
    if(환상학파:multi == 1){
      Point -= 10
      if(MagicLevel < 1){
        MagicLevel = 1
      }
    }else{
      if(환상학파:multi == 2){
        Point -= 25
        if(MagicLevel < 2){
          MagicLevel = 2
        }
      }else{
        if(환상학파:multi == 3){
          Point -= 60
      
          if(MagicLevel < 3){
            MagicLevel = 3
          }
        }else{
          if(환상학파:multi == 4){
            Point -= 85
      
            if(MagicLevel < 4){
              MagicLevel = 4
            }
          }
        }
      }
    }
    
    AbilityCount += 1
    MagicCount += 1 """;
    var result = Analyser().run(Analyser().analyseMultiLine(code));
    expect(result, true);

  });
}
