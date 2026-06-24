define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(none) %str.0, i64 noundef %str.1) unnamed_addr #6 {
start:
  %n = trunc i64 %str.1 to i32
  %_5 = add i32 %n, 1
  %_4 = mul i32 %_5, %n
  %_0 = sdiv i32 %_4, 2
  ret i32 %_0
}
