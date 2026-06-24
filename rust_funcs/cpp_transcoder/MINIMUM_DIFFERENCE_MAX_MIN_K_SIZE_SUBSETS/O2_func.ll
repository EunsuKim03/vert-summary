define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %K) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %3 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %2, %3
  br i1 %_0.i.i.i.i.i, label %bb10.i.i.i, label %_ZN5alloc5slice11stable_sort17h103d52163832ccccE.exit

bb10.i.i.i:                                       ; preds = %start
  %tail.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  store i32 %3, ptr %tail.sroa.0.0.ptr.i.i, align 4, !alias.scope !1817
  store i32 %2, ptr %arr, align 8, !alias.scope !1817, !noalias !1822
  br label %_ZN5alloc5slice11stable_sort17h103d52163832ccccE.exit

_ZN5alloc5slice11stable_sort17h103d52163832ccccE.exit: ; preds = %start, %bb10.i.i.i
  %_15.1 = phi i32 [ %2, %start ], [ %3, %bb10.i.i.i ]
  %_15 = phi i32 [ %3, %start ], [ %2, %bb10.i.i.i ]
  %iter1 = sub i32 %N, %K
  %_208 = icmp sgt i32 %iter1, 0
  br i1 %_208, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %_ZN5alloc5slice11stable_sort17h103d52163832ccccE.exit
  %_13 = add i32 %K, -1
  %4 = sext i32 %_13 to i64
  %_14 = icmp ult i32 %_13, 2
  br i1 %_14, label %bb2, label %panic

bb6:                                              ; preds = %bb2, %bb2.1, %_ZN5alloc5slice11stable_sort17h103d52163832ccccE.exit
  %res.sroa.0.0.lcssa = phi i32 [ 2147483647, %_ZN5alloc5slice11stable_sort17h103d52163832ccccE.exit ], [ %curSeqDiff, %bb2 ], [ %_0.sroa.0.0.i.1, %bb2.1 ]
  ret i32 %res.sroa.0.0.lcssa

bb2:                                              ; preds = %bb5.lr.ph
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %4
  %_10 = load i32, ptr %5, align 4, !noundef !23
  %curSeqDiff = sub i32 %_10, %_15
  %exitcond.not = icmp eq i32 %iter1, 1
  br i1 %exitcond.not, label %bb6, label %bb5.1

panic:                                            ; preds = %bb2.1, %bb5.1, %bb5.lr.ph
  %_11.lcssa = phi i64 [ %4, %bb5.lr.ph ], [ %6, %bb5.1 ], [ 2, %bb2.1 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9cd20fb830182108d7e373d318fd82e4) #18
  unreachable

bb5.1:                                            ; preds = %bb2
  %6 = add nuw nsw i64 %4, 1
  %_14.1 = icmp eq i32 %_13, 0
  br i1 %_14.1, label %bb2.1, label %panic

bb2.1:                                            ; preds = %bb5.1
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %6
  %_10.1 = load i32, ptr %7, align 4, !noundef !23
  %curSeqDiff.1 = sub i32 %_10.1, %_15.1
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %curSeqDiff.1, i32 %curSeqDiff)
  %exitcond.1.not = icmp eq i32 %iter1, 2
  br i1 %exitcond.1.not, label %bb6, label %panic
}
