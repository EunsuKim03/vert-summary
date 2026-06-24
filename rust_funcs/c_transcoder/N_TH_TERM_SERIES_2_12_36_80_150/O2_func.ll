define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_22 = add i32 %n, 1
  %_31 = mul i32 %n, %n
  %_0 = mul i32 %_31, %_22
  ret i32 %_0
}
