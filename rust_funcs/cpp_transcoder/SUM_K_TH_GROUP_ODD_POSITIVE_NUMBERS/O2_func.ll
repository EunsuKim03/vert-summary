define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %_76 = icmp sgt i32 %0, 0
  br i1 %_76, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %_5 = add nsw i32 %0, -1
  %1 = mul i32 %0, %0
  %2 = add i32 %1, 3
  %3 = mul i32 %_5, %2
  %4 = add nsw i32 %0, -2
  %5 = mul i32 %_5, %4
  %6 = and i32 %5, -2
  %7 = add i32 %3, %6
  %8 = add i32 %7, 1
  br label %bb3

bb3:                                              ; preds = %bb2.preheader, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %8, %bb2.preheader ]
  ret i32 %sum.sroa.0.0.lcssa
}
