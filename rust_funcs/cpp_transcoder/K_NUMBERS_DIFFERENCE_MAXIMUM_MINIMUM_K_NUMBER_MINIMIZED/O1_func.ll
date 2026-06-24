define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  br i1 %_0.i.i.i.i.i.i, label %bb4.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit"

bb4.i.i.i.i:                                      ; preds = %start
  store i32 %_4.i.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2625
  store i32 %_3.i.i.i.i.i.i, ptr %arr, align 8, !alias.scope !2625, !noalias !2626
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit": ; preds = %start, %bb4.i.i.i.i
  %_10 = add i32 %n, 1
  %_9 = sub i32 %_10, %k
  %_0.i.i.i10 = icmp sgt i32 %_9, 0
  br i1 %_0.i.i.i10, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit"
  %_22 = sext i32 %k to i64
  %_20 = add nsw i64 %_22, -1
  %_23 = icmp ult i64 %_20, 2
  br i1 %_23, label %bb9, label %panic

bb7:                                              ; preds = %bb9, %bb9.1, %bb9.2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit" ], [ %_17, %bb9 ], [ %_0.sroa.0.0.i.i4.1, %bb9.1 ], [ %_0.sroa.0.0.i.i4.2, %bb9.2 ]
  ret i32 %result.sroa.0.0.lcssa

panic:                                            ; preds = %bb6.2, %bb6.1, %bb6.lr.ph
  %_19.lcssa = phi i64 [ %_20, %bb6.lr.ph ], [ %_22, %bb6.1 ], [ %_19.2, %bb6.2 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6a688abe449239bb85c294a81cc81a33) #24
  unreachable

bb9:                                              ; preds = %bb6.lr.ph
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_20
  %_18 = load i32, ptr %1, align 4, !noundef !37
  %_24 = load i32, ptr %arr, align 8, !noundef !37
  %_17 = sub i32 %_18, %_24
  %exitcond.not = icmp eq i32 %_9, 1
  br i1 %exitcond.not, label %bb7, label %bb6.1

bb6.1:                                            ; preds = %bb9
  %_23.1 = icmp ult i32 %k, 2
  br i1 %_23.1, label %bb9.1, label %panic

bb9.1:                                            ; preds = %bb6.1
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_18.1 = load i32, ptr %2, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_24.1 = load i32, ptr %3, align 4, !noundef !37
  %_17.1 = sub i32 %_18.1, %_24.1
  %_0.sroa.0.0.i.i4.1 = tail call noundef i32 @llvm.smin.i32(i32 %_17.1, i32 %_17)
  %exitcond.1.not = icmp eq i32 %_9, 2
  br i1 %exitcond.1.not, label %bb7, label %bb6.2

bb6.2:                                            ; preds = %bb9.1
  %_19.2 = add nuw nsw i64 %_22, 1
  %_23.2 = icmp eq i32 %k, 0
  br i1 %_23.2, label %bb9.2, label %panic

bb9.2:                                            ; preds = %bb6.2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19.2
  %_18.2 = load i32, ptr %4, align 4, !noundef !37
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_24.2 = load i32, ptr %5, align 8, !noundef !37
  %_17.2 = sub i32 %_18.2, %_24.2
  %_0.sroa.0.0.i.i4.2 = tail call noundef i32 @llvm.smin.i32(i32 %_17.2, i32 %_0.sroa.0.0.i.i4.1)
  br label %bb7
}
