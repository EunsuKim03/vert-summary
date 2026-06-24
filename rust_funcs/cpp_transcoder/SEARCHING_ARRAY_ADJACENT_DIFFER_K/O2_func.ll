define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_515 = icmp sgt i32 %n, 0
  br i1 %_515, label %bb2.lr.ph, label %bb10

bb2.lr.ph:                                        ; preds = %start
  %_20 = icmp eq i32 %k, 0
  %_21 = icmp eq i32 %k, -1
  br label %bb2

bb10:                                             ; preds = %bb8, %start
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_3cc4ab2e96aee8eb167dc6f61e3ddf68, ptr noundef nonnull inttoptr (i64 47 to ptr))
  br label %bb12

bb2:                                              ; preds = %bb2.lr.ph, %bb8
  %i.sroa.0.016 = phi i32 [ 0, %bb2.lr.ph ], [ %2, %bb8 ]
  %_9 = sext i32 %i.sroa.0.016 to i64
  %_11 = icmp ult i32 %i.sroa.0.016, 2
  br i1 %_11, label %bb3, label %panic

bb12:                                             ; preds = %bb3, %bb10
  %i.sroa.0.1 = phi i32 [ -1, %bb10 ], [ %i.sroa.0.016, %bb3 ]
  ret i32 %i.sroa.0.1

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_9
  %_8 = load i32, ptr %1, align 4, !noundef !23
  %_7 = icmp eq i32 %_8, %x
  br i1 %_7, label %bb12, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_9, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_43c5fea6832bcadffad8011b90d58bc1) #18
  unreachable

bb6:                                              ; preds = %bb3
  %_16 = sub i32 %_8, %x
  br i1 %_20, label %panic2, label %bb7

bb7:                                              ; preds = %bb6
  %_22 = icmp eq i32 %_16, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4224df87bb607972c1fbbfe08c70b205) #18
  unreachable

bb8:                                              ; preds = %bb7
  %_15 = sdiv i32 %_16, %k
  %_14.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_15, i1 false)
  %_0.sroa.0.0.i = tail call noundef range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 range(i32 0, -2147483647) %_14.sroa.0.0, i32 1)
  %2 = add nuw i32 %_0.sroa.0.0.i, %i.sroa.0.016
  %_5 = icmp slt i32 %2, %n
  br i1 %_5, label %bb2, label %bb10

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4224df87bb607972c1fbbfe08c70b205) #18
  unreachable
}
