define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %iter3 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %iter3, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1036
  %_5086.not = icmp eq i32 %n, 1
  br i1 %_5086.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha55da6ed4c74d06bE.exit62", label %bb3.preheader

bb3.preheader:                                    ; preds = %bb3.i3.i
  %exitcond94.not = icmp samesign ult i32 %n, 3
  br i1 %exitcond94.not, label %bb37, label %panic15

bb14.i:                                           ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 0, i64 %_21.0.i.i.i) #20, !noalias !1041
  unreachable

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f316587cd457ae6447420db737fdde00) #20
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha55da6ed4c74d06bE.exit62": ; preds = %bb3.i3.i, %bb37
  %max_so_far.sroa.0.1.lcssa = phi i32 [ %x.y.i63, %bb37 ], [ %arr.sroa.0.0.extract.trunc, %bb3.i3.i ]
  ret i32 %max_so_far.sroa.0.1.lcssa

bb37:                                             ; preds = %bb3.preheader
  %_13 = add i32 %arr.sroa.2.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  %x.y.i64 = tail call noundef i32 @llvm.smax.i32(i32 %arr.sroa.2.0.extract.trunc, i32 %_13)
  %x.y.i65 = tail call noundef i32 @llvm.smax.i32(i32 %arr.sroa.0.0.extract.trunc, i32 %x.y.i64)
  %_28 = add i32 %x.y.i65, %arr.sroa.0.0.extract.trunc
  %x.y.i63 = tail call i32 @llvm.smax.i32(i32 %x.y.i65, i32 %_28)
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha55da6ed4c74d06bE.exit62"

panic15:                                          ; preds = %bb3.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_735b14aff704636fdb9148ed047c609b) #20
  unreachable
}
