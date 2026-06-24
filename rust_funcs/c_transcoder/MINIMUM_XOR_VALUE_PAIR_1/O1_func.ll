define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h6abe175cc4560d31E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h6baa1d989d7834f3E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_7 = add i32 %n, -1
  %_0.i.i.i9 = icmp sgt i32 %_7, 0
  br i1 %_0.i.i.i9, label %bb6, label %bb7

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit", %bb9
  %spec.select12 = phi i32 [ %spec.select, %bb9 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit" ]
  %min_xor.sroa.0.011 = phi i32 [ %_0.sroa.0.0.i.i4, %bb9 ], [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit" ]
  %iter.sroa.0.010 = phi i32 [ %spec.select12, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit" ]
  %_14 = zext nneg i32 %iter.sroa.0.010 to i64
  %_16 = icmp samesign ugt i64 %arr.1, %_14
  br i1 %_16, label %bb8, label %panic

bb7:                                              ; preds = %bb9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit"
  %min_xor.sroa.0.0.lcssa = phi i32 [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E.exit" ], [ %_0.sroa.0.0.i.i4, %bb9 ]
  ret i32 %min_xor.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %_19 = add nuw i32 %iter.sroa.0.010, 1
  %_18 = sext i32 %_19 to i64
  %_20 = icmp ugt i64 %arr.1, %_18
  br i1 %_20, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d37cd077c3df6efbd587f923ea416f47) #24
  unreachable

bb9:                                              ; preds = %bb8
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_14
  %_13 = load i32, ptr %0, align 4, !noundef !27
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_18
  %_17 = load i32, ptr %1, align 4, !noundef !27
  %2 = xor i32 %_17, %_13
  %_0.sroa.0.0.i.i4 = call noundef i32 @llvm.smin.i32(i32 %2, i32 %min_xor.sroa.0.011)
  %_0.i.i.i = icmp slt i32 %spec.select12, %_7
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select12, %3
  br i1 %_0.i.i.i, label %bb6, label %bb7

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_82ec6b31bdb3ce1403620b83d1a85d7f) #24
  unreachable
}
