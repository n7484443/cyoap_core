## Todo List

### 문법적 사양

현제는 선택지 제목을 띄워쓰기 없이 사용하고 있지만, 이는 영어로만 이루어진 경우 변수와 오류가 생길 수 있음.
따라서 $[선택지 이름] 형태로 변경 필요.

#### 기존

```javascript
if (선택지1) {
    a = 1
} else {
    if (check) {
        b = true;
    } else {
        c = false;
    }
}
```

#### 변경

```javascript
if ($[선택지 1
])
{
    a = 1
}
else
if (check) {
    b = true
} else {
    c = false
}
```

### 문법 오류 표시기 추가