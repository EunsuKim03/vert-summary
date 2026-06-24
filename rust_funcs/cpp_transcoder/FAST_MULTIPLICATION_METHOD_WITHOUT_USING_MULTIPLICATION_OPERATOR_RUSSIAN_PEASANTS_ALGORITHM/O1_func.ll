define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
start:
  %_3.not5 = icmp eq i32 %1, 0
  br i1 %_3.not5, label %bb6, label %bb2

bb6:                                              ; preds = %bb2, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %spec.select, %bb2 ]
  ret i32 %res.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %a.sroa.0.08 = phi i32 [ %3, %bb2 ], [ %0, %start ]
  %b.sroa.0.07 = phi i32 [ %4, %bb2 ], [ %1, %start ]
  %res.sroa.0.06 = phi i32 [ %spec.select, %bb2 ], [ 0, %start ]
  %_6 = and i32 %b.sroa.0.07, 1
  %_5.not = icmp eq i32 %_6, 0
  %2 = select i1 %_5.not, i32 0, i32 %a.sroa.0.08
  %spec.select = add i32 %2, %res.sroa.0.06
  %3 = shl i32 %a.sroa.0.08, 1
  %4 = lshr i32 %b.sroa.0.07, 1
  %_3.not = icmp ult i32 %b.sroa.0.07, 2
  br i1 %_3.not, label %bb6, label %bb2
}
