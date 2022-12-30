enum SelectableStatus {
  //isSelectable가 false 인 경우에는 open과 hide 두가지로 사용
  hide, //숨긴 상태
  open, //선택 가능한 상태
  closed, //약간 흐릿하면서 선택 불가능한 상태
}

extension SelectableStatusExtension on SelectableStatus {
  bool isHide() {
    return this == SelectableStatus.hide;
  }

  bool isOpen() {
    return this == SelectableStatus.open;
  }

  bool isClosed() {
    return this == SelectableStatus.closed;
  }

  bool isPointerInteractive(bool isSelectable) {
    if (isSelectable) {
      return isOpen();
    }
    return false;
  }
}
