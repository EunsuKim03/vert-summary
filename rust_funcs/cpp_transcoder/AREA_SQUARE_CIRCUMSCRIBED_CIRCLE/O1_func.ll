define noundef i32 @f_gold(i32 noundef %r) unnamed_addr #6 {
start:
  %_2 = shl i32 %r, 1
  %_0 = mul i32 %_2, %r
  ret i32 %_0
}
