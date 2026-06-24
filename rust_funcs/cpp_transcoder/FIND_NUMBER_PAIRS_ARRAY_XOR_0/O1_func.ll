define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h6815e81292384b6eE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h917345284ffd639fE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_0.i.i.i15 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i15, label %bb6, label %bb7

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit", %bb12
  %spec.select20 = phi i32 [ %spec.select, %bb12 ], [ 2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit" ]
  %answer.sroa.0.019 = phi i32 [ %answer.sroa.0.1, %bb12 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit" ]
  %count.sroa.0.018 = phi i32 [ %count.sroa.0.1, %bb12 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit" ]
  %iter.sroa.0.017 = phi i32 [ %spec.select20, %bb12 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit" ]
  %_14 = zext nneg i32 %iter.sroa.0.017 to i64
  %_16 = icmp samesign ugt i64 %a.1, %_14
  br i1 %_16, label %bb8, label %panic

bb7:                                              ; preds = %bb12, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit" ], [ %count.sroa.0.1, %bb12 ]
  %answer.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE.exit" ], [ %answer.sroa.0.1, %bb12 ]
  %_28 = add i32 %count.sroa.0.0.lcssa, -1
  %_26 = mul i32 %_28, %count.sroa.0.0.lcssa
  %_25 = sdiv i32 %_26, 2
  %0 = add i32 %_25, %answer.sroa.0.0.lcssa
  ret i32 %0

bb8:                                              ; preds = %bb6
  %_19 = add nsw i32 %iter.sroa.0.017, -1
  %_18 = sext i32 %_19 to i64
  %_20 = icmp ugt i64 %a.1, %_18
  br i1 %_20, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aabc9968bb8be278c44b1879721e16d5) #24
  unreachable

bb9:                                              ; preds = %bb8
  %1 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_14
  %_13 = load i32, ptr %1, align 4, !noundef !27
  %2 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_18
  %_17 = load i32, ptr %2, align 4, !noundef !27
  %_12 = icmp eq i32 %_13, %_17
  br i1 %_12, label %bb10, label %bb11

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cfb3433bccfa2542497764cedc20d492) #24
  unreachable

bb11:                                             ; preds = %bb9
  %_24 = add i32 %count.sroa.0.018, -1
  %_22 = mul i32 %_24, %count.sroa.0.018
  %_21 = sdiv i32 %_22, 2
  %3 = add i32 %_21, %answer.sroa.0.019
  br label %bb12

bb10:                                             ; preds = %bb9
  %4 = add i32 %count.sroa.0.018, 1
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  %count.sroa.0.1 = phi i32 [ %4, %bb10 ], [ 1, %bb11 ]
  %answer.sroa.0.1 = phi i32 [ %answer.sroa.0.019, %bb10 ], [ %3, %bb11 ]
  %_0.i.i.i = icmp slt i32 %spec.select20, %n
  %5 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select20, %5
  br i1 %_0.i.i.i, label %bb6, label %bb7
}
