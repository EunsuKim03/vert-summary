define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #6 {
start:
  %1 = add i32 %0, -1
  %_2 = lshr i32 %1, 1
  %2 = or i32 %_2, %1
  %_4 = lshr i32 %2, 2
  %3 = or i32 %_4, %2
  %_6 = lshr i32 %3, 4
  %4 = or i32 %_6, %3
  %_8 = lshr i32 %4, 8
  %5 = or i32 %_8, %4
  %_10 = lshr i32 %5, 16
  %6 = or i32 %_10, %5
  %7 = add i32 %6, 1
  ret i32 %7
}
