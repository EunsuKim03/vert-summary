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
  %sum.sroa.0.06 = phi i32 [ 0, %bb5.preheader.new ], [ %5, %bb5 ]
  %iter.sroa.0.05 = phi i32 [ 0, %bb5.preheader.new ], [ %spec.select.3, %bb5 ]
  %niter = phi i32 [ 0, %bb5.preheader.new ], [ %niter.next.3, %bb5 ]
  %1 = and i32 %iter.sroa.0.05, 28
  %_9 = shl nuw nsw i32 1, %1
  %2 = add i32 %_9, %sum.sroa.0.06
  %spec.select = and i32 %iter.sroa.0.05, 28
  %_9.1 = shl nuw nsw i32 2, %spec.select
  %3 = add i32 %_9.1, %2
  %spec.select.1 = and i32 %iter.sroa.0.05, 28
  %_9.2 = shl nuw nsw i32 4, %spec.select.1
  %4 = add i32 %_9.2, %3
  %spec.select.3 = add nuw nsw i32 %iter.sroa.0.05, 4
  %spec.select.2 = and i32 %iter.sroa.0.05, 28
  %_9.3 = shl nuw i32 8, %spec.select.2
  %5 = add i32 %_9.3, %4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb6.loopexit.unr-lcssa, label %bb5

bb6.loopexit.unr-lcssa:                           ; preds = %bb5, %bb5.preheader
  %.lcssa.ph = phi i32 [ poison, %bb5.preheader ], [ %5, %bb5 ]
  %sum.sroa.0.06.unr = phi i32 [ 0, %bb5.preheader ], [ %5, %bb5 ]
  %iter.sroa.0.05.unr = phi i32 [ 0, %bb5.preheader ], [ %spec.select.3, %bb5 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb6, label %bb5.epil

bb5.epil:                                         ; preds = %bb6.loopexit.unr-lcssa, %bb5.epil
  %sum.sroa.0.06.epil = phi i32 [ %7, %bb5.epil ], [ %sum.sroa.0.06.unr, %bb6.loopexit.unr-lcssa ]
  %iter.sroa.0.05.epil = phi i32 [ %spec.select.epil, %bb5.epil ], [ %iter.sroa.0.05.unr, %bb6.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb5.epil ], [ 0, %bb6.loopexit.unr-lcssa ]
  %spec.select.epil = add nuw nsw i32 %iter.sroa.0.05.epil, 1
  %6 = and i32 %iter.sroa.0.05.epil, 31
  %_9.epil = shl nuw i32 1, %6
  %7 = add i32 %_9.epil, %sum.sroa.0.06.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb6, label %bb5.epil, !llvm.loop !1630

bb6:                                              ; preds = %bb6.loopexit.unr-lcssa, %bb5.epil, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa.ph, %bb6.loopexit.unr-lcssa ], [ %7, %bb5.epil ]
  ret i32 %sum.sroa.0.0.lcssa
}
