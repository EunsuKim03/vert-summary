define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #4 {
start:
  %0 = lshr i32 %x, 1
  %1 = and i32 %0, 1431655765
  %2 = shl i32 %x, 1
  %3 = and i32 %2, -1431655766
  %_0 = or disjoint i32 %1, %3
  ret i32 %_0
}
