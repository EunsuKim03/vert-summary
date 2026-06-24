define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
start:
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %_108 = icmp sgt i32 %spec.select, 0
  br i1 %_108, label %bb5.preheader, label %bb10

bb5.preheader:                                    ; preds = %start
  %spec.select7 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  br label %bb5

bb10:                                             ; preds = %bb5, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb5 ]
  ret i32 %result.sroa.0.0.lcssa

bb5:                                              ; preds = %bb5.preheader, %bb5
  %result.sroa.0.011 = phi i32 [ %2, %bb5 ], [ 0, %bb5.preheader ]
  %a.sroa.0.110 = phi i32 [ %b.sroa.0.19, %bb5 ], [ %spec.select7, %bb5.preheader ]
  %b.sroa.0.19 = phi i32 [ %3, %bb5 ], [ %spec.select, %bb5.preheader ]
  %_12 = sdiv i32 %a.sroa.0.110, %b.sroa.0.19
  %2 = add i32 %_12, %result.sroa.0.011
  %3 = srem i32 %a.sroa.0.110, %b.sroa.0.19
  %_10 = icmp sgt i32 %3, 0
  br i1 %_10, label %bb5, label %bb10
}
