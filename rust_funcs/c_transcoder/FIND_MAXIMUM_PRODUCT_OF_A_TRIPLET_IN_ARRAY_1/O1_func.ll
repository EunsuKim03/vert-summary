define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb11, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %bb2
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h3f79a0458fe1f799E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha979d477648f05cdE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E.exit": ; preds = %bb2, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  switch i64 %arr.1, label %bb5 [
    i64 0, label %panic
    i64 1, label %panic1
  ]

panic:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E.exit"
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3521aa7f5478fcf32067ded2d99bb6f1) #24
  unreachable

bb5:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E.exit"
  %_14 = zext nneg i32 %n to i64
  %_13 = add nsw i64 %_14, -1
  %_15 = icmp ult i64 %_13, %arr.1
  br i1 %_15, label %bb6, label %panic2

panic1:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E.exit"
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_868a185cf299b700f382c085076181de) #24
  unreachable

bb6:                                              ; preds = %bb5
  %_7 = load i32, ptr %arr.0, align 4, !noundef !27
  %0 = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %_10 = load i32, ptr %0, align 4, !noundef !27
  %_6 = mul i32 %_10, %_7
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_13
  %_12 = load i32, ptr %1, align 4, !noundef !27
  %_5 = mul i32 %_6, %_12
  %_20 = add nsw i64 %_14, -2
  %_21 = icmp ult i64 %_20, %arr.1
  br i1 %_21, label %bb8, label %panic4

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d60ca30a257a7fa26d826080aaa27cf0) #24
  unreachable

bb8:                                              ; preds = %bb6
  %_23 = add nsw i64 %_14, -3
  %_24 = icmp ult i64 %_23, %arr.1
  br i1 %_24, label %bb9, label %panic5

panic4:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_20, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_36f0489c3c5a4d4bc3ebf869687918e7) #24
  unreachable

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_20
  %_19 = load i32, ptr %2, align 4, !noundef !27
  %_17 = mul i32 %_19, %_12
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_23
  %_22 = load i32, ptr %3, align 4, !noundef !27
  %_16 = mul i32 %_17, %_22
  %_0.sroa.0.0.i.i = call noundef i32 @llvm.smax.i32(i32 %_16, i32 %_5)
  br label %bb11

panic5:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8185af6250b77bc8858b10571ba86212) #24
  unreachable

bb11:                                             ; preds = %start, %bb9
  %_0.sroa.0.0 = phi i32 [ %_0.sroa.0.0.i.i, %bb9 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0
}
