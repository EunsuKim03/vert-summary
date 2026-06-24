define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %_47 = and i32 %0, 1
  %_3.not8 = icmp eq i32 %_47, 0
  br i1 %_3.not8, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %start
  %m.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %3, %bb2 ]
  %x.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %2, %bb2 ]
  %1 = xor i32 %x.sroa.0.0.lcssa, %m.sroa.0.0.lcssa
  ret i32 %1

bb2:                                              ; preds = %start, %bb2
  %x.sroa.0.010 = phi i32 [ %2, %bb2 ], [ %0, %start ]
  %m.sroa.0.09 = phi i32 [ %3, %bb2 ], [ 1, %start ]
  %2 = xor i32 %x.sroa.0.010, %m.sroa.0.09
  %3 = shl i32 %m.sroa.0.09, 1
  %_4 = and i32 %2, %3
  %_3.not = icmp eq i32 %_4, 0
  br i1 %_3.not, label %bb3, label %bb2
}
