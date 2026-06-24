define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h639387eb4a5a5265E.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h6aa33e3fae7a47b8E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h639387eb4a5a5265E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hb264c5dfa7b47c76E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h639387eb4a5a5265E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h639387eb4a5a5265E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_6.not = icmp eq i64 %arr.1, 0
  br i1 %_6.not, label %panic, label %bb2

bb2:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h639387eb4a5a5265E.exit"
  %0 = load i32, ptr %arr.0, align 4, !noundef !27
  %_10 = sext i32 %n to i64
  %_0.i.i.i20 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i20, label %bb7, label %bb8

panic:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h639387eb4a5a5265E.exit"
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4cedbc4731a56febafc0883e86aa36ef) #24
  unreachable

bb7:                                              ; preds = %bb2, %bb10
  %spec.select27 = phi i64 [ %spec.select, %bb10 ], [ 2, %bb2 ]
  %res.sroa.0.026 = phi i32 [ %res.sroa.0.3, %bb10 ], [ %0, %bb2 ]
  %max_count.sroa.0.025 = phi i32 [ %max_count.sroa.0.2, %bb10 ], [ 1, %bb2 ]
  %curr_count.sroa.0.024 = phi i32 [ %curr_count.sroa.0.1, %bb10 ], [ 1, %bb2 ]
  %iter.sroa.0.023 = phi i64 [ %spec.select27, %bb10 ], [ 1, %bb2 ]
  %_18 = icmp ult i64 %iter.sroa.0.023, %arr.1
  br i1 %_18, label %bb9, label %panic2

bb8:                                              ; preds = %bb10, %bb2
  %curr_count.sroa.0.0.lcssa = phi i32 [ 1, %bb2 ], [ %curr_count.sroa.0.1, %bb10 ]
  %max_count.sroa.0.0.lcssa = phi i32 [ 1, %bb2 ], [ %max_count.sroa.0.2, %bb10 ]
  %res.sroa.0.0.lcssa = phi i32 [ %0, %bb2 ], [ %res.sroa.0.3, %bb10 ]
  %_25 = icmp sgt i32 %curr_count.sroa.0.0.lcssa, %max_count.sroa.0.0.lcssa
  br i1 %_25, label %bb18, label %bb21

bb18:                                             ; preds = %bb8
  %_27 = add nsw i64 %_10, -1
  %_28 = icmp ult i64 %_27, %arr.1
  br i1 %_28, label %bb20, label %panic1

bb21:                                             ; preds = %bb8, %bb20
  %res.sroa.0.1 = phi i32 [ %2, %bb20 ], [ %res.sroa.0.0.lcssa, %bb8 ]
  ret i32 %res.sroa.0.1

bb20:                                             ; preds = %bb18
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_27
  %2 = load i32, ptr %1, align 4, !noundef !27
  br label %bb21

panic1:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_27, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5a61e5801751a068bf892f6ad929b9e4) #24
  unreachable

bb9:                                              ; preds = %bb7
  %_20 = add nsw i64 %iter.sroa.0.023, -1
  %_21 = icmp ult i64 %_20, %arr.1
  br i1 %_21, label %bb10, label %panic3

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.023, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_40592c2622fe1e35a74419cee184f818) #24
  unreachable

bb10:                                             ; preds = %bb9
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter.sroa.0.023
  %_17 = load i32, ptr %3, align 4, !noundef !27
  %4 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_20
  %_19 = load i32, ptr %4, align 4, !noundef !27
  %_16 = icmp eq i32 %_17, %_19
  %5 = add i32 %curr_count.sroa.0.024, 1
  %_22 = icmp sgt i32 %curr_count.sroa.0.024, %max_count.sroa.0.025
  %max_count.sroa.0.1 = call i32 @llvm.smax.i32(i32 %curr_count.sroa.0.024, i32 %max_count.sroa.0.025)
  %res.sroa.0.2 = select i1 %_22, i32 %_19, i32 %res.sroa.0.026
  %curr_count.sroa.0.1 = select i1 %_16, i32 %5, i32 1
  %max_count.sroa.0.2 = select i1 %_16, i32 %max_count.sroa.0.025, i32 %max_count.sroa.0.1
  %res.sroa.0.3 = select i1 %_16, i32 %res.sroa.0.026, i32 %res.sroa.0.2
  %_0.i.i.i = icmp ult i64 %spec.select27, %_10
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select27, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

panic3:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_20, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_dc29205e65627d1bb774551b626c9acd) #24
  unreachable
}
