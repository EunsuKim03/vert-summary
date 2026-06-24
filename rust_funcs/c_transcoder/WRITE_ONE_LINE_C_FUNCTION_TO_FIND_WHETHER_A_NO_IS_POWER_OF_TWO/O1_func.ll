define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %bb9, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %0 = sitofp i32 %n to float
  br label %bb4

bb4:                                              ; preds = %bb4.preheader, %bb6
  %n1.sroa.0.03 = phi float [ %1, %bb6 ], [ %0, %bb4.preheader ]
  %_7 = frem float %n1.sroa.0.03, 2.000000e+00
  %_6 = fcmp une float %_7, 0.000000e+00
  br i1 %_6, label %bb9, label %bb6

bb6:                                              ; preds = %bb4
  %1 = fmul float %n1.sroa.0.03, 5.000000e-01
  %_4 = fcmp une float %1, 1.000000e+00
  br i1 %_4, label %bb4, label %bb9

bb9:                                              ; preds = %bb6, %bb4, %start
  %_0.sroa.0.1 = phi i32 [ %n, %start ], [ 0, %bb4 ], [ 1, %bb6 ]
  ret i32 %_0.sroa.0.1
}
