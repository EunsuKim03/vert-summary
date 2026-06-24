define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %N, i32 noundef %K) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h1c46fa0be2554b15E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he27b7bac6d2685edE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_8 = add i32 %N, 1
  %_7 = sub i32 %_8, %K
  %_0.i.i.i9 = icmp sgt i32 %_7, 0
  br i1 %_0.i.i.i9, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"
  %_19 = sext i32 %K to i64
  %_17 = add nsw i64 %_19, -1
  %wide.trip.count = zext nneg i32 %_7 to i64
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb9
  %indvars.iv17 = phi i64 [ 0, %bb6.lr.ph ], [ %indvars.iv.next18, %bb9 ]
  %res.sroa.0.011 = phi i32 [ 2147483647, %bb6.lr.ph ], [ %_0.sroa.0.0.i, %bb9 ]
  %_16 = add nuw nsw i64 %_17, %indvars.iv17
  %_21 = icmp ult i64 %_16, %arr.1
  br i1 %_21, label %bb9, label %panic

bb7:                                              ; preds = %bb9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"
  %res.sroa.0.0.lcssa = phi i32 [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit" ], [ %_0.sroa.0.0.i, %bb9 ]
  ret i32 %res.sroa.0.0.lcssa

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e82b7663e61fa9cdc45f08c8e4661b69) #24
  unreachable

bb9:                                              ; preds = %bb6
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_16
  %_15 = load i32, ptr %0, align 4, !noundef !37
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv17
  %_22 = load i32, ptr %1, align 4, !noundef !37
  %cur_seq_diff = sub i32 %_15, %_22
  %_0.sroa.0.0.i = call noundef i32 @llvm.smin.i32(i32 %cur_seq_diff, i32 %res.sroa.0.011)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count
  br i1 %exitcond.not, label %bb7, label %bb6
}
