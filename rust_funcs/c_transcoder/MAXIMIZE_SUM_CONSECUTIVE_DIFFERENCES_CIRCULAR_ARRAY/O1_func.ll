define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2923
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h919db4a04b14d012E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hb2900bec35c5ef8eE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_6 = sdiv i32 %n, 2
  %_0.i.i.i9 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i9, label %bb6, label %bb7

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit", %bb9
  %spec.select12 = phi i32 [ %spec.select, %bb9 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit" ]
  %sum.sroa.0.011 = phi i32 [ %5, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit" ]
  %iter.sroa.0.010 = phi i32 [ %spec.select12, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit" ]
  %_14 = zext nneg i32 %iter.sroa.0.010 to i64
  %_16 = icmp samesign ugt i64 %arr.1, %_14
  br i1 %_16, label %bb8, label %panic

bb7:                                              ; preds = %bb9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit"
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE.exit" ], [ %5, %bb9 ]
  ret i32 %sum.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %0 = xor i32 %iter.sroa.0.010, -1
  %_20 = add i32 %n, %0
  %_19 = sext i32 %_20 to i64
  %_22 = icmp ugt i64 %arr.1, %_19
  br i1 %_22, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_25185451aaae46edf5c8f10f14fc6dab) #24
  unreachable

bb9:                                              ; preds = %bb8
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_14
  %_13 = load i32, ptr %1, align 4, !noundef !37
  %2 = shl i32 %_13, 1
  %3 = sub i32 %sum.sroa.0.011, %2
  %4 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_19
  %_18 = load i32, ptr %4, align 4, !noundef !37
  %_17 = shl i32 %_18, 1
  %5 = add i32 %3, %_17
  %_0.i.i.i = icmp slt i32 %spec.select12, %_6
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select12, %6
  br i1 %_0.i.i.i, label %bb6, label %bb7

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8e2267d03d031985c1b6f16a6f288cab) #24
  unreachable
}
