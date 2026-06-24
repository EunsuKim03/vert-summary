define noundef range(i32 -1, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3 = and i32 %n, 1
  %_2.not = icmp eq i32 %_3, 0
  %. = select i1 %_2.not, i32 1, i32 -1
  ret i32 %.
}
