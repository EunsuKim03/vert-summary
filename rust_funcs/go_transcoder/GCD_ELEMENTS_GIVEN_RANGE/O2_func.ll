define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #4 {
start:
  %_3 = icmp eq i32 %n, %m
  %n. = select i1 %_3, i32 %n, i32 1
  ret i32 %n.
}
