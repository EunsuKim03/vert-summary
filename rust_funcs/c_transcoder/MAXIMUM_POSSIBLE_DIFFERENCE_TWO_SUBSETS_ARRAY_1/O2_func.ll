define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1757
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit", label %bb7.i.i, !prof !1761

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1761

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hfcafaa4377ec0178E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h6fe8c0210000c719E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_521.not = icmp eq i64 %_7, 0
  br i1 %_521.not, label %bb10, label %bb3

bb10:                                             ; preds = %bb9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit" ], [ %result.sroa.0.2, %bb9 ]
  %_25 = add nsw i64 %_8, -2
  %_27 = icmp ult i64 %_25, %arr.1
  br i1 %_27, label %bb11, label %panic

bb3:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit", %bb9
  %result.sroa.0.023 = phi i32 [ %result.sroa.0.2, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit" ]
  %i.sroa.0.022 = phi i64 [ %.pre-phi, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit" ]
  %_13 = icmp ult i64 %i.sroa.0.022, %arr.1
  br i1 %_13, label %bb4, label %panic3

bb11:                                             ; preds = %bb10
  %_29 = icmp ult i64 %_7, %arr.1
  br i1 %_29, label %bb12, label %panic1

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_25, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a888afa70f62cbbe941a5c2c83b11dec) #18
  unreachable

bb12:                                             ; preds = %bb11
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_25
  %_24 = load float, ptr %0, align 4, !noundef !18
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_7
  %_28 = load float, ptr %1, align 4, !noundef !18
  %_23 = fcmp une float %_24, %_28
  br i1 %_23, label %bb14, label %bb16

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4e065a0e36838e60d799892552699aab) #18
  unreachable

bb16:                                             ; preds = %bb12, %bb14
  %result.sroa.0.1 = phi i32 [ %2, %bb14 ], [ %result.sroa.0.0.lcssa, %bb12 ]
  ret i32 %result.sroa.0.1

bb14:                                             ; preds = %bb12
  %_31 = call i32 @llvm.fptosi.sat.i32.f32(float %_28)
  %_30.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_31, i1 false)
  %2 = add i32 %_30.sroa.0.0, %result.sroa.0.0.lcssa
  br label %bb16

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i.sroa.0.022
  %_10 = load float, ptr %3, align 4, !noundef !18
  %_15 = add nuw i64 %i.sroa.0.022, 1
  %_17 = icmp ult i64 %_15, %arr.1
  br i1 %_17, label %bb5, label %panic4

panic3:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.022, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_36f08aea09421b3da751b6aae8c9f1a7) #18
  unreachable

bb5:                                              ; preds = %bb4
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_15
  %_14 = load float, ptr %4, align 4, !noundef !18
  %_9 = fcmp une float %_10, %_14
  br i1 %_9, label %bb7, label %bb5.bb9_crit_edge

bb5.bb9_crit_edge:                                ; preds = %bb5
  %.pre = add nuw i64 %i.sroa.0.022, 2
  br label %bb9

panic4:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7744f69448cabd925a11a812c34ee3ab) #18
  unreachable

bb9:                                              ; preds = %bb5.bb9_crit_edge, %bb7
  %.pre-phi = phi i64 [ %.pre, %bb5.bb9_crit_edge ], [ %_15, %bb7 ]
  %result.sroa.0.2 = phi i32 [ %result.sroa.0.023, %bb5.bb9_crit_edge ], [ %5, %bb7 ]
  %_5 = icmp ult i64 %.pre-phi, %_7
  br i1 %_5, label %bb3, label %bb10

bb7:                                              ; preds = %bb5
  %_19 = call i32 @llvm.fptosi.sat.i32.f32(float %_10)
  %_18.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_19, i1 false)
  %5 = add i32 %_18.sroa.0.0, %result.sroa.0.023
  br label %bb9
}
