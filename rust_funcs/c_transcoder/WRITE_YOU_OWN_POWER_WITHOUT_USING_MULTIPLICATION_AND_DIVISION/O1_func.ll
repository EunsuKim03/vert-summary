define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #12 {
start:
  %_3 = icmp eq i32 %b, 0
  br i1 %_3, label %bb14, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %_0.i.i.i19 = icmp sgt i32 %b, 1
  br i1 %_0.i.i.i19, label %bb10.preheader.preheader, label %bb14

bb10.preheader.preheader:                         ; preds = %bb4.preheader
  %0 = add nsw i32 %b, -1
  %1 = add nsw i32 %b, -2
  %xtraiter = and i32 %0, 3
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %bb14.loopexit.unr-lcssa, label %bb10.preheader.preheader.new

bb10.preheader.preheader.new:                     ; preds = %bb10.preheader.preheader
  %unroll_iter = and i32 %0, -4
  %3 = tail call i32 @llvm.smax.i32(i32 %a, i32 1)
  %4 = tail call i32 @llvm.smax.i32(i32 %a, i32 1)
  %factor.op.mul = mul i32 %3, %4
  %5 = tail call i32 @llvm.smax.i32(i32 %a, i32 1)
  %factor.op.mul25 = mul i32 %factor.op.mul, %5
  %6 = tail call i32 @llvm.smax.i32(i32 %a, i32 1)
  %factor.op.mul26 = mul i32 %factor.op.mul25, %6
  br label %bb10.preheader

bb10.preheader:                                   ; preds = %bb10.preheader, %bb10.preheader.preheader.new
  %spec.select22 = phi i32 [ 2, %bb10.preheader.preheader.new ], [ %spec.select.3, %bb10.preheader ]
  %answer.sroa.0.021 = phi i32 [ %a, %bb10.preheader.preheader.new ], [ %answer.sroa.0.2.lcssa.reass.reass.reass, %bb10.preheader ]
  %niter = phi i32 [ 0, %bb10.preheader.preheader.new ], [ %niter.next.3, %bb10.preheader ]
  %answer.sroa.0.2.lcssa.reass.reass.reass = mul i32 %answer.sroa.0.021, %factor.op.mul26
  %_0.i.i.i = icmp slt i32 %spec.select22, %b
  %7 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select22, %7
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %b
  %8 = zext i1 %_0.i.i.i.1 to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %8
  %_0.i.i.i.2 = icmp slt i32 %spec.select.1, %b
  %9 = zext i1 %_0.i.i.i.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %9
  %_0.i.i.i.3 = icmp slt i32 %spec.select.2, %b
  %10 = zext i1 %_0.i.i.i.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %10
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %bb14.loopexit.unr-lcssa, label %bb10.preheader

bb14.loopexit.unr-lcssa:                          ; preds = %bb10.preheader, %bb10.preheader.preheader
  %answer.sroa.0.2.lcssa.lcssa.ph = phi i32 [ poison, %bb10.preheader.preheader ], [ %answer.sroa.0.2.lcssa.reass.reass.reass, %bb10.preheader ]
  %spec.select22.unr = phi i32 [ 2, %bb10.preheader.preheader ], [ %spec.select.3, %bb10.preheader ]
  %answer.sroa.0.021.unr = phi i32 [ %a, %bb10.preheader.preheader ], [ %answer.sroa.0.2.lcssa.reass.reass.reass, %bb10.preheader ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14, label %bb10.preheader.epil.preheader

bb10.preheader.epil.preheader:                    ; preds = %bb14.loopexit.unr-lcssa
  %11 = tail call i32 @llvm.smax.i32(i32 %a, i32 1)
  br label %bb10.preheader.epil

bb10.preheader.epil:                              ; preds = %bb10.preheader.epil, %bb10.preheader.epil.preheader
  %spec.select22.epil = phi i32 [ %spec.select.epil, %bb10.preheader.epil ], [ %spec.select22.unr, %bb10.preheader.epil.preheader ]
  %answer.sroa.0.021.epil = phi i32 [ %answer.sroa.0.2.lcssa.epil, %bb10.preheader.epil ], [ %answer.sroa.0.021.unr, %bb10.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb10.preheader.epil ], [ 0, %bb10.preheader.epil.preheader ]
  %answer.sroa.0.2.lcssa.epil = mul i32 %answer.sroa.0.021.epil, %11
  %_0.i.i.i.epil = icmp slt i32 %spec.select22.epil, %b
  %12 = zext i1 %_0.i.i.i.epil to i32
  %spec.select.epil = add nuw nsw i32 %spec.select22.epil, %12
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14, label %bb10.preheader.epil, !llvm.loop !1630

bb14:                                             ; preds = %bb14.loopexit.unr-lcssa, %bb10.preheader.epil, %bb4.preheader, %start
  %answer.sroa.0.1 = phi i32 [ 1, %start ], [ %a, %bb4.preheader ], [ %answer.sroa.0.2.lcssa.lcssa.ph, %bb14.loopexit.unr-lcssa ], [ %answer.sroa.0.2.lcssa.epil, %bb10.preheader.epil ]
  ret i32 %answer.sroa.0.1
}
