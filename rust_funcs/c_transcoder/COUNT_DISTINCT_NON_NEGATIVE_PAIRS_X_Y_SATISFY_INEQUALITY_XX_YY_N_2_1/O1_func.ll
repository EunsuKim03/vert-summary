define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_5 = sitofp i32 %n to float
  %0 = tail call noundef float @llvm.sqrt.f32(float %_5)
  %1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_6.not9 = icmp eq i32 %1, 0
  br i1 %_6.not9, label %bb10, label %bb3

bb10:                                             ; preds = %bb9, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb9 ]
  ret i32 %res.sroa.0.0.lcssa

bb3:                                              ; preds = %start, %bb9
  %res.sroa.0.012 = phi i32 [ %2, %bb9 ], [ 0, %start ]
  %x.sroa.0.011 = phi i32 [ %3, %bb9 ], [ 0, %start ]
  %y_count.sroa.0.010 = phi i32 [ %y_count.sroa.0.1.lcssa, %bb9 ], [ %1, %start ]
  %2 = add i32 %res.sroa.0.012, %y_count.sroa.0.010
  %3 = add i32 %x.sroa.0.011, 1
  %_14 = sitofp i32 %3 to float
  %_13 = fmul float %_14, %_14
  br label %bb4

bb4:                                              ; preds = %bb5, %bb3
  %y_count.sroa.0.1 = phi i32 [ %y_count.sroa.0.010, %bb3 ], [ %_20, %bb5 ]
  %_9.not = icmp eq i32 %y_count.sroa.0.1, 0
  br i1 %_9.not, label %bb9, label %bb5

bb5:                                              ; preds = %bb4
  %_20 = add i32 %y_count.sroa.0.1, -1
  %_19 = sitofp i32 %_20 to float
  %_18 = fmul float %_19, %_19
  %_12 = fadd float %_13, %_18
  %_11 = fcmp ult float %_12, %_5
  br i1 %_11, label %bb9, label %bb4

bb9:                                              ; preds = %bb5, %bb4
  %y_count.sroa.0.1.lcssa = phi i32 [ %y_count.sroa.0.1, %bb5 ], [ 0, %bb4 ]
  %_6.not = icmp eq i32 %y_count.sroa.0.1.lcssa, 0
  br i1 %_6.not, label %bb10, label %bb3
}
