define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter1 = sext i32 %n to i64
  %_136.not = icmp eq i32 %n, 0
  br i1 %_136.not, label %bb8, label %bb7.preheader

bb7.preheader:                                    ; preds = %start
  %1 = add nsw i64 %iter1, -3
  %.not = icmp ult i64 %1, -2
  br i1 %.not, label %panic, label %bb7.preheader11

bb7.preheader11:                                  ; preds = %bb7.preheader
  %2 = trunc i64 %0 to i32
  %3 = sitofp i32 %2 to float
  %4 = icmp eq i32 %n, 1
  br i1 %4, label %bb8.loopexit.unr-lcssa, label %bb7.preheader11.new

bb7.preheader11.new:                              ; preds = %bb7.preheader11
  %unroll_iter = and i64 %iter1, 2
  br label %bb7

bb8.loopexit.unr-lcssa:                           ; preds = %bb7, %bb7.preheader11
  %min_index.sroa.0.1.lcssa.ph = phi i32 [ poison, %bb7.preheader11 ], [ %min_index.sroa.0.1.1, %bb7 ]
  %iter.sroa.0.09.unr = phi i64 [ 0, %bb7.preheader11 ], [ %11, %bb7 ]
  %min_index.sroa.0.08.unr = phi i32 [ 0, %bb7.preheader11 ], [ %min_index.sroa.0.1.1, %bb7 ]
  %min.sroa.0.07.unr = phi float [ %3, %bb7.preheader11 ], [ %min.sroa.0.1.1, %bb7 ]
  %5 = and i32 %n, 1
  %lcmp.mod.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not, label %bb8, label %bb7.epil

bb7.epil:                                         ; preds = %bb8.loopexit.unr-lcssa
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.09.unr
  %_11.epil = load i32, ptr %6, align 4, !noundef !23
  %_10.epil = sitofp i32 %_11.epil to float
  %_8.epil = fcmp ogt float %min.sroa.0.07.unr, %_10.epil
  %7 = trunc nuw nsw i64 %iter.sroa.0.09.unr to i32
  %min_index.sroa.0.1.epil = select i1 %_8.epil, i32 %7, i32 %min_index.sroa.0.08.unr
  br label %bb8

bb8:                                              ; preds = %bb7.epil, %bb8.loopexit.unr-lcssa, %start
  %min_index.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %min_index.sroa.0.1.lcssa.ph, %bb8.loopexit.unr-lcssa ], [ %min_index.sroa.0.1.epil, %bb7.epil ]
  ret i32 %min_index.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7, %bb7.preheader11.new
  %iter.sroa.0.09 = phi i64 [ 0, %bb7.preheader11.new ], [ %11, %bb7 ]
  %min_index.sroa.0.08 = phi i32 [ 0, %bb7.preheader11.new ], [ %min_index.sroa.0.1.1, %bb7 ]
  %min.sroa.0.07 = phi float [ %3, %bb7.preheader11.new ], [ %min.sroa.0.1.1, %bb7 ]
  %niter = phi i64 [ 0, %bb7.preheader11.new ], [ %niter.next.1, %bb7 ]
  %8 = or disjoint i64 %iter.sroa.0.09, 1
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.09
  %_11 = load i32, ptr %9, align 8, !noundef !23
  %_10 = sitofp i32 %_11 to float
  %_8 = fcmp ogt float %min.sroa.0.07, %_10
  %10 = trunc nuw nsw i64 %iter.sroa.0.09 to i32
  %min.sroa.0.1 = select i1 %_8, float %_10, float %min.sroa.0.07
  %min_index.sroa.0.1 = select i1 %_8, i32 %10, i32 %min_index.sroa.0.08
  %11 = add nuw nsw i64 %iter.sroa.0.09, 2
  %12 = getelementptr inbounds nuw i32, ptr %arr, i64 %8
  %_11.1 = load i32, ptr %12, align 4, !noundef !23
  %_10.1 = sitofp i32 %_11.1 to float
  %_8.1 = fcmp ogt float %min.sroa.0.1, %_10.1
  %13 = trunc nuw nsw i64 %8 to i32
  %min.sroa.0.1.1 = select i1 %_8.1, float %_10.1, float %min.sroa.0.1
  %min_index.sroa.0.1.1 = select i1 %_8.1, i32 %13, i32 %min_index.sroa.0.1
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb8.loopexit.unr-lcssa, label %bb7

panic:                                            ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5d92c5a971cfec81e96183ea68862ccf) #18
  unreachable
}
