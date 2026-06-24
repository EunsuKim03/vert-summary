define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %0 = and i32 %n, 1
  %. = xor i32 %0, 1
  ret i32 %.
}
