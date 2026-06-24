define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_2 = xor i32 %n, -1
  %_0 = and i32 %_2, 1
  ret i32 %_0
}
