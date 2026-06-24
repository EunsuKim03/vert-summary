define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_43.not = icmp eq i32 %n, 0
  br i1 %_43.not, label %bb3, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %0 = sitofp i32 %n to float
  br label %bb2

bb3:                                              ; preds = %bb2, %start
  %dec_value.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb2 ]
  ret i32 %dec_value.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2.preheader, %bb2
  %dec_value.sroa.0.06 = phi i32 [ %2, %bb2 ], [ 0, %bb2.preheader ]
  %num.sroa.0.05 = phi float [ %1, %bb2 ], [ %0, %bb2.preheader ]
  %base.sroa.0.04 = phi i32 [ %3, %bb2 ], [ 1, %bb2.preheader ]
  %_7 = frem float %num.sroa.0.05, 1.000000e+01
  %last_digit = tail call i32 @llvm.fptosi.sat.i32.f32(float %_7)
  %1 = fdiv float %num.sroa.0.05, 1.000000e+01
  %_10 = mul i32 %last_digit, %base.sroa.0.04
  %2 = add i32 %_10, %dec_value.sroa.0.06
  %3 = shl i32 %base.sroa.0.04, 1
  %_4 = fcmp une float %1, 0.000000e+00
  br i1 %_4, label %bb2, label %bb3
}
