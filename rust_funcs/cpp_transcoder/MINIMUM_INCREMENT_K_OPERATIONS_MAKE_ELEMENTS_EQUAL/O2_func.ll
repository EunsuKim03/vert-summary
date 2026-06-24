define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
bb14:
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  %_4.i.i.i.i = icmp sgt i32 %1, %3
  %max.sroa.speculated.v = select i1 %_4.i.i.i.i, i64 %0, i64 %arr.sroa.2.0.extract.shift
  %max.sroa.speculated = trunc i64 %max.sroa.speculated.v to i32
  %_3110 = icmp sgt i32 %n, 0
  br i1 %_3110, label %bb15.lr.ph, label %bb11

bb15.lr.ph:                                       ; preds = %bb14
  %_18 = icmp eq i32 %k, 0
  %_19 = icmp eq i32 %k, -1
  %_14 = sub i32 %max.sroa.speculated, %1
  br i1 %_18, label %panic1, label %bb4

bb11:                                             ; preds = %bb10, %bb5, %bb5.1, %bb10.1, %bb14
  %res.sroa.0.1 = phi i32 [ 0, %bb14 ], [ %_22, %bb10 ], [ -1, %bb5 ], [ -1, %bb5.1 ], [ %4, %bb10.1 ]
  ret i32 %res.sroa.0.1

panic:                                            ; preds = %bb10.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_52c021ca18c95151b1c319f51ebbff73) #18
  unreachable

bb4:                                              ; preds = %bb15.lr.ph
  %_20 = icmp eq i32 %_14, -2147483648
  %_21 = and i1 %_19, %_20
  br i1 %_21, label %panic2, label %bb5

panic1:                                           ; preds = %bb15.lr.ph
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_586f6197df1178a3a993cec0239467b6) #18
  unreachable

bb5:                                              ; preds = %bb4
  %_13 = srem i32 %_14, %k
  %_22 = sdiv i32 %_14, %k
  %_12.not = icmp eq i32 %_13, 0
  br i1 %_12.not, label %bb10, label %bb11

panic2:                                           ; preds = %bb4.1, %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_586f6197df1178a3a993cec0239467b6) #18
  unreachable

bb10:                                             ; preds = %bb5
  %exitcond18.not = icmp eq i32 %n, 1
  br i1 %exitcond18.not, label %bb11, label %bb4.1

bb4.1:                                            ; preds = %bb10
  %_14.1 = sub i32 %max.sroa.speculated, %3
  %_20.1 = icmp eq i32 %_14.1, -2147483648
  %_21.1 = and i1 %_19, %_20.1
  br i1 %_21.1, label %panic2, label %bb5.1

bb5.1:                                            ; preds = %bb4.1
  %_13.1 = srem i32 %_14.1, %k
  %_22.1 = sdiv i32 %_14.1, %k
  %_12.not.1 = icmp eq i32 %_13.1, 0
  br i1 %_12.not.1, label %bb10.1, label %bb11

bb10.1:                                           ; preds = %bb5.1
  %4 = add i32 %_22.1, %_22
  %exitcond18.1.not = icmp eq i32 %n, 2
  br i1 %exitcond18.1.not, label %bb11, label %panic
}
