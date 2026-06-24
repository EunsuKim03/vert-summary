define noundef range(i32 1, -2147483647) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %0 = and i32 %n, 31
  %_0 = shl nuw i32 1, %0
  ret i32 %_0
}
