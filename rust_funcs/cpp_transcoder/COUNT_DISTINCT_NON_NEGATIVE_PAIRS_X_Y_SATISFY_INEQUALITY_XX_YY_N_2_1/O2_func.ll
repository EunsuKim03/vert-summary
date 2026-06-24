define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_5 = sitofp i32 %n to float
  %0 = tail call float @llvm.sqrt.f32(float %_5)
  %1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_6.not9 = icmp eq i32 %1, 0
  br i1 %_6.not9, label %bb9, label %bb2

bb9:                                              ; preds = %bb3, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb3 ]
  ret i32 %res.sroa.0.0.lcssa

bb2:                                              ; preds = %bb4, %start
  %res.sroa.0.012 = phi i32 [ 0, %start ], [ %2, %bb4 ]
  %x.sroa.0.011 = phi i32 [ 0, %start ], [ %3, %bb4 ]
  %y_count.sroa.0.010 = phi i32 [ %1, %start ], [ %y_count.sroa.0.1, %bb4 ]
  %2 = add i32 %res.sroa.0.012, %y_count.sroa.0.010
  %3 = add i32 %x.sroa.0.011, 1
  %_13 = mul i32 %3, %3
  br label %bb3

bb3:                                              ; preds = %bb4, %bb2
  %y_count.sroa.0.1 = phi i32 [ %y_count.sroa.0.010, %bb2 ], [ %_17, %bb4 ]
  %_9.not = icmp eq i32 %y_count.sroa.0.1, 0
  br i1 %_9.not, label %bb9, label %bb4

bb4:                                              ; preds = %bb3
  %_17 = add i32 %y_count.sroa.0.1, -1
  %_16 = mul i32 %_17, %_17
  %_12 = add i32 %_16, %_13
  %_11.not = icmp slt i32 %_12, %n
  br i1 %_11.not, label %bb2, label %bb3
}
