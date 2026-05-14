# helloworld

C、LLVM IR、IchigoJam BASICで実装された「Hello, World!」プログラムのコレクションです。

## 特徴

- **複数の言語**: C、LLVM IR、IchigoJam BASIC。
- **完全なサンプル**: それぞれのビルドおよび実行手順を含むサンプルコードが含まれています。

## 要件

- **C / LLVM IR**: `clang` (例: macOSでは `brew install llvm`)。
- **IchigoJam BASIC**: [IchigoJam web](https://fukuno.jig.jp/app/IchigoJam) オンラインエミュレータ。

## 使用方法

### C

1. 以下の内容で `main.c` ファイルを作成します:
    ```c
    #include <stdio.h>

    int main() {
      printf("hello, world\n");
      return 0;
    }
    ```
2. コンパイルして実行します:
    ```bash
    clang main.c && ./a.out
    ```

### LLVM IR

1. 以下の内容で `main.ll` ファイルを作成します:
    ```llvm
    declare dso_local i32 @printf(ptr, ...)

    @.str.mes = private unnamed_addr constant [14 x i8] c"hello, world\0a\00"

    define dso_local i32 @main(i32 %argc, i8** %argv) {
      call i32 (ptr, ...) @printf(ptr @.str.mes)
      ret i32 0
    }
    ```
2. コンパイルして実行します:
    ```bash
    clang main.ll && ./a.out
    ```

### IchigoJam BASIC

1. [IchigoJam web](https://fukuno.jig.jp/app/IchigoJam) エミュレータを開きます。
2. コードを入力します:
    ```basic
    10 ?"hello, world"
    ```
3. `RUN` コマンドでプログラムを実行します:
    ```
    RUN
    ```

## ライセンス

このプロジェクトはMIT Licenseの下でライセンスされています。詳細は [LICENSE](LICENSE) ファイルをご覧ください。
