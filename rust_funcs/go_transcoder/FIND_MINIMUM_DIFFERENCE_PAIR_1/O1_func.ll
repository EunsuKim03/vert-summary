define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %_5 = sext i32 %n to i64
  %_7.not.i = icmp ult i64 %arr.1, %_5
  br i1 %_7.not.i, label %bb3.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h378ef2c6c21a7c5bE.exit", !prof !1629

bb3.i:                                            ; preds = %start
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef 0, i64 noundef range(i64 -2147483648, 2147483648) %_5, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2cdb02dd27bc603a77120afc84d75e0b) #24, !noalias !2605
  unreachable

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h378ef2c6c21a7c5bE.exit": ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2608
  %b.i.i = icmp ult i32 %n, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h378ef2c6c21a7c5bE.exit"
  %b1.i.i = icmp ult i32 %n, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h0125b80e416ec6f7E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2147483648) %_5, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h291bee4fbe87ff42E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2147483648) %_5, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit": ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h378ef2c6c21a7c5bE.exit", %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2608
  %_9 = add nsw i64 %_5, -1
  %_0.i.i.i15.not = icmp eq i64 %_9, 0
  br i1 %_0.i.i.i15.not, label %bb8, label %bb7

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit", %bb10
  %spec.select819 = phi i64 [ %spec.select8, %bb10 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit" ]
  %diff.sroa.0.018 = phi i32 [ %spec.select, %bb10 ], [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit" ]
  %iter.sroa.0.017 = phi i64 [ %spec.select819, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit" ]
  %_18 = add i64 %iter.sroa.0.017, 1
  %_20 = icmp ult i64 %_18, %_5
  br i1 %_20, label %bb9, label %panic

bb8:                                              ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit"
  %diff.sroa.0.0.lcssa = phi i32 [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E.exit" ], [ %spec.select, %bb10 ]
  ret i32 %diff.sroa.0.0.lcssa

bb9:                                              ; preds = %bb7
  %_22 = icmp ult i64 %iter.sroa.0.017, %_5
  br i1 %_22, label %bb10, label %panic3

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5324fe370d32f1e1056825184ae0db14) #24
  unreachable

bb10:                                             ; preds = %bb9
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_18
  %_17 = load i32, ptr %0, align 4, !noundef !27
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter.sroa.0.017
  %_21 = load i32, ptr %1, align 4, !noundef !27
  %_16 = sub i32 %_17, %_21
  %spec.select = call i32 @llvm.smin.i32(i32 %_16, i32 %diff.sroa.0.018)
  %_0.i.i.i = icmp ult i64 %spec.select819, %_9
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select8 = add nuw i64 %spec.select819, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

panic3:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.017, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3c52c45f48c26631e4d08f827081f755) #24
  unreachable
}
