declare dso_local i32 @printf(ptr, ...)

@.str.mes = private unnamed_addr constant [14 x i8] c"hello, world\0a\00"

define dso_local i32 @main(i32 %argc, i8** %argv) {
  call i32 (ptr, ...) @printf(ptr @.str.mes)
  ret i32 0
}
