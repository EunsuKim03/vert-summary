define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %i.sroa.0.016 = add nsw i64 %arr.1, -1
  %_6.not17 = icmp eq i64 %i.sroa.0.016, 0
  br i1 %_6.not17, label %bb11, label %bb3

bb11:                                             ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit"
  %max_sum.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit" ], [ %max_sum.sroa.0.1, %bb5 ]
  ret i32 %max_sum.sroa.0.0.lcssa

bb3:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit", %bb5
  %i.sroa.0.020 = phi i64 [ %i.sroa.0.0, %bb5 ], [ %i.sroa.0.016, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit" ]
  %max_sum.sroa.0.019 = phi i32 [ %max_sum.sroa.0.1, %bb5 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit" ]
  %i.sroa.0.0.in18 = phi i64 [ %i.sroa.0.1, %bb5 ], [ %arr.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE.exit" ]
  %_12 = icmp ult i64 %i.sroa.0.020, %arr.1
  br i1 %_12, label %bb4, label %panic

bb4:                                              ; preds = %bb3
  %_14 = add nsw i64 %i.sroa.0.0.in18, -2
  %_16 = icmp ult i64 %_14, %arr.1
  br i1 %_16, label %bb5, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.020, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_10356f686fc31175a129a32313830b42) #24
  unreachable

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.020
  %_10 = load i32, ptr %0, align 4, !noundef !27
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_14
  %_13 = load i32, ptr %1, align 4, !noundef !27
  %_9 = sub i32 %_10, %_13
  %_8 = icmp slt i32 %_9, %k
  %2 = add i32 %_10, %max_sum.sroa.0.019
  %3 = add i32 %2, %_13
  %i.sroa.0.1 = select i1 %_8, i64 %_14, i64 %i.sroa.0.020
  %max_sum.sroa.0.1 = select i1 %_8, i32 %3, i32 %max_sum.sroa.0.019
  %i.sroa.0.0 = add nsw i64 %i.sroa.0.1, -1
  %_6.not = icmp eq i64 %i.sroa.0.0, 0
  br i1 %_6.not, label %bb11, label %bb3

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e1a11f9fc89d9fd39ddad6369ae9240f) #24
  unreachable
}
