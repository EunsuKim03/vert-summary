define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.4.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.4.0.extract.trunc = trunc nuw i64 %arr.sroa.4.0.extract.shift to i32
  %max = tail call i32 @llvm.smax.i32(i32 %arr.sroa.0.0.extract.trunc, i32 %arr.sroa.4.0.extract.trunc)
  %_0.i.i.i11 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i11, label %bb8.lr.ph, label %bb18

bb8.lr.ph:                                        ; preds = %start
  %_23 = icmp eq i32 %k, 0
  %_24 = icmp eq i32 %k, -1
  %_19 = sub i32 %max, %arr.sroa.0.0.extract.trunc
  br i1 %_23, label %panic1, label %bb11

bb18:                                             ; preds = %bb17, %bb12, %bb12.1, %bb17.1, %start
  %res.sroa.0.1 = phi i32 [ 0, %start ], [ %_27, %bb17 ], [ -1, %bb12 ], [ -1, %bb12.1 ], [ %1, %bb17.1 ]
  ret i32 %res.sroa.0.1

bb11:                                             ; preds = %bb8.lr.ph
  %_25 = icmp eq i32 %_19, -2147483648
  %_26 = and i1 %_24, %_25
  br i1 %_26, label %panic2, label %bb12

panic1:                                           ; preds = %bb8.lr.ph
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_586f6197df1178a3a993cec0239467b6) #25
  unreachable

bb12:                                             ; preds = %bb11
  %_18 = srem i32 %_19, %k
  %_27 = sdiv i32 %_19, %k
  %_17.not = icmp eq i32 %_18, 0
  br i1 %_17.not, label %bb17, label %bb18

panic2:                                           ; preds = %bb10.1, %bb11
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_586f6197df1178a3a993cec0239467b6) #25
  unreachable

bb17:                                             ; preds = %bb12
  %exitcond23.not = icmp eq i32 %n, 1
  br i1 %exitcond23.not, label %bb18, label %bb10.1

bb10.1:                                           ; preds = %bb17
  %_19.1 = sub i32 %max, %arr.sroa.4.0.extract.trunc
  %_25.1 = icmp eq i32 %_19.1, -2147483648
  %_26.1 = and i1 %_24, %_25.1
  br i1 %_26.1, label %panic2, label %bb12.1

bb12.1:                                           ; preds = %bb10.1
  %_18.1 = srem i32 %_19.1, %k
  %_27.1 = sdiv i32 %_19.1, %k
  %_17.not.1 = icmp eq i32 %_18.1, 0
  br i1 %_17.not.1, label %bb17.1, label %bb18

bb17.1:                                           ; preds = %bb12.1
  %1 = add i32 %_27.1, %_27
  %exitcond23.1.not = icmp eq i32 %n, 2
  br i1 %exitcond23.1.not, label %bb18, label %bb8.2

bb8.2:                                            ; preds = %bb17.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_52c021ca18c95151b1c319f51ebbff73) #25
  unreachable
}
