define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %x1 = trunc i32 %x to i8
  %_5 = and i8 %x1, 15
  %_4 = shl i8 %_5, 4
  %_9 = and i8 %x1, -16
  %_8 = lshr i8 %_9, 4
  %x2 = or i8 %_4, %_8
  %_0 = zext i8 %x2 to i32
  ret i32 %_0
}
