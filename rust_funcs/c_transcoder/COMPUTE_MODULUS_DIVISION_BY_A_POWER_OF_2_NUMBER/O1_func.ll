define noundef i32 @f_gold(i32 noundef %n, i32 noundef %d) unnamed_addr #6 {
start:
  %_3 = add i32 %d, -1
  %_0 = and i32 %_3, %n
  ret i32 %_0
}
