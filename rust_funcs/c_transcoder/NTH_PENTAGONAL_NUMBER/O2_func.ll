define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3 = mul i32 %n, 3
  %_2 = mul i32 %_3, %n
  %_4.neg = sdiv i32 %n, -2
  %_0 = add i32 %_2, %_4.neg
  ret i32 %_0
}
