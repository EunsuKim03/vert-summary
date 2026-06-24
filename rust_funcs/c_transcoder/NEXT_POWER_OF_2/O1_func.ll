define noundef range(i32 1, -2147483647) i32 @f_gold(i32 noundef %0) unnamed_addr #6 {
start:
  %_11.not7 = icmp eq i32 %0, 0
  %1 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %2 = sub nsw i32 0, %1
  %3 = and i32 %2, 31
  %4 = shl nuw i32 1, %3
  %5 = select i1 %_11.not7, i32 1, i32 %4
  ret i32 %5
}
