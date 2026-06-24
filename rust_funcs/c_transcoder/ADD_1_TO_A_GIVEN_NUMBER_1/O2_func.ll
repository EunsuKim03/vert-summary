define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #4 {
start:
  %_2.neg = add i32 %x, 1
  ret i32 %_2.neg
}
