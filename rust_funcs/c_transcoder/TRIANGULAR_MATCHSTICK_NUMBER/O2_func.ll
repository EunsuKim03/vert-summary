define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %x) unnamed_addr #4 {
start:
  %_3 = mul i32 %x, 3
  %_4 = add i32 %x, 1
  %_2 = mul i32 %_3, %_4
  %_0 = sdiv i32 %_2, 2
  ret i32 %_0
}
