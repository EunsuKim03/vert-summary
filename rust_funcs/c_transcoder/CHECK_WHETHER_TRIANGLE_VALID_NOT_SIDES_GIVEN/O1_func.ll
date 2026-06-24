define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %a, i32 noundef %b, i32 noundef %c) unnamed_addr #6 {
start:
  %_5 = add i32 %b, %a
  %_4 = icmp sgt i32 %_5, %c
  %_7 = add i32 %c, %a
  %_6 = icmp sgt i32 %_7, %b
  %or.cond.not2 = and i1 %_4, %_6
  %_9 = add i32 %c, %b
  %_8 = icmp sgt i32 %_9, %a
  %or.cond1.not = and i1 %_8, %or.cond.not2
  %. = zext i1 %or.cond1.not to i32
  ret i32 %.
}
