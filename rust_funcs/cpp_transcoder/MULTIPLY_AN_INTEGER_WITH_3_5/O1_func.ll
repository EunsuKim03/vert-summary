define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %x) unnamed_addr #6 {
start:
  %reass.add = shl i32 %x, 1
  %_3 = and i32 %reass.add, 30
  %0 = or disjoint i32 %_3, 1
  %_2 = shl i32 %x, %0
  %_0 = ashr exact i32 %_2, 1
  ret i32 %_0
}
