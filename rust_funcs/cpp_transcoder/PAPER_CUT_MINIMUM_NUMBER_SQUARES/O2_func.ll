define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
start:
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %_816 = icmp sgt i32 %spec.select, 0
  br i1 %_816, label %bb7.preheader, label %bb10

bb7.preheader:                                    ; preds = %start
  %spec.select15 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  br label %bb7

bb10:                                             ; preds = %bb7, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb7 ]
  ret i32 %result.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.preheader, %bb7
  %a.sroa.0.119 = phi i32 [ %b.sroa.0.118, %bb7 ], [ %spec.select15, %bb7.preheader ]
  %b.sroa.0.118 = phi i32 [ %3, %bb7 ], [ %spec.select, %bb7.preheader ]
  %result.sroa.0.017 = phi i32 [ %2, %bb7 ], [ 0, %bb7.preheader ]
  %_10 = sdiv i32 %a.sroa.0.119, %b.sroa.0.118
  %2 = add i32 %_10, %result.sroa.0.017
  %3 = srem i32 %a.sroa.0.119, %b.sroa.0.118
  %_8 = icmp sgt i32 %3, 0
  br i1 %_8, label %bb7, label %bb10
}
