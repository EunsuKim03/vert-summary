define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %_56 = icmp sgt i32 %0, 0
  br i1 %_56, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %start
  %curr.sroa.0.0.lcssa = phi float [ 3.000000e+00, %start ], [ %2, %bb2 ]
  %prev.sroa.0.0.lcssa = phi float [ 2.000000e+00, %start ], [ %curr.sroa.0.07, %bb2 ]
  %n.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %3, %bb2 ]
  %_17 = fsub float %curr.sroa.0.0.lcssa, %prev.sroa.0.0.lcssa
  %_16 = fadd float %_17, -1.000000e+00
  %_15 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_16)
  %1 = add i32 %_15, %n.sroa.0.0.lcssa
  %_20 = sitofp i32 %1 to float
  %_19 = fadd float %prev.sroa.0.0.lcssa, %_20
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_19)
  ret i32 %_0

bb2:                                              ; preds = %start, %bb2
  %n.sroa.0.09 = phi i32 [ %3, %bb2 ], [ %0, %start ]
  %prev.sroa.0.08 = phi float [ %curr.sroa.0.07, %bb2 ], [ 2.000000e+00, %start ]
  %curr.sroa.0.07 = phi float [ %2, %bb2 ], [ 3.000000e+00, %start ]
  %2 = fadd float %curr.sroa.0.07, %prev.sroa.0.08
  %_11 = fsub float %2, %curr.sroa.0.07
  %_10 = fadd float %_11, -1.000000e+00
  %_9 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_10)
  %3 = add i32 %_9, %n.sroa.0.09
  %_5 = icmp sgt i32 %3, 0
  br i1 %_5, label %bb2, label %bb3
}
