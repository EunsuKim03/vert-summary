define noundef range(i32 -1431655765, 1431655765) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %n1 = add i32 %n, -1
  %_4 = mul i32 %n1, %n
  %_3 = sdiv i32 %_4, 2
  %_9 = shl i32 %n1, 1
  %_8 = or disjoint i32 %_9, 1
  %_7 = mul i32 %_8, %_4
  %_6 = sdiv i32 %_7, 6
  %0 = add nsw i32 %_6, %_3
  ret i32 %0
}
