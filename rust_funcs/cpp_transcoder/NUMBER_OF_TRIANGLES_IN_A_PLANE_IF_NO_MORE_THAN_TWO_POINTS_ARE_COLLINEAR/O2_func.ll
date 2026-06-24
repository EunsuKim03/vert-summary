define noundef range(i32 -357913941, 357913942) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_4 = add i32 %n, -1
  %_3 = mul i32 %_4, %n
  %_5 = add i32 %n, -2
  %_2 = mul i32 %_3, %_5
  %_0 = sdiv i32 %_2, 6
  ret i32 %_0
}
