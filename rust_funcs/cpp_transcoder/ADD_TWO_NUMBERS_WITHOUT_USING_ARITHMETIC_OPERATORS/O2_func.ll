define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
start:
  %_3.not5 = icmp eq i32 %1, 0
  br i1 %_3.not5, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %start
  %x.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %2, %bb2 ]
  ret i32 %x.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %x.sroa.0.07 = phi i32 [ %2, %bb2 ], [ %0, %start ]
  %y.sroa.0.06 = phi i32 [ %3, %bb2 ], [ %1, %start ]
  %carry = and i32 %x.sroa.0.07, %y.sroa.0.06
  %2 = xor i32 %x.sroa.0.07, %y.sroa.0.06
  %3 = shl i32 %carry, 1
  %_3.not = icmp eq i32 %3, 0
  br i1 %_3.not, label %bb3, label %bb2
}
