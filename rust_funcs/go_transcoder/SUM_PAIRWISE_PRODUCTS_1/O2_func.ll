define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_4 = sitofp i32 %n to float
  %iter1 = add i32 %n, 1
  %_5 = sitofp i32 %iter1 to float
  %_3 = fmul float %_4, %_5
  %0 = fmul float %_3, 5.000000e-01
  %1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_184 = icmp sgt i32 %iter1, 2
  br i1 %_184, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %2 = add nsw i32 %n, -1
  %xtraiter = and i32 %2, 1
  %3 = icmp eq i32 %n, 2
  br i1 %3, label %bb3.loopexit.unr-lcssa, label %bb2.preheader.new

bb2.preheader.new:                                ; preds = %bb2.preheader
  %unroll_iter = and i32 %2, -2
  br label %bb2

bb3.loopexit.unr-lcssa:                           ; preds = %bb2, %bb2.preheader
  %.lcssa.ph = phi i32 [ poison, %bb2.preheader ], [ %11, %bb2 ]
  %sum.sroa.0.07.unr = phi i32 [ %1, %bb2.preheader ], [ %11, %bb2 ]
  %multi_terms.sroa.0.06.unr = phi float [ %0, %bb2.preheader ], [ %10, %bb2 ]
  %iter.sroa.0.05.unr = phi i32 [ 2, %bb2.preheader ], [ %9, %bb2 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb3, label %bb2.epil

bb2.epil:                                         ; preds = %bb3.loopexit.unr-lcssa
  %_12.epil = add nsw i32 %iter.sroa.0.05.unr, -1
  %_11.epil = sitofp i32 %_12.epil to float
  %4 = fsub float %multi_terms.sroa.0.06.unr, %_11.epil
  %_17.epil = uitofp nneg i32 %iter.sroa.0.05.unr to float
  %_15.epil = fmul float %4, %_17.epil
  %_14.epil = tail call i32 @llvm.fptosi.sat.i32.f32(float %_15.epil)
  %5 = add i32 %_14.epil, %sum.sroa.0.07.unr
  br label %bb3

bb3:                                              ; preds = %bb2.epil, %bb3.loopexit.unr-lcssa, %start
  %sum.sroa.0.0.lcssa = phi i32 [ %1, %start ], [ %.lcssa.ph, %bb3.loopexit.unr-lcssa ], [ %5, %bb2.epil ]
  ret i32 %sum.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2, %bb2.preheader.new
  %sum.sroa.0.07 = phi i32 [ %1, %bb2.preheader.new ], [ %11, %bb2 ]
  %multi_terms.sroa.0.06 = phi float [ %0, %bb2.preheader.new ], [ %10, %bb2 ]
  %iter.sroa.0.05 = phi i32 [ 2, %bb2.preheader.new ], [ %9, %bb2 ]
  %niter = phi i32 [ 0, %bb2.preheader.new ], [ %niter.next.1, %bb2 ]
  %6 = or disjoint i32 %iter.sroa.0.05, 1
  %_12 = add nsw i32 %iter.sroa.0.05, -1
  %_11 = sitofp i32 %_12 to float
  %7 = fsub float %multi_terms.sroa.0.06, %_11
  %_17 = uitofp nneg i32 %iter.sroa.0.05 to float
  %_15 = fmul float %7, %_17
  %_14 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_15)
  %8 = add i32 %_14, %sum.sroa.0.07
  %9 = add nuw nsw i32 %iter.sroa.0.05, 2
  %_11.1 = uitofp nneg i32 %iter.sroa.0.05 to float
  %10 = fsub float %7, %_11.1
  %_17.1 = uitofp nneg i32 %6 to float
  %_15.1 = fmul float %10, %_17.1
  %_14.1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_15.1)
  %11 = add i32 %_14.1, %8
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb3.loopexit.unr-lcssa, label %bb2
}
