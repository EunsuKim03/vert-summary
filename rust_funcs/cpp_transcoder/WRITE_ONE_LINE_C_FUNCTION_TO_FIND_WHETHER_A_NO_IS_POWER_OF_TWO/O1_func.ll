define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %switch = icmp ult i32 %0, 2
  br i1 %switch, label %bb8, label %bb4

bb3:                                              ; preds = %bb4
  %1 = ashr exact i32 %n.sroa.0.05, 1
  %_4.not = icmp eq i32 %n.sroa.0.05, 2
  br i1 %_4.not, label %bb8, label %bb4

bb4:                                              ; preds = %start, %bb3
  %n.sroa.0.05 = phi i32 [ %1, %bb3 ], [ %0, %start ]
  %2 = and i32 %n.sroa.0.05, 1
  %_6.not = icmp eq i32 %2, 0
  br i1 %_6.not, label %bb3, label %bb8

bb8:                                              ; preds = %bb3, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ %0, %start ], [ 0, %bb4 ], [ 1, %bb3 ]
  ret i32 %_0.sroa.0.0
}
