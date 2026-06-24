define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_4 = sitofp i32 %n to float
  %_6 = add i32 %n, 1
  %_5 = sitofp i32 %_6 to float
  %_3 = fmul float %_4, %_5
  %0 = fmul float %_3, 5.000000e-01
  %1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_0.i.i.i4 = icmp sgt i32 %_6, 2
  br i1 %_0.i.i.i4, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %2 = add nsw i32 %n, -1
  %xtraiter = and i32 %2, 1
  %3 = icmp eq i32 %n, 2
  br i1 %3, label %bb6.loopexit.unr-lcssa, label %bb5.preheader.new

bb5.preheader.new:                                ; preds = %bb5.preheader
  %unroll_iter = and i32 %2, -2
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.preheader.new
  %sum.sroa.0.07 = phi i32 [ %1, %bb5.preheader.new ], [ %7, %bb5 ]
  %multi_terms.sroa.0.06 = phi float [ %0, %bb5.preheader.new ], [ %6, %bb5 ]
  %iter.sroa.0.05 = phi i32 [ 2, %bb5.preheader.new ], [ %spec.select.1, %bb5 ]
  %niter = phi i32 [ 0, %bb5.preheader.new ], [ %niter.next.1, %bb5 ]
  %spec.select = or disjoint i32 %iter.sroa.0.05, 1
  %_17 = add nsw i32 %iter.sroa.0.05, -1
  %_16 = sitofp i32 %_17 to float
  %4 = fsub float %multi_terms.sroa.0.06, %_16
  %_22 = uitofp nneg i32 %iter.sroa.0.05 to float
  %_20 = fmul float %4, %_22
  %_19 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_20)
  %5 = add i32 %_19, %sum.sroa.0.07
  %spec.select.1 = add nuw nsw i32 %iter.sroa.0.05, 2
  %_16.1 = uitofp nneg i32 %iter.sroa.0.05 to float
  %6 = fsub float %4, %_16.1
  %_22.1 = uitofp nneg i32 %spec.select to float
  %_20.1 = fmul float %6, %_22.1
  %_19.1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_20.1)
  %7 = add i32 %_19.1, %5
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb6.loopexit.unr-lcssa, label %bb5

bb6.loopexit.unr-lcssa:                           ; preds = %bb5, %bb5.preheader
  %.lcssa.ph = phi i32 [ poison, %bb5.preheader ], [ %7, %bb5 ]
  %sum.sroa.0.07.unr = phi i32 [ %1, %bb5.preheader ], [ %7, %bb5 ]
  %multi_terms.sroa.0.06.unr = phi float [ %0, %bb5.preheader ], [ %6, %bb5 ]
  %iter.sroa.0.05.unr = phi i32 [ 2, %bb5.preheader ], [ %spec.select.1, %bb5 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb6, label %bb5.epil

bb5.epil:                                         ; preds = %bb6.loopexit.unr-lcssa
  %_17.epil = add nsw i32 %iter.sroa.0.05.unr, -1
  %_16.epil = sitofp i32 %_17.epil to float
  %8 = fsub float %multi_terms.sroa.0.06.unr, %_16.epil
  %_22.epil = uitofp nneg i32 %iter.sroa.0.05.unr to float
  %_20.epil = fmul float %8, %_22.epil
  %_19.epil = tail call i32 @llvm.fptosi.sat.i32.f32(float %_20.epil)
  %9 = add i32 %_19.epil, %sum.sroa.0.07.unr
  br label %bb6

bb6:                                              ; preds = %bb5.epil, %bb6.loopexit.unr-lcssa, %start
  %sum.sroa.0.0.lcssa = phi i32 [ %1, %start ], [ %.lcssa.ph, %bb6.loopexit.unr-lcssa ], [ %9, %bb5.epil ]
  ret i32 %sum.sroa.0.0.lcssa
}
