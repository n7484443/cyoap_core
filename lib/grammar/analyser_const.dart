enum AnalyserConst {
  /// 정수
  ints,

  /// 소수점 붙음
  doubles,

  /// boolean
  bools,

  /// string, "" 혹은 ''로 판단
  strings,

  /// 판단 X
  unspecified,

  /// 변수 사용
  variableName,

  /// 전역 변수 설정, let
  variableLet,

  /// 지역 변수 설정, var
  variableVar,

  loadAddress,

  functionFront,
  functionCenter,
  function,

  /// (
  functionStart,

  /// )
  functionEnd,

  /// |
  functionEndMarker,

  /// ,
  functionComma,

  /// else
  functionElse,

  /// {
  blockStart,

  /// }
  blockEnd,

  /// [
  listStart,

  /// ]
  listEnd,

  /// ;
  lineEnd,

  ///break
  keywordBreak,

  ///break
  keywordContinue;

  @override
  String toString() {
    return name;
  }
}
