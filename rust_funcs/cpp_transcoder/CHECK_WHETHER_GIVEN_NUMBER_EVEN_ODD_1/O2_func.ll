define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_2 = and i32 %n, 1
  %_0 = xor i32 %_2, 1
  ret i32 %_0
}
