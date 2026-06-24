define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %0 = and i32 %n, 1
  %_3.not = icmp eq i32 %0, 0
  br i1 %_3.not, label %bb6, label %bb9

bb6:                                              ; preds = %start, %bb6
  %p.sroa.0.0 = phi i32 [ %1, %bb6 ], [ 1, %start ]
  %_5 = icmp ult i32 %p.sroa.0.0, %n
  %1 = shl i32 %p.sroa.0.0, 1
  br i1 %_5, label %bb6, label %bb9

bb9:                                              ; preds = %bb6, %start
  %p.sroa.0.1 = phi i32 [ %n, %start ], [ %p.sroa.0.0, %bb6 ]
  ret i32 %p.sroa.0.1
}
