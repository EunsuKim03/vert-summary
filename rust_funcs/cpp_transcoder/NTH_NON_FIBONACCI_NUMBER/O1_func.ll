define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %_510 = icmp sgt i32 %0, 0
  br i1 %_510, label %bb2, label %bb3

bb3.loopexit:                                     ; preds = %bb2
  %1 = add i32 %2, -1
  br label %bb3

bb3:                                              ; preds = %bb3.loopexit, %start
  %curr.sroa.0.0.lcssa = phi i32 [ 2, %start ], [ %1, %bb3.loopexit ]
  %n.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %3, %bb3.loopexit ]
  %_0 = add i32 %curr.sroa.0.0.lcssa, %n.sroa.0.0.lcssa
  ret i32 %_0

bb2:                                              ; preds = %start, %bb2
  %n.sroa.0.013 = phi i32 [ %3, %bb2 ], [ %0, %start ]
  %prev.sroa.0.012 = phi i32 [ %curr.sroa.0.011, %bb2 ], [ 2, %start ]
  %curr.sroa.0.011 = phi i32 [ %2, %bb2 ], [ 3, %start ]
  %2 = add i32 %prev.sroa.0.012, %curr.sroa.0.011
  %reass.sub = sub i32 %n.sroa.0.013, %prev.sroa.0.012
  %3 = add i32 %reass.sub, 1
  %_5 = icmp ult i32 %reass.sub, 2147483647
  br i1 %_5, label %bb2, label %bb3.loopexit
}
