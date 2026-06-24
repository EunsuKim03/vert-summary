define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_4.not = icmp eq i64 %arr.1, 0
  br i1 %_4.not, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_135 = icmp sgt i32 %n, 0
  br i1 %_135, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %bb1
  %0 = zext nneg i32 %n to i64
  %1 = add nsw i32 %n, -1
  %2 = zext nneg i32 %1 to i64
  %.not.not = icmp samesign ugt i64 %arr.1, %2
  br i1 %.not.not, label %bb8.preheader11, label %panic1

bb8.preheader11:                                  ; preds = %bb8.preheader
  %3 = load float, ptr %arr.0, align 4, !noundef !23
  %xtraiter = and i64 %0, 1
  %4 = icmp eq i32 %n, 1
  br i1 %4, label %bb9.loopexit.unr-lcssa, label %bb8.preheader11.new

bb8.preheader11.new:                              ; preds = %bb8.preheader11
  %unroll_iter = and i64 %0, 2147483646
  br label %bb8

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b7c28014acd9faf9fd5683fe5e083162) #18
  unreachable

bb9.loopexit.unr-lcssa:                           ; preds = %bb8, %bb8.preheader11
  %min_index.sroa.0.1.lcssa.ph = phi i32 [ poison, %bb8.preheader11 ], [ %min_index.sroa.0.1.1, %bb8 ]
  %indvars.iv.unr = phi i64 [ 0, %bb8.preheader11 ], [ %indvars.iv.next.1, %bb8 ]
  %min_index.sroa.0.08.unr = phi i32 [ 0, %bb8.preheader11 ], [ %min_index.sroa.0.1.1, %bb8 ]
  %min.sroa.0.06.unr = phi float [ %3, %bb8.preheader11 ], [ %min.sroa.0.1.1, %bb8 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb9, label %bb8.epil

bb8.epil:                                         ; preds = %bb9.loopexit.unr-lcssa
  %5 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv.unr
  %_9.epil = load float, ptr %5, align 4, !noundef !23
  %_7.epil = fcmp ogt float %min.sroa.0.06.unr, %_9.epil
  %6 = trunc nuw nsw i64 %indvars.iv.unr to i32
  %min_index.sroa.0.1.epil = select i1 %_7.epil, i32 %6, i32 %min_index.sroa.0.08.unr
  br label %bb9

bb9:                                              ; preds = %bb8.epil, %bb9.loopexit.unr-lcssa, %bb1
  %min_index.sroa.0.0.lcssa = phi i32 [ 0, %bb1 ], [ %min_index.sroa.0.1.lcssa.ph, %bb9.loopexit.unr-lcssa ], [ %min_index.sroa.0.1.epil, %bb8.epil ]
  ret i32 %min_index.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8, %bb8.preheader11.new
  %indvars.iv = phi i64 [ 0, %bb8.preheader11.new ], [ %indvars.iv.next.1, %bb8 ]
  %min_index.sroa.0.08 = phi i32 [ 0, %bb8.preheader11.new ], [ %min_index.sroa.0.1.1, %bb8 ]
  %min.sroa.0.06 = phi float [ %3, %bb8.preheader11.new ], [ %min.sroa.0.1.1, %bb8 ]
  %niter = phi i64 [ 0, %bb8.preheader11.new ], [ %niter.next.1, %bb8 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %7 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv
  %_9 = load float, ptr %7, align 4, !noundef !23
  %_7 = fcmp ogt float %min.sroa.0.06, %_9
  %min.sroa.0.1 = select i1 %_7, float %_9, float %min.sroa.0.06
  %8 = trunc nuw nsw i64 %indvars.iv to i32
  %min_index.sroa.0.1 = select i1 %_7, i32 %8, i32 %min_index.sroa.0.08
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %9 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv.next
  %_9.1 = load float, ptr %9, align 4, !noundef !23
  %_7.1 = fcmp ogt float %min.sroa.0.1, %_9.1
  %min.sroa.0.1.1 = select i1 %_7.1, float %_9.1, float %min.sroa.0.1
  %10 = trunc nuw nsw i64 %indvars.iv.next to i32
  %min_index.sroa.0.1.1 = select i1 %_7.1, i32 %10, i32 %min_index.sroa.0.1
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb9.loopexit.unr-lcssa, label %bb8

panic1:                                           ; preds = %bb8.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f77dfb3f2a8be0aee7623674f246f789) #18
  unreachable
}
