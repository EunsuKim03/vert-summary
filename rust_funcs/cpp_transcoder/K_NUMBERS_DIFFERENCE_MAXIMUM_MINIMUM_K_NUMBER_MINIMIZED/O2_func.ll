define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %3 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %2, %3
  br i1 %_0.i.i.i.i.i, label %bb10.i.i.i, label %_ZN5alloc5slice11stable_sort17hbbc32c077670289eE.exit

bb10.i.i.i:                                       ; preds = %start
  %tail.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  store i32 %3, ptr %tail.sroa.0.0.ptr.i.i, align 4, !alias.scope !1817
  store i32 %2, ptr %arr, align 8, !alias.scope !1817, !noalias !1822
  br label %_ZN5alloc5slice11stable_sort17hbbc32c077670289eE.exit

_ZN5alloc5slice11stable_sort17hbbc32c077670289eE.exit: ; preds = %start, %bb10.i.i.i
  %_18.1 = phi i32 [ %2, %start ], [ %3, %bb10.i.i.i ]
  %_18 = phi i32 [ %3, %start ], [ %2, %bb10.i.i.i ]
  %_7 = add i32 %n, 1
  %iter1 = sub i32 %_7, %k
  %_219 = icmp sgt i32 %iter1, 0
  br i1 %_219, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %_ZN5alloc5slice11stable_sort17hbbc32c077670289eE.exit
  %_16 = sext i32 %k to i64
  %_14 = add nsw i64 %_16, -1
  %_17 = icmp ult i64 %_14, 2
  br i1 %_17, label %bb2, label %panic

bb6:                                              ; preds = %bb2, %bb2.1, %_ZN5alloc5slice11stable_sort17hbbc32c077670289eE.exit
  %result.sroa.0.0.lcssa = phi i32 [ 2147483647, %_ZN5alloc5slice11stable_sort17hbbc32c077670289eE.exit ], [ %_11, %bb2 ], [ %_0.sroa.0.0.i.1, %bb2.1 ]
  ret i32 %result.sroa.0.0.lcssa

bb2:                                              ; preds = %bb5.lr.ph
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_12 = load i32, ptr %4, align 4, !noundef !23
  %_11 = sub i32 %_12, %_18
  %exitcond17.not = icmp eq i32 %iter1, 1
  br i1 %exitcond17.not, label %bb6, label %bb5.1

panic:                                            ; preds = %bb5.2, %bb5.1, %bb5.lr.ph
  %_13.lcssa = phi i64 [ %_14, %bb5.lr.ph ], [ %_16, %bb5.1 ], [ %_13.2, %bb5.2 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6a688abe449239bb85c294a81cc81a33) #18
  unreachable

bb5.1:                                            ; preds = %bb2
  %_17.1 = icmp ult i32 %k, 2
  br i1 %_17.1, label %bb2.1, label %panic

bb2.1:                                            ; preds = %bb5.1
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_12.1 = load i32, ptr %5, align 4, !noundef !23
  %_11.1 = sub i32 %_12.1, %_18.1
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %_11.1, i32 %_11)
  %exitcond17.1.not = icmp eq i32 %iter1, 2
  br i1 %exitcond17.1.not, label %bb6, label %bb5.2

bb5.2:                                            ; preds = %bb2.1
  %_13.2 = add nuw nsw i64 %_16, 1
  %_17.2 = icmp eq i32 %k, 0
  br i1 %_17.2, label %panic2, label %panic

panic2:                                           ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bb72ddfdb6d3f59065b922647502bbd1) #18
  unreachable
}
