define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_2 = icmp slt i32 %n, 2
  br i1 %_2, label %bb6, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_6 = uitofp nneg i32 %n to float
  br label %bb4

bb4:                                              ; preds = %bb3.preheader, %bb4
  %res.sroa.0.06 = phi i32 [ %1, %bb4 ], [ 1, %bb3.preheader ]
  %a.sroa.0.05 = phi float [ %c.sroa.0.04, %bb4 ], [ 0.000000e+00, %bb3.preheader ]
  %c.sroa.0.04 = phi float [ %0, %bb4 ], [ 1.000000e+00, %bb3.preheader ]
  %0 = fadd float %c.sroa.0.04, %a.sroa.0.05
  %1 = add i32 %res.sroa.0.06, 1
  %_5 = fcmp olt float %0, %_6
  br i1 %_5, label %bb4, label %bb6

bb6:                                              ; preds = %bb4, %start
  %res.sroa.0.1 = phi i32 [ %n, %start ], [ %1, %bb4 ]
  ret i32 %res.sroa.0.1
}
