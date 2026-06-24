define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %base) unnamed_addr #4 {
start:
  %0 = add i32 %base, -2
  %1 = sdiv i32 %0, 2
  %_5 = add nsw i32 %1, 1
  %_3 = mul i32 %_5, %1
  %_0 = sdiv i32 %_3, 2
  ret i32 %_0
}
