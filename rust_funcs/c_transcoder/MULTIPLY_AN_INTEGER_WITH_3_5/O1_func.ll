define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #6 {
start:
  %_2 = mul i32 %x, 3
  %_4 = ashr i32 %x, 1
  %_0 = add i32 %_2, %_4
  ret i32 %_0
}
