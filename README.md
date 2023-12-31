# hello, world

!["Hello, World!" program by Brian Kernighan (1978)](Hello_World_Brian_Kernighan_1978.jpg)

Let's start new programming language with ["hello, world"](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program)!

## Supported Languages

3 language supported  

([C](#in-C) / [LLVM IR](#in-LLVM-IR) / [IchigoJam BASIC](#in-IchigoJam-BASIC))

## How to run

### in C

[C](https://en.wikipedia.org/wiki/C_(programming_language))

main.c
```c
#include <stdio.h>

int main() {
  printf("hello, world\n");
  return 0;
}
```

setup:
```bash
$ brew install llvm
```

to run:
```bash
$ clang main.c; ./a.out
```

### in LLVM-IR

[LLVM IR](https://llvm.org/docs/LangRef.html)

main.ll
```
declare dso_local i32 @printf(ptr, ...)

@.str.mes = private unnamed_addr constant [14 x i8] c"hello, world\0a\00"

define dso_local i32 @main(i32 %argc, i8** %argv) {
  call i32 (ptr, ...) @printf(ptr @.str.mes)
  ret i32 0
}
```

setup:
```bash
$ brew install llvm
```

to run:
```bash
$ clang main.ll; ./a.out
```

### in IchigoJam BASIC

[IchigoJam BASIC](https://ichigojam.net/)

```
10 ?"hello, world"
```

setup:  
- open [IchigoJam web](https://fukuno.jig.jp/app/IchigoJam)

to run:
```
RUN
```

## Related project

- [Geo3x3](https://github.com/taisukef/Geo3x3) supports over 100 languages
