define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %_4.not8 = icmp slt i32 %n, 1
  br i1 %_4.not8, label %bb5, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %_7 = sitofp i32 %n to float
  br label %bb2

bb5:                                              ; preds = %bb4, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb4 ]
  ret i32 %ans.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2.lr.ph, %bb4
  %ans.sroa.0.011 = phi i32 [ 0, %bb2.lr.ph ], [ %1, %bb4 ]
  %k.sroa.0.010 = phi i32 [ %n, %bb2.lr.ph ], [ %2, %bb4 ]
  %imin.sroa.0.09 = phi i32 [ 1, %bb2.lr.ph ], [ %0, %bb4 ]
  %_8 = sitofp i32 %k.sroa.0.010 to float
  %imax = fdiv float %_7, %_8
  %_14 = fadd float %imax, 1.000000e+00
  %0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_14)
  %_16 = icmp eq i32 %0, 0
  br i1 %_16, label %panic, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a9398067ad04dcc52a63777c86e7faf7) #23
  unreachable

bb4:                                              ; preds = %bb2
  %_13 = tail call i32 @llvm.fptosi.sat.i32.f32(float %imax)
  %reass.sub = sub i32 %_13, %imin.sroa.0.09
  %_11 = add i32 %reass.sub, 1
  %_10 = mul i32 %_11, %k.sroa.0.010
  %1 = add i32 %_10, %ans.sroa.0.011
  %2 = sdiv i32 %n, %0
  %_4.not = icmp sgt i32 %0, %n
  br i1 %_4.not, label %bb5, label %bb2
}
