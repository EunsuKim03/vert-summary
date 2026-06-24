define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_3 = shl i32 %n, 1
  %_2 = or disjoint i32 %_3, 1
  %_7 = mul i32 %n, %n
  %_6 = add i32 %_7, -1
  %_5 = mul i32 %_6, %n
  %_4 = sdiv i32 %_5, 2
  %_0 = add i32 %_2, %_4
  ret i32 %_0
}
