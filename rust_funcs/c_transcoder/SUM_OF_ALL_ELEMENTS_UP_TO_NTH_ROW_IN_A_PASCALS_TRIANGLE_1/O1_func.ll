define noundef range(i32 0, -2147483648) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %0 = and i32 %n, 31
  %notmask = shl nsw i32 -1, %0
  %_4 = xor i32 %notmask, -1
  ret i32 %_4
}
