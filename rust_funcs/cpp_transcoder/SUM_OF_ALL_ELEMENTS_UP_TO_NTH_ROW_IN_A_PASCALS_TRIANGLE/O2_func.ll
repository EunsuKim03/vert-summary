define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_53 = icmp sgt i32 %n, 0
  br i1 %_53, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %xtraiter = and i32 %n, 3
  %0 = icmp ult i32 %n, 4
  br i1 %0, label %bb3.loopexit.unr-lcssa, label %bb2.preheader.new

bb2.preheader.new:                                ; preds = %bb2.preheader
  %unroll_iter = and i32 %n, 2147483644
  br label %bb2

bb3.loopexit.unr-lcssa:                           ; preds = %bb2, %bb2.preheader
  %.lcssa.ph = phi i32 [ poison, %bb2.preheader ], [ %12, %bb2 ]
  %sum.sroa.0.05.unr = phi i32 [ 0, %bb2.preheader ], [ %12, %bb2 ]
  %iter.sroa.0.04.unr = phi i32 [ 0, %bb2.preheader ], [ %10, %bb2 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb3, label %bb2.epil

bb2.epil:                                         ; preds = %bb3.loopexit.unr-lcssa, %bb2.epil
  %sum.sroa.0.05.epil = phi i32 [ %3, %bb2.epil ], [ %sum.sroa.0.05.unr, %bb3.loopexit.unr-lcssa ]
  %iter.sroa.0.04.epil = phi i32 [ %1, %bb2.epil ], [ %iter.sroa.0.04.unr, %bb3.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb2.epil ], [ 0, %bb3.loopexit.unr-lcssa ]
  %1 = add nuw nsw i32 %iter.sroa.0.04.epil, 1
  %2 = and i32 %iter.sroa.0.04.epil, 31
  %_4.epil = shl nuw i32 1, %2
  %3 = add i32 %_4.epil, %sum.sroa.0.05.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb3, label %bb2.epil, !llvm.loop !1031

bb3:                                              ; preds = %bb3.loopexit.unr-lcssa, %bb2.epil, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa.ph, %bb3.loopexit.unr-lcssa ], [ %3, %bb2.epil ]
  ret i32 %sum.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2, %bb2.preheader.new
  %sum.sroa.0.05 = phi i32 [ 0, %bb2.preheader.new ], [ %12, %bb2 ]
  %iter.sroa.0.04 = phi i32 [ 0, %bb2.preheader.new ], [ %10, %bb2 ]
  %niter = phi i32 [ 0, %bb2.preheader.new ], [ %niter.next.3, %bb2 ]
  %4 = and i32 %iter.sroa.0.04, 28
  %_4 = shl nuw nsw i32 1, %4
  %5 = add i32 %_4, %sum.sroa.0.05
  %6 = and i32 %iter.sroa.0.04, 28
  %_4.1 = shl nuw nsw i32 2, %6
  %7 = add i32 %_4.1, %5
  %8 = and i32 %iter.sroa.0.04, 28
  %_4.2 = shl nuw nsw i32 4, %8
  %9 = add i32 %_4.2, %7
  %10 = add nuw nsw i32 %iter.sroa.0.04, 4
  %11 = and i32 %iter.sroa.0.04, 28
  %_4.3 = shl nuw i32 8, %11
  %12 = add i32 %_4.3, %9
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb3.loopexit.unr-lcssa, label %bb2
}
