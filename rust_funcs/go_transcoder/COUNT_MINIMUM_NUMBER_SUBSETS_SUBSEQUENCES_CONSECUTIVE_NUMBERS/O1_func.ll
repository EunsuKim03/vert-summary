define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2923
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hae4ad84fb452ce8eE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h35748ad8529aab73E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_6 = add i32 %n, -1
  %_0.i.i.i9 = icmp sgt i32 %_6, 0
  br i1 %_0.i.i.i9, label %bb6, label %bb7

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit", %bb9
  %spec.select412 = phi i32 [ %spec.select4, %bb9 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit" ]
  %count.sroa.0.011 = phi i32 [ %spec.select, %bb9 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit" ]
  %iter.sroa.0.010 = phi i32 [ %spec.select412, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit" ]
  %_15 = zext nneg i32 %iter.sroa.0.010 to i64
  %_17 = icmp samesign ugt i64 %arr.1, %_15
  br i1 %_17, label %bb8, label %panic

bb7:                                              ; preds = %bb9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E.exit" ], [ %spec.select, %bb9 ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %_19 = add nuw nsw i64 %_15, 1
  %_20 = icmp samesign ult i64 %_19, %arr.1
  br i1 %_20, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4e695acd3a9b051d3412bc846c6796f9) #24
  unreachable

bb9:                                              ; preds = %bb8
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_15
  %_14 = load i32, ptr %0, align 4, !noundef !37
  %_13 = add i32 %_14, 1
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_19
  %_18 = load i32, ptr %1, align 4, !noundef !37
  %_12.not = icmp ne i32 %_13, %_18
  %2 = zext i1 %_12.not to i32
  %spec.select = add i32 %count.sroa.0.011, %2
  %_0.i.i.i = icmp slt i32 %spec.select412, %_6
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select4 = add nuw nsw i32 %spec.select412, %3
  br i1 %_0.i.i.i, label %bb6, label %bb7

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d7a3b9ca1da7de4904059ec177864531) #24
  unreachable
}
