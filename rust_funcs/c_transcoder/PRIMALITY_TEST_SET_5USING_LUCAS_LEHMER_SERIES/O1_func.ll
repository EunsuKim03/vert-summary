define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %p) unnamed_addr #3 {
start:
  %0 = tail call noundef float @llvm.powi.f32.i32(float 2.000000e+00, i32 %p)
  %check_number = fadd float %0, -1.000000e+00
  %_5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %check_number)
  %_6 = icmp eq i32 %_5, 0
  br i1 %_6, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_7 = icmp eq i32 %_5, -1
  %_10 = add i32 %p, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %_10, i32 1)
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_805e388b1ec866112dd0e6922e29cf78) #23
  unreachable

bb4:                                              ; preds = %bb7, %bb2
  %iter.sroa.0.0 = phi i32 [ 1, %bb2 ], [ %spec.select, %bb7 ]
  %.pn = phi i32 [ 4, %bb2 ], [ %_16, %bb7 ]
  %nextval.sroa.0.0 = srem i32 %.pn, %_5
  %exitcond.not = icmp eq i32 %iter.sroa.0.0, %smax
  br i1 %exitcond.not, label %bb8, label %bb7

bb7:                                              ; preds = %bb4
  %spec.select = add nuw i32 %iter.sroa.0.0, 1
  %_17 = mul i32 %nextval.sroa.0.0, %nextval.sroa.0.0
  %_16 = add i32 %_17, -2
  %_19 = icmp eq i32 %_16, -2147483648
  %_20 = and i1 %_7, %_19
  br i1 %_20, label %panic2, label %bb4

bb8:                                              ; preds = %bb4
  %_21 = icmp eq i32 %nextval.sroa.0.0, 0
  %. = zext i1 %_21 to i32
  ret i32 %.

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9ccad2525e1c218f7cb65df8da96b031) #23
  unreachable
}
