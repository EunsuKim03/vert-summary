define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_4 = mul i32 %n, 3
  %_31 = add i32 %_4, -1
  %_2 = mul i32 %_31, %n
  %_0 = sdiv i32 %_2, 2
  ret i32 %_0
}
