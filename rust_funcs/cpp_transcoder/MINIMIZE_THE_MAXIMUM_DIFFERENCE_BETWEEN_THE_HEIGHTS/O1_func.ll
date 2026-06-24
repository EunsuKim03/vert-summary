define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %_4 = icmp eq i32 %n, 1
  br i1 %_4, label %bb28, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h40dcc636985d638bE.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %bb2
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h37b0cc1e6013af8bE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h40dcc636985d638bE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc091c9d504048f29E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h40dcc636985d638bE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h40dcc636985d638bE.exit": ; preds = %bb2, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, -1
  %_11 = icmp ult i64 %_8, %arr.1
  br i1 %_11, label %bb4, label %panic

bb4:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h40dcc636985d638bE.exit"
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_8
  %_7 = load i32, ptr %0, align 4, !noundef !37
  %_12 = load i32, ptr %arr.0, align 4, !noundef !37
  %ans = sub i32 %_7, %_12
  %1 = add i32 %_12, %k
  %2 = sub i32 %_7, %k
  %spec.select13 = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %spec.select14 = call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %_26 = add i32 %n, -1
  br label %bb12.outer

bb12.outer:                                       ; preds = %bb22, %bb4
  %iter.sroa.0.0.ph = phi i32 [ %spec.select, %bb22 ], [ 1, %bb4 ]
  %big.sroa.0.1.ph = phi i32 [ %add.big.sroa.0.1, %bb22 ], [ %spec.select13, %bb4 ]
  %small.sroa.0.1.ph = phi i32 [ %small.sroa.0.1.subtract, %bb22 ], [ %spec.select14, %bb4 ]
  br label %bb12

panic:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h40dcc636985d638bE.exit"
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bda68cbdd90346ed2b546cbcfae38282) #24
  unreachable

bb12:                                             ; preds = %bb12.outer, %bb17
  %iter.sroa.0.0 = phi i32 [ %spec.select, %bb17 ], [ %iter.sroa.0.0.ph, %bb12.outer ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %_26
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %3
  br i1 %_0.i.i.i, label %bb15, label %bb16

bb15:                                             ; preds = %bb12
  %_34 = sext i32 %iter.sroa.0.0 to i64
  %_35 = icmp ugt i64 %arr.1, %_34
  br i1 %_35, label %bb17, label %panic4

bb16:                                             ; preds = %bb12
  %_47 = sub i32 %big.sroa.0.1.ph, %small.sroa.0.1.ph
  %_0.sroa.0.0.i.i7 = call noundef i32 @llvm.smin.i32(i32 %_47, i32 %ans)
  br label %bb28

bb28:                                             ; preds = %start, %bb16
  %_0.sroa.0.0 = phi i32 [ %_0.sroa.0.0.i.i7, %bb16 ], [ 0, %start ]
  ret i32 %_0.sroa.0.0

bb17:                                             ; preds = %bb15
  %4 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_34
  %_33 = load i32, ptr %4, align 4, !noundef !37
  %subtract = sub i32 %_33, %k
  %add = add i32 %_33, %k
  %_38 = icmp sge i32 %subtract, %small.sroa.0.1.ph
  %_40 = icmp sle i32 %add, %big.sroa.0.1.ph
  %or.cond = select i1 %_38, i1 true, i1 %_40
  br i1 %or.cond, label %bb12, label %bb22

panic4:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_34, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_13d6b956a5caa9a94b2a71870bef7f03) #24
  unreachable

bb22:                                             ; preds = %bb17
  %_43 = sub i32 %big.sroa.0.1.ph, %subtract
  %_45 = sub i32 %add, %small.sroa.0.1.ph
  %_42.not = icmp sgt i32 %_43, %_45
  %add.big.sroa.0.1 = select i1 %_42.not, i32 %add, i32 %big.sroa.0.1.ph
  %small.sroa.0.1.subtract = select i1 %_42.not, i32 %small.sroa.0.1.ph, i32 %subtract
  br label %bb12.outer
}
