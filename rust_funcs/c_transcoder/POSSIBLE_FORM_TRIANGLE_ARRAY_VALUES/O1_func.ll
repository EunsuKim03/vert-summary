define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb12, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2923
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %bb2
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h1de84e17b771f56dE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdfb0b810f7fcd4c9E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit": ; preds = %bb2, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_9 = zext nneg i32 %n to i64
  %_8 = add nsw i64 %_9, -2
  %umax = call i64 @llvm.umax.i64(i64 %arr.1, i64 1)
  %umax15 = call i64 @llvm.umax.i64(i64 %arr.1, i64 2)
  %0 = add nsw i64 %umax, -1
  %1 = add nsw i64 %umax15, -2
  %invariant.gep = getelementptr inbounds i8, ptr %arr.0, i64 8
  br label %bb4

bb4:                                              ; preds = %bb8, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit"
  %i.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit" ], [ %_17, %bb8 ]
  %exitcond.not = icmp eq i64 %i.sroa.0.0, %_8
  br i1 %exitcond.not, label %bb12, label %bb5

bb5:                                              ; preds = %bb4
  %exitcond16.not = icmp eq i64 %i.sroa.0.0, %arr.1
  br i1 %exitcond16.not, label %panic, label %bb6

bb12:                                             ; preds = %bb8, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 0, %bb4 ], [ 1, %bb8 ]
  ret i32 %_0.sroa.0.0

bb6:                                              ; preds = %bb5
  %_17 = add nuw nsw i64 %i.sroa.0.0, 1
  %exitcond17.not = icmp eq i64 %i.sroa.0.0, %0
  br i1 %exitcond17.not, label %panic1, label %bb7

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7dfa0041315cec4bed7c7690a4e25e62) #24
  unreachable

bb7:                                              ; preds = %bb6
  %exitcond18.not = icmp eq i64 %i.sroa.0.0, %1
  br i1 %exitcond18.not, label %panic2, label %bb8

panic1:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2e2557740e5afd8e22f8bcf6486be8df) #24
  unreachable

bb8:                                              ; preds = %bb7
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.0
  %_12 = load i32, ptr %2, align 4, !noundef !32
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_16 = load i32, ptr %3, align 4, !noundef !32
  %_11 = add i32 %_16, %_12
  %gep = getelementptr inbounds i32, ptr %invariant.gep, i64 %i.sroa.0.0
  %_20 = load i32, ptr %gep, align 4, !noundef !32
  %_10 = icmp sgt i32 %_11, %_20
  br i1 %_10, label %bb12, label %bb4

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e20287c63c9b23ef3cff9903ae81108) #24
  unreachable
}
