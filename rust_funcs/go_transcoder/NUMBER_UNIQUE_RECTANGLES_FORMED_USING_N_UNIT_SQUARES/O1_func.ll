define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_7 = sitofp i32 %n to float
  %0 = tail call noundef float @llvm.sqrt.f32(float %_7)
  %_5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_3.not10 = icmp slt i32 %_5, 1
  br i1 %_3.not10, label %bb7, label %bb4.preheader

bb4.preheader:                                    ; preds = %start, %bb6
  %ans.sroa.0.012 = phi i32 [ %ans.sroa.0.1.lcssa, %bb6 ], [ 0, %start ]
  %length.sroa.0.011 = phi i32 [ %1, %bb6 ], [ 1, %start ]
  %_106 = mul i32 %length.sroa.0.011, %length.sroa.0.011
  %_9.not7 = icmp sgt i32 %_106, %n
  br i1 %_9.not7, label %bb6, label %bb5

bb7:                                              ; preds = %bb6, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %ans.sroa.0.1.lcssa, %bb6 ]
  ret i32 %ans.sroa.0.0.lcssa

bb6:                                              ; preds = %bb5, %bb4.preheader
  %ans.sroa.0.1.lcssa = phi i32 [ %ans.sroa.0.012, %bb4.preheader ], [ %2, %bb5 ]
  %1 = add i32 %length.sroa.0.011, 1
  %_3.not = icmp sgt i32 %1, %_5
  br i1 %_3.not, label %bb7, label %bb4.preheader

bb5:                                              ; preds = %bb4.preheader, %bb5
  %ans.sroa.0.19 = phi i32 [ %2, %bb5 ], [ %ans.sroa.0.012, %bb4.preheader ]
  %height.sroa.0.08 = phi i32 [ %3, %bb5 ], [ %length.sroa.0.011, %bb4.preheader ]
  %2 = add i32 %ans.sroa.0.19, 1
  %3 = add i32 %height.sroa.0.08, 1
  %_10 = mul i32 %3, %length.sroa.0.011
  %_9.not = icmp sgt i32 %_10, %n
  br i1 %_9.not, label %bb6, label %bb5
}
