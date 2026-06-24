define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17haffca987db10b02fE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hb02163aee4b0ce45E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_9 = add i32 %n, -1
  %_0.i.i.i2331 = icmp sgt i32 %_9, 0
  br i1 %_0.i.i.i2331, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit", %bb11
  %spec.select2435 = phi i32 [ %spec.select24, %bb11 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit" ]
  %max_count.sroa.0.0.ph34 = phi i32 [ %_0.sroa.0.0.i.i7, %bb11 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit" ]
  %min_count.sroa.0.0.ph33 = phi i32 [ %_0.sroa.0.0.i.i8, %bb11 ], [ %n, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit" ]
  %iter.sroa.0.0.ph32 = phi i32 [ %spec.select27, %bb11 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit" ]
  %smax = call i32 @llvm.smax.i32(i32 %spec.select2435, i32 %_9)
  %0 = add nuw i32 %smax, 1
  %1 = sub i32 %0, %spec.select2435
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb10
  %spec.select27 = phi i32 [ %spec.select2435, %bb6.lr.ph ], [ %spec.select, %bb10 ]
  %count.sroa.0.026 = phi i32 [ 0, %bb6.lr.ph ], [ %5, %bb10 ]
  %iter.sroa.0.025 = phi i32 [ %iter.sroa.0.0.ph32, %bb6.lr.ph ], [ %spec.select27, %bb10 ]
  %_17 = sext i32 %iter.sroa.0.025 to i64
  %_19 = icmp ugt i64 %arr.1, %_17
  br i1 %_19, label %bb8, label %panic

bb7:                                              ; preds = %bb11, %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit"
  %min_count.sroa.0.0.ph.lcssa22 = phi i32 [ %n, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit" ], [ %min_count.sroa.0.0.ph33, %bb10 ], [ %_0.sroa.0.0.i.i8, %bb11 ]
  %max_count.sroa.0.0.ph.lcssa20 = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E.exit" ], [ %max_count.sroa.0.0.ph34, %bb10 ], [ %_0.sroa.0.0.i.i7, %bb11 ]
  %_0 = sub i32 %max_count.sroa.0.0.ph.lcssa20, %min_count.sroa.0.0.ph.lcssa22
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_22 = add i32 %iter.sroa.0.025, 1
  %_21 = sext i32 %_22 to i64
  %_23 = icmp ugt i64 %arr.1, %_21
  br i1 %_23, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_66217a4a5eeecbd2f2070acb82859146) #24
  unreachable

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_16 = load i32, ptr %2, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21
  %_20 = load i32, ptr %3, align 4, !noundef !37
  %_15 = icmp eq i32 %_16, %_20
  br i1 %_15, label %bb10, label %bb11

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_10de8051f6ed184c0afb19ab290cd0cd) #24
  unreachable

bb11:                                             ; preds = %bb9
  %_0.sroa.0.0.i.i7 = call noundef i32 @llvm.smax.i32(i32 %count.sroa.0.026, i32 %max_count.sroa.0.0.ph34)
  %_0.sroa.0.0.i.i8 = call noundef i32 @llvm.smin.i32(i32 %count.sroa.0.026, i32 %min_count.sroa.0.0.ph33)
  %_0.i.i.i23 = icmp slt i32 %spec.select27, %_9
  %4 = zext i1 %_0.i.i.i23 to i32
  %spec.select24 = add nsw i32 %spec.select27, %4
  br i1 %_0.i.i.i23, label %bb6.lr.ph, label %bb7

bb10:                                             ; preds = %bb9
  %5 = add i32 %count.sroa.0.026, 1
  %_0.i.i.i = icmp slt i32 %spec.select27, %_9
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nsw i32 %spec.select27, %6
  %exitcond.not = icmp eq i32 %5, %1
  br i1 %exitcond.not, label %bb7, label %bb6
}
