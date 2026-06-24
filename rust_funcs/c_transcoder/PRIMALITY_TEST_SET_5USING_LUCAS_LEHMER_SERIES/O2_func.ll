define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %p) unnamed_addr #1 {
start:
  %0 = tail call float @llvm.powi.f32.i32(float 2.000000e+00, i32 %p)
  %check_number = fadd float %0, -1.000000e+00
  %_5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %check_number)
  %_6 = icmp eq i32 %_5, 0
  br i1 %_6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i32 %_5, -1
  %iter1 = add i32 %p, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %iter1, i32 1)
  br label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_805e388b1ec866112dd0e6922e29cf78) #17
  unreachable

bb2:                                              ; preds = %bb9, %bb1
  %iter.sroa.0.0 = phi i32 [ 1, %bb1 ], [ %1, %bb9 ]
  %.pn = phi i32 [ 4, %bb1 ], [ %_11, %bb9 ]
  %nextval.sroa.0.0 = srem i32 %.pn, %_5
  %exitcond.not = icmp eq i32 %iter.sroa.0.0, %smax
  br i1 %exitcond.not, label %bb10, label %bb9

bb10:                                             ; preds = %bb2
  %_16 = icmp eq i32 %nextval.sroa.0.0, 0
  %. = zext i1 %_16 to i32
  ret i32 %.

bb9:                                              ; preds = %bb2
  %1 = add nuw i32 %iter.sroa.0.0, 1
  %_12 = mul i32 %nextval.sroa.0.0, %nextval.sroa.0.0
  %_11 = add i32 %_12, -2
  %_14 = icmp eq i32 %_11, -2147483648
  %_15 = and i1 %_7, %_14
  br i1 %_15, label %panic3, label %bb2

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9ccad2525e1c218f7cb65df8da96b031) #17
  unreachable
}
