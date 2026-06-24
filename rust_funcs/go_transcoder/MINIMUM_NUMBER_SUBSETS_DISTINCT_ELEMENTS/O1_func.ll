define noundef range(i32 0, -2147483648) i32 @f_gold(ptr noalias noundef nonnull align 4 %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %ar.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %ar.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hf8b56acd288cc975E(ptr noalias noundef nonnull align 4 %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc4d4437a6bed7ee5E(ptr noalias noundef nonnull align 4 %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_517.not = icmp eq i64 %_7, 0
  br i1 %_517.not, label %bb13, label %bb4.preheader

bb4.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit", %bb11
  %res.sroa.0.019 = phi i32 [ %_0.sroa.0.0.i, %bb11 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit" ]
  %i.sroa.0.018 = phi i64 [ %1, %bb11 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit" ]
  %0 = add i64 %i.sroa.0.018, 1
  %umax24 = call i64 @llvm.umax.i64(i64 %_7, i64 %0)
  br label %bb5

bb13:                                             ; preds = %bb11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit"
  %res.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E.exit" ], [ %_0.sroa.0.0.i, %bb11 ]
  ret i32 %res.sroa.0.0.lcssa

bb5:                                              ; preds = %bb4.preheader, %bb8
  %i.sroa.0.116 = phi i64 [ %i.sroa.0.018, %bb4.preheader ], [ %_18, %bb8 ]
  %count.sroa.0.015 = phi i32 [ 1, %bb4.preheader ], [ %4, %bb8 ]
  %_16 = icmp ult i64 %i.sroa.0.116, %ar.1
  br i1 %_16, label %bb6, label %panic

bb11:                                             ; preds = %bb7, %bb8
  %count.sroa.0.0.lcssa = phi i32 [ %count.sroa.0.015, %bb7 ], [ %4, %bb8 ]
  %i.sroa.0.1.lcssa = phi i64 [ %i.sroa.0.116, %bb7 ], [ %umax24, %bb8 ]
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %count.sroa.0.0.lcssa, i32 %res.sroa.0.019)
  %1 = add i64 %i.sroa.0.1.lcssa, 1
  %_5 = icmp ult i64 %1, %_7
  br i1 %_5, label %bb4.preheader, label %bb13

bb6:                                              ; preds = %bb5
  %_18 = add i64 %i.sroa.0.116, 1
  %_20 = icmp ult i64 %_18, %ar.1
  br i1 %_20, label %bb7, label %panic1

panic:                                            ; preds = %bb5
  %umax = call i64 @llvm.umax.i64(i64 %i.sroa.0.018, i64 %ar.1)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5b702a30463347958fb8d0101a1491a2) #24
  unreachable

bb7:                                              ; preds = %bb6
  %2 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %i.sroa.0.116
  %_13 = load i32, ptr %2, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_18
  %_17 = load i32, ptr %3, align 4, !noundef !37
  %_12 = icmp eq i32 %_13, %_17
  br i1 %_12, label %bb8, label %bb11

panic1:                                           ; preds = %bb6
  %umax23 = call i64 @llvm.umax.i64(i64 %ar.1, i64 %0)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax23, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_873eebaa8e2ea828cb6f02bd71ac525d) #24
  unreachable

bb8:                                              ; preds = %bb7
  %4 = add i32 %count.sroa.0.015, 1
  %exitcond.not = icmp eq i64 %_18, %umax24
  br i1 %exitcond.not, label %bb11, label %bb5
}
