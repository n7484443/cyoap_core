enum AnalyserConst {
  /// 정수
  ints,

  /// 소수점 붙음
  doubles,

  /// boolean
  bools,

  /// string, "" 혹은 ''로 판단
  strings,

  /// list, []로 판단
  lists,

  /// 변수 사용
  variableName,
  loadAddress,
  functionFront,
  function,

  assignExtension,

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

  keywordBreak,
  keywordContinue,
  keywordIf,
  keywordIfCondition,
  keywordElse,
  keywordFor,
  keywordTo,
  keywordReturn,
  keywordIn,
  keywordDot,

  //for block
  lines,

  /// 지역 변수 설정, var
  /// 전역 변수 설정, let
  setter;

  @override
  String toString() {
    return name;
  }
}
