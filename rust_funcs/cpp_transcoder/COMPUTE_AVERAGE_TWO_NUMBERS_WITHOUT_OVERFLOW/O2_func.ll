define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_3 = add i32 %b, %a
  %_0 = sdiv i32 %_3, 2
  ret i32 %_0
}
