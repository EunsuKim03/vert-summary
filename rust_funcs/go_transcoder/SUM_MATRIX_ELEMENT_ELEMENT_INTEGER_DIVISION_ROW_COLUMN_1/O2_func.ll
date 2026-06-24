define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_519 = icmp sgt i32 %n, 0
  br i1 %_519, label %bb3, label %bb12

bb12:                                             ; preds = %bb9, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %ans.sroa.0.1.lcssa, %bb9 ]
  ret i32 %ans.sroa.0.0.lcssa

bb3:                                              ; preds = %start, %bb9
  %ans.sroa.0.022 = phi i32 [ %ans.sroa.0.1.lcssa, %bb9 ], [ 0, %start ]
  %i.sroa.0.021 = phi i32 [ %1, %bb9 ], [ 1, %start ]
  %0 = add i32 %i.sroa.0.021, -1
  %_914 = icmp slt i32 %0, %n
  br i1 %_914, label %bb5, label %bb9

bb9:                                              ; preds = %bb5, %bb3
  %temp.sroa.0.1.lcssa = phi i32 [ %0, %bb3 ], [ %_12, %bb5 ]
  %ans.sroa.0.1.lcssa = phi i32 [ %ans.sroa.0.022, %bb3 ], [ %ans.sroa.0.2, %bb5 ]
  %1 = add i32 %i.sroa.0.021, 1
  %_5 = icmp sle i32 %1, %n
  %_7 = icmp slt i32 %temp.sroa.0.1.lcssa, %n
  %or.cond = and i1 %_5, %_7
  br i1 %or.cond, label %bb3, label %bb12

bb5:                                              ; preds = %bb3, %bb5
  %ans.sroa.0.117 = phi i32 [ %ans.sroa.0.2, %bb5 ], [ %ans.sroa.0.022, %bb3 ]
  %temp.sroa.0.116 = phi i32 [ %_12, %bb5 ], [ %0, %bb3 ]
  %num.sroa.0.015 = phi i32 [ %2, %bb5 ], [ 1, %bb3 ]
  %_12 = add i32 %temp.sroa.0.116, %i.sroa.0.021
  %_11.not = icmp sgt i32 %_12, %n
  %_19 = sub i32 %n, %temp.sroa.0.116
  %i.sroa.0.0.pn = select i1 %_11.not, i32 %_19, i32 %i.sroa.0.021
  %_15.pn = mul i32 %i.sroa.0.0.pn, %num.sroa.0.015
  %ans.sroa.0.2 = add i32 %_15.pn, %ans.sroa.0.117
  %2 = add i32 %num.sroa.0.015, 1
  %_9 = icmp slt i32 %_12, %n
  br i1 %_9, label %bb5, label %bb9
}
