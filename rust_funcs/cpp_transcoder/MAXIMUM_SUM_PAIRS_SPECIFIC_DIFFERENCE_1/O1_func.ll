define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h1e689e6ca109bba3E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h3ebfd5facbd64107E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_6 = add i32 %n, -1
  %_7.not15 = icmp eq i32 %_6, 0
  br i1 %_7.not15, label %bb11, label %bb3.preheader

bb3.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit"
  %0 = sext i32 %_6 to i64
  %1 = add nsw i64 %0, -1
  %_18.first_iter = icmp ult i64 %1, %arr.1
  br label %bb3

bb3:                                              ; preds = %bb3.preheader, %bb8
  %max_sum.sroa.0.017 = phi i32 [ %5, %bb8 ], [ 0, %bb3.preheader ]
  %i.sroa.0.016 = phi i64 [ %_16, %bb8 ], [ %0, %bb3.preheader ]
  %_14 = icmp ult i64 %i.sroa.0.016, %arr.1
  br i1 %_14, label %bb4, label %panic

bb11:                                             ; preds = %bb8, %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit"
  %max_sum.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit" ], [ %5, %bb8 ], [ %max_sum.sroa.0.017, %bb5 ]
  ret i32 %max_sum.sroa.0.0.lcssa

bb4:                                              ; preds = %bb3
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.016
  %_11 = load i32, ptr %2, align 4, !noundef !27
  %_16 = add nsw i64 %i.sroa.0.016, -1
  br i1 %_18.first_iter, label %bb5, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.016, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7828711393b40cf607ce64a357760d7c) #24
  unreachable

bb5:                                              ; preds = %bb4
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_16
  %_15 = load i32, ptr %3, align 4, !noundef !27
  %_10 = sub i32 %_11, %_15
  %_9 = icmp slt i32 %_10, %k
  br i1 %_9, label %bb8, label %bb11

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8075ac7ecdfd83d897ad3e995f80cde6) #24
  unreachable

bb8:                                              ; preds = %bb5
  %4 = add i32 %_11, %max_sum.sroa.0.017
  %5 = add i32 %4, %_15
  %_7.not = icmp eq i64 %_16, 0
  br i1 %_7.not, label %bb11, label %bb3
}
