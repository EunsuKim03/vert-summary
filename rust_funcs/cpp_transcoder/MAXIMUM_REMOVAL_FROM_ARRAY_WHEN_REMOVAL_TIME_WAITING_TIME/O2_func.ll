define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, float noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1757
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit", label %bb7.i.i, !prof !1761

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1761

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h7e6e7c8f8f59358eE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h6d6eb1537a3cb15eE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %iter1 = call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_147.not = icmp eq i64 %iter1, 0
  br i1 %_147.not, label %bb9, label %bb8.preheader

bb8.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit"
  %0 = add i64 %iter1, -1
  %.not.not = icmp ugt i64 %arr.1, %0
  br i1 %.not.not, label %bb8.preheader13, label %panic

bb8.preheader13:                                  ; preds = %bb8.preheader
  %xtraiter = and i64 %iter1, 1
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %bb9.loopexit.unr-lcssa, label %bb8.preheader13.new

bb8.preheader13.new:                              ; preds = %bb8.preheader13
  %unroll_iter = and i64 %iter1, -2
  %invariant.gep = getelementptr inbounds i8, ptr %arr.0, i64 4
  br label %bb8

bb9.loopexit.unr-lcssa:                           ; preds = %bb8, %bb8.preheader13
  %count.sroa.0.1.lcssa.ph = phi i32 [ poison, %bb8.preheader13 ], [ %count.sroa.0.1.1, %bb8 ]
  %count.sroa.0.010.unr = phi i32 [ 0, %bb8.preheader13 ], [ %count.sroa.0.1.1, %bb8 ]
  %cummulative_sum.sroa.0.09.unr = phi float [ 0.000000e+00, %bb8.preheader13 ], [ %cummulative_sum.sroa.0.1.1, %bb8 ]
  %iter.sroa.0.08.unr = phi i64 [ 0, %bb8.preheader13 ], [ %7, %bb8 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb9, label %bb8.epil

bb8.epil:                                         ; preds = %bb9.loopexit.unr-lcssa
  %2 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.08.unr
  %_9.epil = load float, ptr %2, align 4, !noundef !18
  %_8.epil = fcmp oge float %_9.epil, %cummulative_sum.sroa.0.09.unr
  %3 = zext i1 %_8.epil to i32
  %count.sroa.0.1.epil = add i32 %count.sroa.0.010.unr, %3
  br label %bb9

bb9:                                              ; preds = %bb8.epil, %bb9.loopexit.unr-lcssa, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE.exit" ], [ %count.sroa.0.1.lcssa.ph, %bb9.loopexit.unr-lcssa ], [ %count.sroa.0.1.epil, %bb8.epil ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8, %bb8.preheader13.new
  %count.sroa.0.010 = phi i32 [ 0, %bb8.preheader13.new ], [ %count.sroa.0.1.1, %bb8 ]
  %cummulative_sum.sroa.0.09 = phi float [ 0.000000e+00, %bb8.preheader13.new ], [ %cummulative_sum.sroa.0.1.1, %bb8 ]
  %iter.sroa.0.08 = phi i64 [ 0, %bb8.preheader13.new ], [ %7, %bb8 ]
  %niter = phi i64 [ 0, %bb8.preheader13.new ], [ %niter.next.1, %bb8 ]
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.08
  %_9 = load float, ptr %4, align 4, !noundef !18
  %_8 = fcmp oge float %_9, %cummulative_sum.sroa.0.09
  %5 = fadd float %cummulative_sum.sroa.0.09, %_9
  %cummulative_sum.sroa.0.1 = select i1 %_8, float %5, float %cummulative_sum.sroa.0.09
  %6 = zext i1 %_8 to i32
  %count.sroa.0.1 = add i32 %count.sroa.0.010, %6
  %7 = add nuw nsw i64 %iter.sroa.0.08, 2
  %gep = getelementptr inbounds float, ptr %invariant.gep, i64 %iter.sroa.0.08
  %_9.1 = load float, ptr %gep, align 4, !noundef !18
  %_8.1 = fcmp oge float %_9.1, %cummulative_sum.sroa.0.1
  %8 = fadd float %cummulative_sum.sroa.0.1, %_9.1
  %cummulative_sum.sroa.0.1.1 = select i1 %_8.1, float %8, float %cummulative_sum.sroa.0.1
  %9 = zext i1 %_8.1 to i32
  %count.sroa.0.1.1 = add i32 %count.sroa.0.1, %9
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb9.loopexit.unr-lcssa, label %bb8

panic:                                            ; preds = %bb8.preheader
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d1f3eb12d81bce7c64289104bf5c2fc3) #18
  unreachable
}
