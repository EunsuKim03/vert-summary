define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %low = alloca [8 x i8], align 8
  %high = alloca [8 x i8], align 8
  store i64 %0, ptr %high, align 8
  store i64 %1, ptr %low, align 8
  %_4 = icmp slt i32 %n, 1
  br i1 %_4, label %common.ret11, label %bb2

bb2:                                              ; preds = %start
  %_7 = zext nneg i32 %n to i64
  %_6 = add nsw i64 %_7, -1
  %_8 = icmp samesign ult i32 %n, 3
  br i1 %_8, label %bb3, label %panic

common.ret11:                                     ; preds = %start, %bb3
  %common.ret11.op = phi i32 [ %_0.sroa.0.0.i, %bb3 ], [ 0, %start ]
  ret i32 %common.ret11.op

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds nuw i32, ptr %high, i64 %_6
  %high_n = load i32, ptr %2, align 4, !noundef !23
  %3 = getelementptr inbounds nuw i32, ptr %low, i64 %_6
  %low_n = load i32, ptr %3, align 4, !noundef !23
  %_11 = add nsw i32 %n, -2
  %high_rec = tail call noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %_11)
  %_13 = add nsw i32 %n, -1
  %low_rec = tail call noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %_13)
  %_14 = add i32 %high_rec, %high_n
  %_15 = add i32 %low_rec, %low_n
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_15, i32 %_14)
  br label %common.ret11

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_6, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1a13199bcc1ea5035e85973ed0101f8e) #18
  unreachable
}
