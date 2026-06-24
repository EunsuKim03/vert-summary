define noundef i32 @f_gold(i32 noundef %r) unnamed_addr #12 {
start:
  %_2 = icmp slt i32 %r, 1
  br i1 %_2, label %bb13, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %_0.i.i.i5.not = icmp eq i32 %r, 1
  br i1 %_0.i.i.i5.not, label %bb13, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb4.preheader
  %_12 = uitofp nneg i32 %r to float
  %_11 = fmul float %_12, %_12
  %0 = add nsw i32 %r, -1
  %xtraiter = and i32 %0, 1
  %1 = icmp eq i32 %r, 2
  br i1 %1, label %bb13.loopexit.unr-lcssa, label %bb7.lr.ph.new

bb7.lr.ph.new:                                    ; preds = %bb7.lr.ph
  %unroll_iter = and i32 %0, -2
  br label %bb7

bb7:                                              ; preds = %bb7, %bb7.lr.ph.new
  %result.sroa.0.07 = phi i32 [ 4, %bb7.lr.ph.new ], [ %spec.select.1, %bb7 ]
  %iter.sroa.0.06 = phi i32 [ 1, %bb7.lr.ph.new ], [ %spec.select3.1, %bb7 ]
  %niter = phi i32 [ 0, %bb7.lr.ph.new ], [ %niter.next.1, %bb7 ]
  %spec.select3 = add nuw nsw i32 %iter.sroa.0.06, 1
  %_14 = uitofp nneg i32 %iter.sroa.0.06 to float
  %_13 = fmul float %_14, %_14
  %y_square = fsub float %_11, %_13
  %2 = tail call noundef float @llvm.sqrt.f32(float %y_square)
  %_18 = tail call i32 @llvm.fptosi.sat.i32.f32(float %2)
  %_17 = mul i32 %_18, %_18
  %_19 = tail call i32 @llvm.fptosi.sat.i32.f32(float %y_square)
  %_16 = icmp eq i32 %_17, %_19
  %3 = add i32 %result.sroa.0.07, 4
  %spec.select = select i1 %_16, i32 %3, i32 %result.sroa.0.07
  %spec.select3.1 = add nuw nsw i32 %iter.sroa.0.06, 2
  %_14.1 = uitofp nneg i32 %spec.select3 to float
  %_13.1 = fmul float %_14.1, %_14.1
  %y_square.1 = fsub float %_11, %_13.1
  %4 = tail call noundef float @llvm.sqrt.f32(float %y_square.1)
  %_18.1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %4)
  %_17.1 = mul i32 %_18.1, %_18.1
  %_19.1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %y_square.1)
  %_16.1 = icmp eq i32 %_17.1, %_19.1
  %5 = add i32 %spec.select, 4
  %spec.select.1 = select i1 %_16.1, i32 %5, i32 %spec.select
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb13.loopexit.unr-lcssa.loopexit, label %bb7

bb13.loopexit.unr-lcssa.loopexit:                 ; preds = %bb7
  %6 = uitofp nneg i32 %spec.select3.1 to float
  br label %bb13.loopexit.unr-lcssa

bb13.loopexit.unr-lcssa:                          ; preds = %bb13.loopexit.unr-lcssa.loopexit, %bb7.lr.ph
  %spec.select.lcssa.ph = phi i32 [ poison, %bb7.lr.ph ], [ %spec.select.1, %bb13.loopexit.unr-lcssa.loopexit ]
  %result.sroa.0.07.unr = phi i32 [ 4, %bb7.lr.ph ], [ %spec.select.1, %bb13.loopexit.unr-lcssa.loopexit ]
  %iter.sroa.0.06.unr = phi float [ 1.000000e+00, %bb7.lr.ph ], [ %6, %bb13.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb13, label %bb7.epil

bb7.epil:                                         ; preds = %bb13.loopexit.unr-lcssa
  %_13.epil = fmul float %iter.sroa.0.06.unr, %iter.sroa.0.06.unr
  %y_square.epil = fsub float %_11, %_13.epil
  %7 = tail call noundef float @llvm.sqrt.f32(float %y_square.epil)
  %_18.epil = tail call i32 @llvm.fptosi.sat.i32.f32(float %7)
  %_17.epil = mul i32 %_18.epil, %_18.epil
  %_19.epil = tail call i32 @llvm.fptosi.sat.i32.f32(float %y_square.epil)
  %_16.epil = icmp eq i32 %_17.epil, %_19.epil
  %8 = add i32 %result.sroa.0.07.unr, 4
  %spec.select.epil = select i1 %_16.epil, i32 %8, i32 %result.sroa.0.07.unr
  br label %bb13

bb13:                                             ; preds = %bb7.epil, %bb13.loopexit.unr-lcssa, %bb4.preheader, %start
  %result.sroa.0.1 = phi i32 [ 0, %start ], [ 4, %bb4.preheader ], [ %spec.select.lcssa.ph, %bb13.loopexit.unr-lcssa ], [ %spec.select.epil, %bb7.epil ]
  ret i32 %result.sroa.0.1
}
