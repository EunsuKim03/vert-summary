define noundef range(i32 -2147483648, 2147483647) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_1910 = icmp sgt i32 %n, 0
  br i1 %_1910, label %bb9.preheader, label %bb8

bb9.preheader:                                    ; preds = %start
  %0 = zext nneg i32 %n to i64
  %1 = add nsw i32 %n, -1
  %2 = zext nneg i32 %1 to i64
  %.not.not = icmp samesign ugt i64 %arr.1, %2
  br i1 %.not.not, label %bb9.preheader36, label %panic4

bb9.preheader36:                                  ; preds = %bb9.preheader
  %xtraiter = and i64 %0, 7
  %3 = icmp ult i32 %n, 8
  br i1 %3, label %bb14.preheader.unr-lcssa, label %bb9.preheader36.new

bb9.preheader36.new:                              ; preds = %bb9.preheader36
  %unroll_iter = and i64 %0, 2147483640
  %invariant.gep = getelementptr inbounds i8, ptr %arr.0, i64 4
  %invariant.gep42 = getelementptr inbounds i8, ptr %arr.0, i64 8
  %invariant.gep44 = getelementptr inbounds i8, ptr %arr.0, i64 12
  %invariant.gep46 = getelementptr inbounds i8, ptr %arr.0, i64 16
  %invariant.gep48 = getelementptr inbounds i8, ptr %arr.0, i64 20
  %invariant.gep50 = getelementptr inbounds i8, ptr %arr.0, i64 24
  %invariant.gep52 = getelementptr inbounds i8, ptr %arr.0, i64 28
  br label %bb9

bb14.preheader.unr-lcssa:                         ; preds = %bb9, %bb9.preheader36
  %.lcssa.ph = phi float [ poison, %bb9.preheader36 ], [ %14, %bb9 ]
  %indvars.iv.unr = phi i64 [ 0, %bb9.preheader36 ], [ %indvars.iv.next.7, %bb9 ]
  %sum.sroa.0.012.unr = phi float [ 0.000000e+00, %bb9.preheader36 ], [ %14, %bb9 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.preheader, label %bb9.epil

bb9.epil:                                         ; preds = %bb14.preheader.unr-lcssa, %bb9.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb9.epil ], [ %indvars.iv.unr, %bb14.preheader.unr-lcssa ]
  %sum.sroa.0.012.epil = phi float [ %5, %bb9.epil ], [ %sum.sroa.0.012.unr, %bb14.preheader.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb9.epil ], [ 0, %bb14.preheader.unr-lcssa ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv.epil
  %_7.epil = load float, ptr %4, align 4, !noundef !23
  %5 = fadd float %sum.sroa.0.012.epil, %_7.epil
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.preheader, label %bb9.epil, !llvm.loop !1031

bb14.preheader:                                   ; preds = %bb9.epil, %bb14.preheader.unr-lcssa
  %.lcssa = phi float [ %.lcssa.ph, %bb14.preheader.unr-lcssa ], [ %5, %bb9.epil ]
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb14

bb9:                                              ; preds = %bb9, %bb9.preheader36.new
  %indvars.iv = phi i64 [ 0, %bb9.preheader36.new ], [ %indvars.iv.next.7, %bb9 ]
  %sum.sroa.0.012 = phi float [ 0.000000e+00, %bb9.preheader36.new ], [ %14, %bb9 ]
  %niter = phi i64 [ 0, %bb9.preheader36.new ], [ %niter.next.7, %bb9 ]
  %6 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv
  %_7 = load float, ptr %6, align 4, !noundef !23
  %7 = fadd float %sum.sroa.0.012, %_7
  %gep = getelementptr inbounds float, ptr %invariant.gep, i64 %indvars.iv
  %_7.1 = load float, ptr %gep, align 4, !noundef !23
  %8 = fadd float %7, %_7.1
  %gep43 = getelementptr inbounds float, ptr %invariant.gep42, i64 %indvars.iv
  %_7.2 = load float, ptr %gep43, align 4, !noundef !23
  %9 = fadd float %8, %_7.2
  %gep45 = getelementptr inbounds float, ptr %invariant.gep44, i64 %indvars.iv
  %_7.3 = load float, ptr %gep45, align 4, !noundef !23
  %10 = fadd float %9, %_7.3
  %gep47 = getelementptr inbounds float, ptr %invariant.gep46, i64 %indvars.iv
  %_7.4 = load float, ptr %gep47, align 4, !noundef !23
  %11 = fadd float %10, %_7.4
  %gep49 = getelementptr inbounds float, ptr %invariant.gep48, i64 %indvars.iv
  %_7.5 = load float, ptr %gep49, align 4, !noundef !23
  %12 = fadd float %11, %_7.5
  %gep51 = getelementptr inbounds float, ptr %invariant.gep50, i64 %indvars.iv
  %_7.6 = load float, ptr %gep51, align 4, !noundef !23
  %13 = fadd float %12, %_7.6
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %gep53 = getelementptr inbounds float, ptr %invariant.gep52, i64 %indvars.iv
  %_7.7 = load float, ptr %gep53, align 4, !noundef !23
  %14 = fadd float %13, %_7.7
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.preheader.unr-lcssa, label %bb9

bb14:                                             ; preds = %bb14.preheader, %bb7
  %indvars.iv22 = phi i64 [ 0, %bb14.preheader ], [ %indvars.iv.next23, %bb7 ]
  %sum.sroa.0.116 = phi float [ %.lcssa, %bb14.preheader ], [ %17, %bb7 ]
  %leftsum.sroa.0.015 = phi float [ 0.000000e+00, %bb14.preheader ], [ %18, %bb7 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25.not = icmp eq i64 %indvars.iv22, %arr.1
  br i1 %exitcond25.not, label %panic, label %bb4

bb8.loopexit.split.loop.exit:                     ; preds = %bb4
  %15 = trunc nuw nsw i64 %indvars.iv22 to i32
  br label %bb8

bb8:                                              ; preds = %bb7, %bb8.loopexit.split.loop.exit, %start
  %i.sroa.0.0 = phi i32 [ -1, %start ], [ %15, %bb8.loopexit.split.loop.exit ], [ -1, %bb7 ]
  ret i32 %i.sroa.0.0

bb4:                                              ; preds = %bb14
  %16 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv22
  %_12 = load float, ptr %16, align 4, !noundef !23
  %17 = fsub float %sum.sroa.0.116, %_12
  %_16 = fcmp oeq float %leftsum.sroa.0.015, %17
  br i1 %_16, label %bb8.loopexit.split.loop.exit, label %bb7

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3c734b5d95c93ae0defc1b06948b1e70) #18
  unreachable

bb7:                                              ; preds = %bb4
  %18 = fadd float %leftsum.sroa.0.015, %_12
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond26.not, label %bb8, label %bb14

panic4:                                           ; preds = %bb9.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fd4d4e0bc8dd673b80483533c39502d8) #18
  unreachable
}
