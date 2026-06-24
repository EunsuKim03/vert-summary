define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %K) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %tail.sroa.0.02.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %_3.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2615, !noalias !2622, !noundef !37
  %_4.i.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !2623, !noalias !2624, !noundef !37
  %_0.i.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %bb4.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"

bb4.i.i.i.i:                                      ; preds = %start
  store i32 %_4.i.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2625
  store i32 %_3.i.i.i.i.i.i, ptr %arr, align 8, !alias.scope !2625, !noalias !2626
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit": ; preds = %start, %bb4.i.i.i.i
  %_9 = sub i32 %N, %K
  %_0.i.i.i9 = icmp sgt i32 %_9, 0
  br i1 %_0.i.i.i9, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"
  %_19 = add i32 %K, -1
  %1 = sext i32 %_19 to i64
  %_20 = icmp ult i32 %_19, 2
  br i1 %_20, label %bb9, label %panic

bb7:                                              ; preds = %bb9, %bb9.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"
  %res.sroa.0.0.lcssa = phi i32 [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit" ], [ %curSeqDiff, %bb9 ], [ %_0.sroa.0.0.i.i4.1, %bb9.1 ]
  ret i32 %res.sroa.0.0.lcssa

panic:                                            ; preds = %bb9.1, %bb6.1, %bb6.lr.ph
  %_17.lcssa = phi i64 [ %1, %bb6.lr.ph ], [ %3, %bb6.1 ], [ 2, %bb9.1 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9cd20fb830182108d7e373d318fd82e4) #24
  unreachable

bb9:                                              ; preds = %bb6.lr.ph
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %1
  %_16 = load i32, ptr %2, align 4, !noundef !37
  %_21 = load i32, ptr %arr, align 8, !noundef !37
  %curSeqDiff = sub i32 %_16, %_21
  %exitcond.not = icmp eq i32 %_9, 1
  br i1 %exitcond.not, label %bb7, label %bb6.1

bb6.1:                                            ; preds = %bb9
  %3 = add nuw nsw i64 %1, 1
  %_20.1 = icmp eq i32 %_19, 0
  br i1 %_20.1, label %bb9.1, label %panic

bb9.1:                                            ; preds = %bb6.1
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %3
  %_16.1 = load i32, ptr %4, align 4, !noundef !37
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_21.1 = load i32, ptr %5, align 4, !noundef !37
  %curSeqDiff.1 = sub i32 %_16.1, %_21.1
  %_0.sroa.0.0.i.i4.1 = tail call noundef i32 @llvm.smin.i32(i32 %curSeqDiff.1, i32 %curSeqDiff)
  %exitcond.1.not = icmp eq i32 %_9, 2
  br i1 %exitcond.1.not, label %bb7, label %panic
}
