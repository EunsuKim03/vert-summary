define noundef i32 @f_gold(i32 noundef %k) unnamed_addr #4 {
start:
  %_2 = mul i32 %k, %k
  %_0 = mul i32 %_2, %k
  ret i32 %_0
}
