define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_3 = shl i32 %n, 1
  %_2 = add i32 %_3, -1
  %_0 = mul i32 %_2, %n
  ret i32 %_0
}
