define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 4 captures(none) dereferenceable(40000) %arr, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1814 = icmp sgt i32 %n, 0
  br i1 %_1814, label %bb17.preheader, label %bb18

bb17.preheader:                                   ; preds = %start
  %0 = zext nneg i32 %n to i64
  %1 = add nsw i32 %n, -10001
  %.not = icmp ult i32 %1, -10000
  br i1 %.not, label %panic, label %bb17

bb18:                                             ; preds = %bb13, %start
  %ans.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb13 ]
  ret i32 %ans.sroa.0.0.lcssa

bb17:                                             ; preds = %bb17.preheader, %bb13
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb13 ], [ 0, %bb17.preheader ]
  %ans.sroa.0.018 = phi i32 [ %_0.sroa.0.0.i, %bb13 ], [ -2147483648, %bb17.preheader ]
  %maxval.sroa.0.017 = phi i32 [ %spec.store.select, %bb13 ], [ 1, %bb17.preheader ]
  %minval.sroa.0.015 = phi i32 [ %minval.sroa.0.1, %bb13 ], [ 1, %bb17.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv
  %_8 = load i32, ptr %2, align 4, !noundef !23
  %_7 = icmp sgt i32 %_8, 0
  br i1 %_7, label %bb4, label %bb7

panic:                                            ; preds = %bb17.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 10000, i64 noundef 10000, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_602245a8c0c4b065880903093fc7db90) #18
  unreachable

bb7:                                              ; preds = %bb17
  %_13 = icmp eq i32 %_8, 0
  br i1 %_13, label %bb13, label %bb10

bb10:                                             ; preds = %bb7
  %3 = mul i32 %_8, %minval.sroa.0.015
  %4 = mul i32 %_8, %maxval.sroa.0.017
  br label %bb13

bb13:                                             ; preds = %bb7, %bb10, %bb4
  %minval.sroa.0.1 = phi i32 [ %_0.sroa.0.0.i12, %bb4 ], [ %4, %bb10 ], [ 1, %bb7 ]
  %maxval.sroa.0.1 = phi i32 [ %5, %bb4 ], [ %3, %bb10 ], [ 0, %bb7 ]
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %maxval.sroa.0.1, i32 %ans.sroa.0.018)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %maxval.sroa.0.1, i32 1)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %bb18, label %bb17

bb4:                                              ; preds = %bb17
  %5 = mul i32 %_8, %maxval.sroa.0.017
  %_12 = mul i32 %_8, %minval.sroa.0.015
  %_0.sroa.0.0.i12 = tail call noundef range(i32 -2147483648, 2) i32 @llvm.smin.i32(i32 %_12, i32 1)
  br label %bb13
}
