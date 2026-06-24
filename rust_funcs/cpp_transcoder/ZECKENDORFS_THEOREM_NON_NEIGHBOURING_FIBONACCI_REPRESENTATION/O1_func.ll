define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %bb7, label %bb4

bb4:                                              ; preds = %start, %bb4
  %f3.sroa.0.0 = phi i32 [ %0, %bb4 ], [ 1, %start ]
  %f2.sroa.0.0 = phi i32 [ %f3.sroa.0.0, %bb4 ], [ 1, %start ]
  %_6.not = icmp sgt i32 %f3.sroa.0.0, %n
  %0 = add i32 %f2.sroa.0.0, %f3.sroa.0.0
  br i1 %_6.not, label %bb7, label %bb4

bb7:                                              ; preds = %bb4, %start
  %f2.sroa.0.1 = phi i32 [ %n, %start ], [ %f2.sroa.0.0, %bb4 ]
  ret i32 %f2.sroa.0.1
}
