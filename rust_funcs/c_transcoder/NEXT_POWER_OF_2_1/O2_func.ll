define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %0 = and i32 %n, 1
  %_3.not = icmp eq i32 %0, 0
  br i1 %_3.not, label %bb5, label %bb8

bb5:                                              ; preds = %start, %bb5
  %p.sroa.0.0 = phi i32 [ %1, %bb5 ], [ 1, %start ]
  %_5 = icmp ult i32 %p.sroa.0.0, %n
  %1 = shl i32 %p.sroa.0.0, 1
  br i1 %_5, label %bb5, label %bb8

bb8:                                              ; preds = %bb5, %start
  %p.sroa.0.1 = phi i32 [ %n, %start ], [ %p.sroa.0.0, %bb5 ]
  ret i32 %p.sroa.0.1
}
