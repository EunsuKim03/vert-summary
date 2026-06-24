define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0 = mul i32 %n, 7
  ret i32 %_0
}
