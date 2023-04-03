## 목차
1. [변수 정의 예제](#변수-정의-예제)
2. [함수 목록](#함수-목록)
3. [Todo List](#Todo-List)

## 변수 정의 예제
```javascript
// 주석은 이렇게 답니다. 이 기호 이후의 부분은 컴파일 되지 않습니다.
var i = 123
// var은 지역변수로, 가로 줄마다 초기화됩니다. 따라서 간단한 계산에 사용됩니다.
var d = -3.14
var b = true
var str = "가나다"
let e = not(b) 
// let은 전역변수로, cyoa 페이지 전체에서 통용되는 변수입니다.
```

## 함수 목록
```python
if(조건){
    조건이 참일 경우 실행 문장
}else{
    조건이 거짓일 경우 실행 문장
}
```
```python
for(i in 1..5){
    i는 1,2,3,4 이고, 5는 포함되지 않음.
    지역변수로 i가 선언되어 있음.
}
```
* ### and | bool → bool
    * 모든 값이 참일 때 참을 내보냅니다.
    * and(조건1, 조건2, true, false, 등등) → false
* ### or | bool → bool
    * 한개의 값이라도 참일 때 참을 내보냅니다.
    * or(조건1, 조건2, true, false, 등등) → true
* ### not | bool → bool
    * 값을 반전합니다.
    * not(false) → true
* ### floor | double → int
    * 값을 내림합니다.
    * floor(3.6) → 3
* ### round | double → int
    * 값을 반올림합니다.
    * round(3.6) → 4
* ### ceil | double → int
    * 값을 올림합니다.
    * ceil(3.6) → 4
* ### random | int → int
    * 랜덤값을 반환합니다. 0 ~ 입력값-1 이 나옵니다.
    * random(3) → 2
* ### exist | string → bool
    * 변수가 존재하는지 여부를 확인합니다.
    * exist("변수 이름") → true
* ### isVisible | string → bool
    * 변수가 숨겨져있는지 여부를 확인합니다.
    * isVisible("변수 이름") → true
* ### setVisible | string, bool
    * 변수를 숨기거나 보이게 합니다.
    * setVisible("변수 이름", false) → 변수가 숨겨짐
* ### 그 외의 기본 연산
    * +, -, *, / 의 사칙 연산
    * =, +=, -=, *=, /= 대입 연산
    * ==, !=, >, <, >=, <= 비교 연산
    * ~, &, |, ^, <<, >> 비트 연산




## Todo List
### 문법적 사양
현제는 선택지 제목을 띄워쓰기 없이 사용하고 있지만, 이는 영어로만 이루어진 경우 변수와 오류가 생길 수 있음.
따라서 $[선택지 이름] 형태로 변경 필요.
#### 기존
```javascript
if(선택지1){
    a = 1
}else{
    if(check){
        b = true;
    }else{
        c = false;
    }
}
```
#### 변경
```javascript
if($[선택지 1]){
    a = 1
}else if(check){
    b = true
}else{
    c = false
}
```
### 문법 오류 표시기 추가