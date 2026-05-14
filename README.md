# helloworld

> 日本語のREADMEはこちらです: [README.ja.md](README.ja.md)

A collection of "Hello, World!" programs implemented in C, LLVM IR, and IchigoJam BASIC.

## Features

- **Multiple Languages**: C, LLVM IR, and IchigoJam BASIC.
- **Complete Examples**: Includes sample code with build and run instructions for each.

## Requirements

- **C / LLVM IR**: `clang` (e.g., `brew install llvm` on macOS).
- **IchigoJam BASIC**: [IchigoJam web](https://fukuno.jig.jp/app/IchigoJam) online emulator.

## Usage

### C

1.  Create a file `main.c` with the following content:
    ```c
    #include <stdio.h>

    int main() {
      printf("hello, world\n");
      return 0;
    }
    ```
2.  Compile and run:
    ```bash
    clang main.c && ./a.out
    ```

### LLVM IR

1.  Create a file `main.ll` with the following content:
    ```llvm
    declare dso_local i32 @printf(ptr, ...)

    @.str.mes = private unnamed_addr constant [14 x i8] c"hello, world\0a\00"

    define dso_local i32 @main(i32 %argc, i8** %argv) {
      call i32 (ptr, ...) @printf(ptr @.str.mes)
      ret i32 0
    }
    ```
2.  Compile and run:
    ```bash
    clang main.ll && ./a.out
    ```

### IchigoJam BASIC

1.  Open the [IchigoJam web](https://fukuno.jig.jp/app/IchigoJam) emulator.
2.  Enter the code:
    ```basic
    10 ?"hello, world"
    ```
3.  Run the program with the `RUN` command:
    ```
    RUN
    ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.