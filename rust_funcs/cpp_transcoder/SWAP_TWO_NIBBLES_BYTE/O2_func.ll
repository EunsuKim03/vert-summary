define noundef range(i32 0, 256) i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %_3 = shl i32 %0, 4
  %_2 = and i32 %_3, 240
  %_6 = lshr i32 %0, 4
  %_5 = and i32 %_6, 15
  %1 = or disjoint i32 %_2, %_5
  ret i32 %1
}
