define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_103 = icmp sgt i32 %n, 0
  br i1 %_103, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %xtraiter = and i32 %n, 3
  %0 = icmp ult i32 %n, 4
  br i1 %0, label %bb3.loopexit.unr-lcssa, label %bb2.preheader.new

bb2.preheader.new:                                ; preds = %bb2.preheader
  %unroll_iter = and i32 %n, 2147483644
  br label %bb2

bb3.loopexit.unr-lcssa:                           ; preds = %bb2, %bb2.preheader
  %.lcssa.ph = phi float [ poison, %bb2.preheader ], [ %11, %bb2 ]
  %sum.sroa.0.05.unr = phi float [ 0.000000e+00, %bb2.preheader ], [ %11, %bb2 ]
  %iter.sroa.0.04.unr = phi i32 [ 0, %bb2.preheader ], [ %10, %bb2 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb3.loopexit, label %bb2.epil

bb2.epil:                                         ; preds = %bb3.loopexit.unr-lcssa, %bb2.epil
  %sum.sroa.0.05.epil = phi float [ %2, %bb2.epil ], [ %sum.sroa.0.05.unr, %bb3.loopexit.unr-lcssa ]
  %iter.sroa.0.04.epil = phi i32 [ %1, %bb2.epil ], [ %iter.sroa.0.04.unr, %bb3.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb2.epil ], [ 0, %bb3.loopexit.unr-lcssa ]
  %1 = add nuw nsw i32 %iter.sroa.0.04.epil, 1
  %_7.epil = sub nsw i32 %n, %iter.sroa.0.04.epil
  %_6.epil = sitofp i32 %_7.epil to float
  %_8.epil = uitofp nneg i32 %iter.sroa.0.04.epil to float
  %_5.epil = fmul float %_8.epil, %_6.epil
  %2 = fadd float %sum.sroa.0.05.epil, %_5.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb3.loopexit, label %bb2.epil, !llvm.loop !1031

bb3.loopexit:                                     ; preds = %bb2.epil, %bb3.loopexit.unr-lcssa
  %.lcssa = phi float [ %.lcssa.ph, %bb3.loopexit.unr-lcssa ], [ %2, %bb2.epil ]
  %3 = fmul float %.lcssa, 2.000000e+00
  br label %bb3

bb3:                                              ; preds = %bb3.loopexit, %start
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %3, %bb3.loopexit ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %sum.sroa.0.0.lcssa)
  ret i32 %_0

bb2:                                              ; preds = %bb2, %bb2.preheader.new
  %sum.sroa.0.05 = phi float [ 0.000000e+00, %bb2.preheader.new ], [ %11, %bb2 ]
  %iter.sroa.0.04 = phi i32 [ 0, %bb2.preheader.new ], [ %10, %bb2 ]
  %niter = phi i32 [ 0, %bb2.preheader.new ], [ %niter.next.3, %bb2 ]
  %4 = or disjoint i32 %iter.sroa.0.04, 1
  %_7 = sub nsw i32 %n, %iter.sroa.0.04
  %_6 = sitofp i32 %_7 to float
  %_8 = uitofp nneg i32 %iter.sroa.0.04 to float
  %_5 = fmul float %_8, %_6
  %5 = fadd float %sum.sroa.0.05, %_5
  %6 = or disjoint i32 %iter.sroa.0.04, 2
  %_7.1 = sub nsw i32 %n, %4
  %_6.1 = sitofp i32 %_7.1 to float
  %_8.1 = uitofp nneg i32 %4 to float
  %_5.1 = fmul float %_8.1, %_6.1
  %7 = fadd float %5, %_5.1
  %8 = or disjoint i32 %iter.sroa.0.04, 3
  %_7.2 = sub nsw i32 %n, %6
  %_6.2 = sitofp i32 %_7.2 to float
  %_8.2 = uitofp nneg i32 %6 to float
  %_5.2 = fmul float %_8.2, %_6.2
  %9 = fadd float %7, %_5.2
  %10 = add nuw nsw i32 %iter.sroa.0.04, 4
  %_7.3 = sub nsw i32 %n, %8
  %_6.3 = sitofp i32 %_7.3 to float
  %_8.3 = uitofp nneg i32 %8 to float
  %_5.3 = fmul float %_8.3, %_6.3
  %11 = fadd float %9, %_5.3
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb3.loopexit.unr-lcssa, label %bb2
}
