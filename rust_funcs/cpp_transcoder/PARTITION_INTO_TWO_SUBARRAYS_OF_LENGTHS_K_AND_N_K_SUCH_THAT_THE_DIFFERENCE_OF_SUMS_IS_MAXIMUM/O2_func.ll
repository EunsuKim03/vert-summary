define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %N, i32 noundef %k) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_5 = sub i32 %N, %k
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_5, i32 %k)
  %_2410 = icmp sgt i32 %N, 0
  br i1 %_2410, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %0 = zext nneg i32 %N to i64
  %1 = add nsw i32 %N, -1
  %2 = zext nneg i32 %1 to i64
  %.not.not = icmp samesign ugt i64 %arr.1, %2
  br i1 %.not.not, label %bb7.preheader32, label %panic3

bb7.preheader32:                                  ; preds = %bb7.preheader
  %xtraiter = and i64 %0, 7
  %3 = icmp ult i32 %N, 8
  br i1 %3, label %bb8.loopexit.unr-lcssa, label %bb7.preheader32.new

bb7.preheader32.new:                              ; preds = %bb7.preheader32
  %unroll_iter = and i64 %0, 2147483640
  %invariant.gep = getelementptr inbounds i8, ptr %arr.0, i64 4
  %invariant.gep45 = getelementptr inbounds i8, ptr %arr.0, i64 8
  %invariant.gep47 = getelementptr inbounds i8, ptr %arr.0, i64 12
  %invariant.gep49 = getelementptr inbounds i8, ptr %arr.0, i64 16
  %invariant.gep51 = getelementptr inbounds i8, ptr %arr.0, i64 20
  %invariant.gep53 = getelementptr inbounds i8, ptr %arr.0, i64 24
  %invariant.gep55 = getelementptr inbounds i8, ptr %arr.0, i64 28
  br label %bb7

bb8.loopexit.unr-lcssa:                           ; preds = %bb7, %bb7.preheader32
  %.lcssa33.ph = phi float [ poison, %bb7.preheader32 ], [ %18, %bb7 ]
  %indvars.iv.unr = phi i64 [ 0, %bb7.preheader32 ], [ %indvars.iv.next.7, %bb7 ]
  %S.sroa.0.012.unr = phi float [ 0.000000e+00, %bb7.preheader32 ], [ %18, %bb7 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb8, label %bb7.epil

bb7.epil:                                         ; preds = %bb8.loopexit.unr-lcssa, %bb7.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb7.epil ], [ %indvars.iv.unr, %bb8.loopexit.unr-lcssa ]
  %S.sroa.0.012.epil = phi float [ %5, %bb7.epil ], [ %S.sroa.0.012.unr, %bb8.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb7.epil ], [ 0, %bb8.loopexit.unr-lcssa ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv.epil
  %_10.epil = load float, ptr %4, align 4, !noundef !18
  %5 = fadd float %S.sroa.0.012.epil, %_10.epil
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb8, label %bb7.epil, !llvm.loop !1760

bb8:                                              ; preds = %bb8.loopexit.unr-lcssa, %bb7.epil, %start
  %S.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %.lcssa33.ph, %bb8.loopexit.unr-lcssa ], [ %5, %bb7.epil ]
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1762
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1765
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit", label %bb7.i.i, !prof !1769

bb7.i.i:                                          ; preds = %bb8
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1769

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hbb4268273d719db1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha80044342790034cE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit": ; preds = %bb8, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1762
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_3113 = icmp sgt i32 %_0.sroa.0.0.i, 0
  br i1 %_3113, label %bb12.preheader, label %bb13

bb12.preheader:                                   ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"
  %6 = zext nneg i32 %_0.sroa.0.0.i to i64
  %7 = add nsw i32 %_0.sroa.0.0.i, -1
  %8 = zext nneg i32 %7 to i64
  %.not.not26 = icmp samesign ugt i64 %arr.1, %8
  br i1 %.not.not26, label %bb12.preheader31, label %panic

bb12.preheader31:                                 ; preds = %bb12.preheader
  %xtraiter35 = and i64 %6, 7
  %9 = icmp ult i32 %_0.sroa.0.0.i, 8
  br i1 %9, label %bb13.loopexit.unr-lcssa, label %bb12.preheader31.new

bb12.preheader31.new:                             ; preds = %bb12.preheader31
  %unroll_iter39 = and i64 %6, 2147483640
  %invariant.gep57 = getelementptr inbounds i8, ptr %arr.0, i64 4
  %invariant.gep59 = getelementptr inbounds i8, ptr %arr.0, i64 8
  %invariant.gep61 = getelementptr inbounds i8, ptr %arr.0, i64 12
  %invariant.gep63 = getelementptr inbounds i8, ptr %arr.0, i64 16
  %invariant.gep65 = getelementptr inbounds i8, ptr %arr.0, i64 20
  %invariant.gep67 = getelementptr inbounds i8, ptr %arr.0, i64 24
  %invariant.gep69 = getelementptr inbounds i8, ptr %arr.0, i64 28
  br label %bb12

bb7:                                              ; preds = %bb7, %bb7.preheader32.new
  %indvars.iv = phi i64 [ 0, %bb7.preheader32.new ], [ %indvars.iv.next.7, %bb7 ]
  %S.sroa.0.012 = phi float [ 0.000000e+00, %bb7.preheader32.new ], [ %18, %bb7 ]
  %niter = phi i64 [ 0, %bb7.preheader32.new ], [ %niter.next.7, %bb7 ]
  %10 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv
  %_10 = load float, ptr %10, align 4, !noundef !18
  %11 = fadd float %S.sroa.0.012, %_10
  %gep = getelementptr inbounds float, ptr %invariant.gep, i64 %indvars.iv
  %_10.1 = load float, ptr %gep, align 4, !noundef !18
  %12 = fadd float %11, %_10.1
  %gep46 = getelementptr inbounds float, ptr %invariant.gep45, i64 %indvars.iv
  %_10.2 = load float, ptr %gep46, align 4, !noundef !18
  %13 = fadd float %12, %_10.2
  %gep48 = getelementptr inbounds float, ptr %invariant.gep47, i64 %indvars.iv
  %_10.3 = load float, ptr %gep48, align 4, !noundef !18
  %14 = fadd float %13, %_10.3
  %gep50 = getelementptr inbounds float, ptr %invariant.gep49, i64 %indvars.iv
  %_10.4 = load float, ptr %gep50, align 4, !noundef !18
  %15 = fadd float %14, %_10.4
  %gep52 = getelementptr inbounds float, ptr %invariant.gep51, i64 %indvars.iv
  %_10.5 = load float, ptr %gep52, align 4, !noundef !18
  %16 = fadd float %15, %_10.5
  %gep54 = getelementptr inbounds float, ptr %invariant.gep53, i64 %indvars.iv
  %_10.6 = load float, ptr %gep54, align 4, !noundef !18
  %17 = fadd float %16, %_10.6
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %gep56 = getelementptr inbounds float, ptr %invariant.gep55, i64 %indvars.iv
  %_10.7 = load float, ptr %gep56, align 4, !noundef !18
  %18 = fadd float %17, %_10.7
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb8.loopexit.unr-lcssa, label %bb7

bb13.loopexit.unr-lcssa:                          ; preds = %bb12, %bb12.preheader31
  %.lcssa.ph = phi float [ poison, %bb12.preheader31 ], [ %30, %bb12 ]
  %indvars.iv21.unr = phi i64 [ 0, %bb12.preheader31 ], [ %indvars.iv.next22.7, %bb12 ]
  %S1.sroa.0.015.unr = phi float [ 0.000000e+00, %bb12.preheader31 ], [ %30, %bb12 ]
  %lcmp.mod37.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %bb13, label %bb12.epil

bb12.epil:                                        ; preds = %bb13.loopexit.unr-lcssa, %bb12.epil
  %indvars.iv21.epil = phi i64 [ %indvars.iv.next22.epil, %bb12.epil ], [ %indvars.iv21.unr, %bb13.loopexit.unr-lcssa ]
  %S1.sroa.0.015.epil = phi float [ %20, %bb12.epil ], [ %S1.sroa.0.015.unr, %bb13.loopexit.unr-lcssa ]
  %epil.iter36 = phi i64 [ %epil.iter36.next, %bb12.epil ], [ 0, %bb13.loopexit.unr-lcssa ]
  %indvars.iv.next22.epil = add nuw nsw i64 %indvars.iv21.epil, 1
  %19 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv21.epil
  %_17.epil = load float, ptr %19, align 4, !noundef !18
  %20 = fadd float %S1.sroa.0.015.epil, %_17.epil
  %epil.iter36.next = add i64 %epil.iter36, 1
  %epil.iter36.cmp.not = icmp eq i64 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %bb13, label %bb12.epil, !llvm.loop !1770

bb13:                                             ; preds = %bb13.loopexit.unr-lcssa, %bb12.epil, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"
  %S1.sroa.0.0.lcssa = phi float [ 0.000000e+00, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit" ], [ %.lcssa.ph, %bb13.loopexit.unr-lcssa ], [ %20, %bb12.epil ]
  %_23 = fsub float %S.sroa.0.0.lcssa, %S1.sroa.0.0.lcssa
  %_21 = fsub float %S1.sroa.0.0.lcssa, %_23
  %21 = call i32 @llvm.fptosi.sat.i32.f32(float %_21)
  ret i32 %21

bb12:                                             ; preds = %bb12, %bb12.preheader31.new
  %indvars.iv21 = phi i64 [ 0, %bb12.preheader31.new ], [ %indvars.iv.next22.7, %bb12 ]
  %S1.sroa.0.015 = phi float [ 0.000000e+00, %bb12.preheader31.new ], [ %30, %bb12 ]
  %niter40 = phi i64 [ 0, %bb12.preheader31.new ], [ %niter40.next.7, %bb12 ]
  %22 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv21
  %_17 = load float, ptr %22, align 4, !noundef !18
  %23 = fadd float %S1.sroa.0.015, %_17
  %gep58 = getelementptr inbounds float, ptr %invariant.gep57, i64 %indvars.iv21
  %_17.1 = load float, ptr %gep58, align 4, !noundef !18
  %24 = fadd float %23, %_17.1
  %gep60 = getelementptr inbounds float, ptr %invariant.gep59, i64 %indvars.iv21
  %_17.2 = load float, ptr %gep60, align 4, !noundef !18
  %25 = fadd float %24, %_17.2
  %gep62 = getelementptr inbounds float, ptr %invariant.gep61, i64 %indvars.iv21
  %_17.3 = load float, ptr %gep62, align 4, !noundef !18
  %26 = fadd float %25, %_17.3
  %gep64 = getelementptr inbounds float, ptr %invariant.gep63, i64 %indvars.iv21
  %_17.4 = load float, ptr %gep64, align 4, !noundef !18
  %27 = fadd float %26, %_17.4
  %gep66 = getelementptr inbounds float, ptr %invariant.gep65, i64 %indvars.iv21
  %_17.5 = load float, ptr %gep66, align 4, !noundef !18
  %28 = fadd float %27, %_17.5
  %gep68 = getelementptr inbounds float, ptr %invariant.gep67, i64 %indvars.iv21
  %_17.6 = load float, ptr %gep68, align 4, !noundef !18
  %29 = fadd float %28, %_17.6
  %indvars.iv.next22.7 = add nuw nsw i64 %indvars.iv21, 8
  %gep70 = getelementptr inbounds float, ptr %invariant.gep69, i64 %indvars.iv21
  %_17.7 = load float, ptr %gep70, align 4, !noundef !18
  %30 = fadd float %29, %_17.7
  %niter40.next.7 = add i64 %niter40, 8
  %niter40.ncmp.7 = icmp eq i64 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %bb13.loopexit.unr-lcssa, label %bb12

panic:                                            ; preds = %bb12.preheader
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_117f6413013c78a66771675fa13b2731) #18
  unreachable

panic3:                                           ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2cb5dadc0b04dc9bcc03e7e4580cdc48) #18
  unreachable
}
