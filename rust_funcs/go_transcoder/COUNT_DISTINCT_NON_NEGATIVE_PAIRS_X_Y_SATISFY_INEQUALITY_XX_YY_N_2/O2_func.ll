define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_7 = sitofp i32 %n to float
  %_35 = icmp sgt i32 %n, 0
  br i1 %_35, label %bb3.preheader, label %bb6

bb3.preheader:                                    ; preds = %start, %bb5
  %_48 = phi float [ %_4, %bb5 ], [ 0.000000e+00, %start ]
  %res.sroa.0.07 = phi i32 [ %res.sroa.0.1.lcssa, %bb5 ], [ 0, %start ]
  %x.sroa.0.06 = phi float [ %0, %bb5 ], [ 0.000000e+00, %start ]
  %_92 = fcmp olt float %_48, %_7
  br i1 %_92, label %bb4, label %bb5

bb6:                                              ; preds = %bb5, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %res.sroa.0.1.lcssa, %bb5 ]
  ret i32 %res.sroa.0.0.lcssa

bb5:                                              ; preds = %bb4, %bb3.preheader
  %res.sroa.0.1.lcssa = phi i32 [ %res.sroa.0.07, %bb3.preheader ], [ %1, %bb4 ]
  %0 = fadd float %x.sroa.0.06, 1.000000e+00
  %_4 = fmul float %0, %0
  %_3 = fcmp olt float %_4, %_7
  br i1 %_3, label %bb3.preheader, label %bb6

bb4:                                              ; preds = %bb3.preheader, %bb4
  %res.sroa.0.14 = phi i32 [ %1, %bb4 ], [ %res.sroa.0.07, %bb3.preheader ]
  %y.sroa.0.03 = phi float [ %2, %bb4 ], [ 0.000000e+00, %bb3.preheader ]
  %1 = add i32 %res.sroa.0.14, 1
  %2 = fadd float %y.sroa.0.03, 1.000000e+00
  %_14 = fmul float %2, %2
  %_10 = fadd float %_48, %_14
  %_9 = fcmp olt float %_10, %_7
  br i1 %_9, label %bb4, label %bb5
}
