define noundef i32 @f_gold(i64 %0, i32 noundef %low, i32 noundef %high) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = sext i32 %low to i64
  %_5 = icmp ult i32 %low, 2
  br i1 %_5, label %bb1, label %panic

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_4
  %2 = load i32, ptr %1, align 4, !noundef !37
  %3 = zext nneg i32 %low to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %high, i32 %low)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_4, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_85b482372b0f0c1c7f6f18e41e80e072) #24
  unreachable

bb2:                                              ; preds = %bb4, %bb1
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb4 ], [ %3, %bb1 ]
  %max.sroa.0.0 = phi i32 [ %_10, %bb4 ], [ %2, %bb1 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb9, label %bb3

bb3:                                              ; preds = %bb2
  %_13 = icmp eq i64 %indvars.iv, 0
  br i1 %_13, label %bb4, label %panic1

bb9:                                              ; preds = %bb4, %bb2
  ret i32 %max.sroa.0.0

bb4:                                              ; preds = %bb3
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next
  %_10 = load i32, ptr %4, align 4, !noundef !37
  %_9 = icmp sgt i32 %_10, %max.sroa.0.0
  br i1 %_9, label %bb2, label %bb9

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.next, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_16ba686749d500822906d29c9b5e2af2) #24
  unreachable
}
