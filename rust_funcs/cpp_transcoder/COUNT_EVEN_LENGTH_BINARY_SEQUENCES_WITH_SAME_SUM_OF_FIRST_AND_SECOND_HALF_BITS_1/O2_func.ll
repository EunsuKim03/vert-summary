define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %iter1 = add i32 %n, 1
  %_134 = icmp sgt i32 %iter1, 1
  br i1 %_134, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %xtraiter = and i32 %n, 1
  %0 = icmp eq i32 %n, 1
  br i1 %0, label %bb3.loopexit.unr-lcssa, label %bb2.preheader.new

bb2.preheader.new:                                ; preds = %bb2.preheader
  %unroll_iter = and i32 %n, 2147483646
  br label %bb2

bb3.loopexit.unr-lcssa:                           ; preds = %bb2, %bb2.preheader
  %.lcssa.ph = phi float [ poison, %bb2.preheader ], [ %11, %bb2 ]
  %n_cr.sroa.0.07.unr = phi float [ 1.000000e+00, %bb2.preheader ], [ %9, %bb2 ]
  %res.sroa.0.06.unr = phi float [ 1.000000e+00, %bb2.preheader ], [ %11, %bb2 ]
  %iter.sroa.0.05.unr = phi i32 [ 1, %bb2.preheader ], [ %8, %bb2 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb3, label %bb2.epil

bb2.epil:                                         ; preds = %bb3.loopexit.unr-lcssa
  %_9.epil = sub nsw i32 %iter1, %iter.sroa.0.05.unr
  %_8.epil = sitofp i32 %_9.epil to float
  %_7.epil = fmul float %n_cr.sroa.0.07.unr, %_8.epil
  %_10.epil = uitofp nneg i32 %iter.sroa.0.05.unr to float
  %1 = fdiv float %_7.epil, %_10.epil
  %2 = fmul float %1, %1
  %3 = fadd float %res.sroa.0.06.unr, %2
  br label %bb3

bb3:                                              ; preds = %bb2.epil, %bb3.loopexit.unr-lcssa, %start
  %res.sroa.0.0.lcssa = phi float [ 1.000000e+00, %start ], [ %.lcssa.ph, %bb3.loopexit.unr-lcssa ], [ %3, %bb2.epil ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %res.sroa.0.0.lcssa)
  ret i32 %_0

bb2:                                              ; preds = %bb2, %bb2.preheader.new
  %n_cr.sroa.0.07 = phi float [ 1.000000e+00, %bb2.preheader.new ], [ %9, %bb2 ]
  %res.sroa.0.06 = phi float [ 1.000000e+00, %bb2.preheader.new ], [ %11, %bb2 ]
  %iter.sroa.0.05 = phi i32 [ 1, %bb2.preheader.new ], [ %8, %bb2 ]
  %niter = phi i32 [ 0, %bb2.preheader.new ], [ %niter.next.1, %bb2 ]
  %4 = add nuw nsw i32 %iter.sroa.0.05, 1
  %_9 = sub nsw i32 %iter1, %iter.sroa.0.05
  %_8 = sitofp i32 %_9 to float
  %_7 = fmul float %n_cr.sroa.0.07, %_8
  %_10 = uitofp nneg i32 %iter.sroa.0.05 to float
  %5 = fdiv float %_7, %_10
  %6 = fmul float %5, %5
  %7 = fadd float %res.sroa.0.06, %6
  %8 = add nuw nsw i32 %iter.sroa.0.05, 2
  %_9.1 = sub nsw i32 %n, %iter.sroa.0.05
  %_8.1 = sitofp i32 %_9.1 to float
  %_7.1 = fmul float %5, %_8.1
  %_10.1 = uitofp nneg i32 %4 to float
  %9 = fdiv float %_7.1, %_10.1
  %10 = fmul float %9, %9
  %11 = fadd float %7, %10
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb3.loopexit.unr-lcssa, label %bb2
}
