define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, float noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2557
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit", label %bb7.i.i, !prof !2561

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2561

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h7e6e7c8f8f59358eE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h6d6eb1537a3cb15eE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_7 = call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_0.i.i.i7.not = icmp eq i64 %_7, 0
  br i1 %_0.i.i.i7.not, label %bb7, label %bb6

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit", %bb8
  %spec.select12 = phi i64 [ %spec.select, %bb8 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit" ]
  %count.sroa.0.011 = phi i32 [ %count.sroa.0.1, %bb8 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit" ]
  %cummulative_sum.sroa.0.010 = phi float [ %cummulative_sum.sroa.0.1, %bb8 ], [ 0.000000e+00, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit" ]
  %iter.sroa.0.09 = phi i64 [ %spec.select12, %bb8 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit" ]
  %_16 = icmp ult i64 %iter.sroa.0.09, %arr.1
  br i1 %_16, label %bb8, label %panic

bb7:                                              ; preds = %bb8, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit" ], [ %count.sroa.0.1, %bb8 ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.09
  %_14 = load float, ptr %0, align 4, !noundef !32
  %_13 = fcmp oge float %_14, %cummulative_sum.sroa.0.010
  %1 = fadd float %cummulative_sum.sroa.0.010, %_14
  %cummulative_sum.sroa.0.1 = select i1 %_13, float %1, float %cummulative_sum.sroa.0.010
  %2 = zext i1 %_13 to i32
  %count.sroa.0.1 = add i32 %count.sroa.0.011, %2
  %_0.i.i.i = icmp ult i64 %spec.select12, %_7
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select12, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.09, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d1f3eb12d81bce7c64289104bf5c2fc3) #24
  unreachable
}
