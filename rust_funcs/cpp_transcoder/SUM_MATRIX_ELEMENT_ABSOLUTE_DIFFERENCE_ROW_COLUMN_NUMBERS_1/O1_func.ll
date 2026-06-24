define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.i.i4 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i4, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %xtraiter = and i32 %n, 3
  %0 = icmp ult i32 %n, 4
  br i1 %0, label %bb6.loopexit.unr-lcssa, label %bb5.preheader.new

bb5.preheader.new:                                ; preds = %bb5.preheader
  %unroll_iter = and i32 %n, 2147483644
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.preheader.new
  %sum.sroa.0.06 = phi float [ 0.000000e+00, %bb5.preheader.new ], [ %4, %bb5 ]
  %iter.sroa.0.05 = phi i32 [ 0, %bb5.preheader.new ], [ %spec.select.3, %bb5 ]
  %niter = phi i32 [ 0, %bb5.preheader.new ], [ %niter.next.3, %bb5 ]
  %spec.select = or disjoint i32 %iter.sroa.0.05, 1
  %_12 = sub nsw i32 %n, %iter.sroa.0.05
  %_11 = sitofp i32 %_12 to float
  %_13 = uitofp nneg i32 %iter.sroa.0.05 to float
  %_10 = fmul float %_13, %_11
  %1 = fadd float %sum.sroa.0.06, %_10
  %spec.select.1 = or disjoint i32 %iter.sroa.0.05, 2
  %_12.1 = sub nsw i32 %n, %spec.select
  %_11.1 = sitofp i32 %_12.1 to float
  %_13.1 = uitofp nneg i32 %spec.select to float
  %_10.1 = fmul float %_13.1, %_11.1
  %2 = fadd float %1, %_10.1
  %spec.select.2 = or disjoint i32 %iter.sroa.0.05, 3
  %_12.2 = sub nsw i32 %n, %spec.select.1
  %_11.2 = sitofp i32 %_12.2 to float
  %_13.2 = uitofp nneg i32 %spec.select.1 to float
  %_10.2 = fmul float %_13.2, %_11.2
  %3 = fadd float %2, %_10.2
  %spec.select.3 = add nuw nsw i32 %iter.sroa.0.05, 4
  %_12.3 = sub nsw i32 %n, %spec.select.2
  %_11.3 = sitofp i32 %_12.3 to float
  %_13.3 = uitofp nneg i32 %spec.select.2 to float
  %_10.3 = fmul float %_13.3, %_11.3
  %4 = fadd float %3, %_10.3
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb6.loopexit.unr-lcssa, label %bb5

bb6.loopexit.unr-lcssa:                           ; preds = %bb5, %bb5.preheader
  %.lcssa.ph = phi float [ poison, %bb5.preheader ], [ %4, %bb5 ]
  %sum.sroa.0.06.unr = phi float [ 0.000000e+00, %bb5.preheader ], [ %4, %bb5 ]
  %iter.sroa.0.05.unr = phi i32 [ 0, %bb5.preheader ], [ %spec.select.3, %bb5 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb6.loopexit, label %bb5.epil

bb5.epil:                                         ; preds = %bb6.loopexit.unr-lcssa, %bb5.epil
  %sum.sroa.0.06.epil = phi float [ %5, %bb5.epil ], [ %sum.sroa.0.06.unr, %bb6.loopexit.unr-lcssa ]
  %iter.sroa.0.05.epil = phi i32 [ %spec.select.epil, %bb5.epil ], [ %iter.sroa.0.05.unr, %bb6.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb5.epil ], [ 0, %bb6.loopexit.unr-lcssa ]
  %spec.select.epil = add nuw nsw i32 %iter.sroa.0.05.epil, 1
  %_12.epil = sub nsw i32 %n, %iter.sroa.0.05.epil
  %_11.epil = sitofp i32 %_12.epil to float
  %_13.epil = uitofp nneg i32 %iter.sroa.0.05.epil to float
  %_10.epil = fmul float %_13.epil, %_11.epil
  %5 = fadd float %sum.sroa.0.06.epil, %_10.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb6.loopexit, label %bb5.epil, !llvm.loop !1630

bb6.loopexit:                                     ; preds = %bb5.epil, %bb6.loopexit.unr-lcssa
  %.lcssa = phi float [ %.lcssa.ph, %bb6.loopexit.unr-lcssa ], [ %5, %bb5.epil ]
  %6 = fmul float %.lcssa, 2.000000e+00
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %6, %bb6.loopexit ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %sum.sroa.0.0.lcssa)
  ret i32 %_0
}
