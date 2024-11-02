abstract class CodeBlock {
  List<CodeBlock> fromCode(String code);

  String toCode(List<CodeBlock> code);
}

//CodeBlock 은 크게 if, else, for, setter, function, return 정도

class IfBlock implements CodeBlock {
  List<CodeBlock>? condition; // n 개
  List<List<CodeBlock>>? ifBlock; // n + 1 개
  @override
  String toCode(List<CodeBlock> code) {
    List<String> conditionCode = condition!.map((e) => e.toCode(code)).toList();
    List<String> ifBlockCode = ifBlock!.map((e) => e.map((e) => e.toCode(code)).join()).toList();
    String output = '';
    for(int i = 0; i < conditionCode.length; i++){
      if(i != 0){
        output += 'else if(${conditionCode[i]}){\n${ifBlockCode[i]}\n}';
      }else{
        output += 'if(${conditionCode[i]}){\n${ifBlockCode[i]}\n}';
      }
    }
    if(conditionCode.length != ifBlockCode.length){
      output += 'else{\n${ifBlockCode.last}\n}';
    }
    return output;
  }

  @override
  List<CodeBlock> fromCode(String code) {
    throw UnimplementedError();
  }
}
