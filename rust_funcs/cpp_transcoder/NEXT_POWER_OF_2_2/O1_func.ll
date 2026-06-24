define noundef i32 @f_gold(i32 noundef %n1) unnamed_addr #6 {
start:
  %0 = tail call noundef range(i32 0, -1) i32 @llvm.usub.sat.i32(i32 %n1, i32 1)
  %_2 = lshr i32 %0, 1
  %1 = or i32 %_2, %0
  %_4 = lshr i32 %1, 2
  %2 = or i32 %_4, %1
  %_6 = lshr i32 %2, 4
  %3 = or i32 %_6, %2
  %_8 = lshr i32 %3, 8
  %4 = or i32 %_8, %3
  %_10 = lshr i32 %4, 16
  %5 = or i32 %_10, %4
  %6 = add i32 %5, 1
  ret i32 %6
}
