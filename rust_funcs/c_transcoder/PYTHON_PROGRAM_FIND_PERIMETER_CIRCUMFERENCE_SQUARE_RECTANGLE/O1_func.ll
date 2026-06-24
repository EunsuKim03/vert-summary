define noundef range(i32 0, -3) i32 @f_gold(i32 noundef %a) unnamed_addr #6 {
start:
  %_0 = shl i32 %a, 2
  ret i32 %_0
}
