define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b, i32 noundef %c) unnamed_addr #4 {
start:
  %_4 = icmp slt i32 %a, %b
  %_5 = icmp slt i32 %b, %c
  %or.cond = and i1 %_4, %_5
  br i1 %or.cond, label %bb12, label %bb2

bb2:                                              ; preds = %start
  %_6 = icmp slt i32 %c, %b
  %_7 = icmp slt i32 %b, %a
  %or.cond1 = and i1 %_7, %_6
  br i1 %or.cond1, label %bb12, label %bb5

bb5:                                              ; preds = %bb2
  %_9 = icmp slt i32 %a, %c
  %or.cond2 = and i1 %_7, %_9
  %_10 = icmp slt i32 %c, %a
  %brmerge.not = and i1 %_4, %_10
  %or.cond3 = or i1 %or.cond2, %brmerge.not
  %spec.select = select i1 %or.cond3, i32 %a, i32 %c
  br label %bb12

bb12:                                             ; preds = %bb5, %start, %bb2
  %_0.sroa.0.0 = phi i32 [ %b, %bb2 ], [ %b, %start ], [ %spec.select, %bb5 ]
  ret i32 %_0.sroa.0.0
}
