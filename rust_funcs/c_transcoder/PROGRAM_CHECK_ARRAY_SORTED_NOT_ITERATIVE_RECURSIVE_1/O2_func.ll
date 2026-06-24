define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 {
start:
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %bb9, label %bb3

bb3:                                              ; preds = %start
  %iter1 = sext i32 %n to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %arr.1, i64 1)
  %0 = add nuw nsw i64 %arr.1, 1
  %invariant.gep = getelementptr i8, ptr %arr.0, i64 -4
  br label %bb4

bb4:                                              ; preds = %bb6, %bb3
  %iter.sroa.0.0 = phi i64 [ 1, %bb3 ], [ %1, %bb6 ]
  %exitcond.not = icmp eq i64 %iter.sroa.0.0, %iter1
  br i1 %exitcond.not, label %bb9, label %bb10

bb10:                                             ; preds = %bb4
  %1 = add nuw nsw i64 %iter.sroa.0.0, 1
  %exitcond10.not = icmp eq i64 %iter.sroa.0.0, %0
  br i1 %exitcond10.not, label %panic, label %bb5

bb9:                                              ; preds = %bb6, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb6 ], [ 1, %bb4 ]
  ret i32 %_0.sroa.0.0

bb5:                                              ; preds = %bb10
  %exitcond11.not = icmp eq i64 %iter.sroa.0.0, %umax
  br i1 %exitcond11.not, label %panic2, label %bb6

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_82852f1eb202d1980b442d1ad28c4ad6) #18
  unreachable

bb6:                                              ; preds = %bb5
  %gep = getelementptr float, ptr %invariant.gep, i64 %iter.sroa.0.0
  %_9 = load float, ptr %gep, align 4, !noundef !23
  %2 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.0
  %_13 = load float, ptr %2, align 4, !noundef !23
  %_8 = fcmp ogt float %_9, %_13
  br i1 %_8, label %bb9, label %bb4

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0583203e8485360543f7c91248432211) #18
  unreachable
}
