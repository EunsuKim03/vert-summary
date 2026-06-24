define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_6 = add i32 %n, 1
  %_0.i.i.i4 = icmp sgt i32 %_6, 1
  br i1 %_0.i.i.i4, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %xtraiter = and i32 %n, 1
  %0 = icmp eq i32 %n, 1
  br i1 %0, label %bb6.loopexit.unr-lcssa, label %bb5.preheader.new

bb5.preheader.new:                                ; preds = %bb5.preheader
  %unroll_iter = and i32 %n, 2147483646
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.preheader.new
  %n_cr.sroa.0.07 = phi float [ 1.000000e+00, %bb5.preheader.new ], [ %4, %bb5 ]
  %res.sroa.0.06 = phi float [ 1.000000e+00, %bb5.preheader.new ], [ %6, %bb5 ]
  %iter.sroa.0.05 = phi i32 [ 1, %bb5.preheader.new ], [ %spec.select.1, %bb5 ]
  %niter = phi i32 [ 0, %bb5.preheader.new ], [ %niter.next.1, %bb5 ]
  %spec.select = add nuw nsw i32 %iter.sroa.0.05, 1
  %_14 = sub nsw i32 %_6, %iter.sroa.0.05
  %_13 = sitofp i32 %_14 to float
  %_12 = fmul float %n_cr.sroa.0.07, %_13
  %_15 = uitofp nneg i32 %iter.sroa.0.05 to float
  %1 = fdiv float %_12, %_15
  %2 = fmul float %1, %1
  %3 = fadd float %res.sroa.0.06, %2
  %spec.select.1 = add nuw nsw i32 %iter.sroa.0.05, 2
  %_14.1 = sub nsw i32 %n, %iter.sroa.0.05
  %_13.1 = sitofp i32 %_14.1 to float
  %_12.1 = fmul float %1, %_13.1
  %_15.1 = uitofp nneg i32 %spec.select to float
  %4 = fdiv float %_12.1, %_15.1
  %5 = fmul float %4, %4
  %6 = fadd float %3, %5
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb6.loopexit.unr-lcssa, label %bb5

bb6.loopexit.unr-lcssa:                           ; preds = %bb5, %bb5.preheader
  %.lcssa.ph = phi float [ poison, %bb5.preheader ], [ %6, %bb5 ]
  %n_cr.sroa.0.07.unr = phi float [ 1.000000e+00, %bb5.preheader ], [ %4, %bb5 ]
  %res.sroa.0.06.unr = phi float [ 1.000000e+00, %bb5.preheader ], [ %6, %bb5 ]
  %iter.sroa.0.05.unr = phi i32 [ 1, %bb5.preheader ], [ %spec.select.1, %bb5 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb6, label %bb5.epil

bb5.epil:                                         ; preds = %bb6.loopexit.unr-lcssa
  %_14.epil = sub nsw i32 %_6, %iter.sroa.0.05.unr
  %_13.epil = sitofp i32 %_14.epil to float
  %_12.epil = fmul float %n_cr.sroa.0.07.unr, %_13.epil
  %_15.epil = uitofp nneg i32 %iter.sroa.0.05.unr to float
  %7 = fdiv float %_12.epil, %_15.epil
  %8 = fmul float %7, %7
  %9 = fadd float %res.sroa.0.06.unr, %8
  br label %bb6

bb6:                                              ; preds = %bb5.epil, %bb6.loopexit.unr-lcssa, %start
  %res.sroa.0.0.lcssa = phi float [ 1.000000e+00, %start ], [ %.lcssa.ph, %bb6.loopexit.unr-lcssa ], [ %9, %bb5.epil ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %res.sroa.0.0.lcssa)
  ret i32 %_0
}
