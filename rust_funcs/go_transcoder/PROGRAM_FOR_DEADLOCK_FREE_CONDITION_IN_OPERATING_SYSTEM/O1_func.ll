define noundef i32 @f_gold(i32 noundef %process, i32 noundef %need) unnamed_addr #6 {
start:
  %_4 = add i32 %need, -1
  %_3 = mul i32 %_4, %process
  %0 = add i32 %_3, 1
  ret i32 %0
}
