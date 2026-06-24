define noundef i32 @f_gold(i32 noundef %low, i32 noundef %high) unnamed_addr #4 {
start:
  %_7 = sitofp i32 %low to float
  %_56 = icmp sgt i32 %low, 1
  br i1 %_56, label %bb2, label %bb4.preheader

bb4.preheader:                                    ; preds = %bb2, %start
  %x.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %1, %bb2 ]
  %fact.sroa.0.0.lcssa = phi float [ 1.000000e+00, %start ], [ %0, %bb2 ]
  %_12 = sitofp i32 %high to float
  %_1010 = fcmp ugt float %fact.sroa.0.0.lcssa, %_12
  br i1 %_1010, label %bb6, label %bb5

bb2:                                              ; preds = %start, %bb2
  %fact.sroa.0.08 = phi float [ %0, %bb2 ], [ 1.000000e+00, %start ]
  %x.sroa.0.07 = phi i32 [ %1, %bb2 ], [ 1, %start ]
  %_8 = sitofp i32 %x.sroa.0.07 to float
  %0 = fmul float %fact.sroa.0.08, %_8
  %1 = add i32 %x.sroa.0.07, 1
  %_5 = fcmp olt float %0, %_7
  br i1 %_5, label %bb2, label %bb4.preheader

bb6:                                              ; preds = %bb5, %bb4.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 0, %bb4.preheader ], [ %2, %bb5 ]
  ret i32 %res.sroa.0.0.lcssa

bb5:                                              ; preds = %bb4.preheader, %bb5
  %res.sroa.0.013 = phi i32 [ %2, %bb5 ], [ 0, %bb4.preheader ]
  %fact.sroa.0.112 = phi float [ %3, %bb5 ], [ %fact.sroa.0.0.lcssa, %bb4.preheader ]
  %x.sroa.0.111 = phi i32 [ %4, %bb5 ], [ %x.sroa.0.0.lcssa, %bb4.preheader ]
  %2 = add i32 %res.sroa.0.013, 1
  %_13 = sitofp i32 %x.sroa.0.111 to float
  %3 = fmul float %fact.sroa.0.112, %_13
  %4 = add i32 %x.sroa.0.111, 1
  %_10 = fcmp ugt float %3, %_12
  br i1 %_10, label %bb6, label %bb5
}
