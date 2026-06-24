define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_15.0.i = mul i32 %n, %n
  ret i32 %_15.0.i
}
