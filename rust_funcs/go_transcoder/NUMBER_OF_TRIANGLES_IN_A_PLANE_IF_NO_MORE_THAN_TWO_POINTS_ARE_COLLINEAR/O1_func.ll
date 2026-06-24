define noundef range(i32 -357913941, 357913942) i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.i.i4 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i4, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %0 = add nsw i32 %n, -2
  %1 = add nsw i32 %n, -3
  %xtraiter = and i32 %0, 7
  %2 = icmp ult i32 %1, 7
  br i1 %2, label %bb6.loopexit.unr-lcssa, label %bb5.preheader.new

bb5.preheader.new:                                ; preds = %bb5.preheader
  %unroll_iter = and i32 %0, -8
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.preheader.new
  %prod.sroa.0.06 = phi i32 [ 1, %bb5.preheader.new ], [ %10, %bb5 ]
  %iter.sroa.0.05 = phi i32 [ 2, %bb5.preheader.new ], [ %spec.select.7, %bb5 ]
  %niter = phi i32 [ 0, %bb5.preheader.new ], [ %niter.next.7, %bb5 ]
  %spec.select = or disjoint i32 %iter.sroa.0.05, 1
  %3 = mul i32 %prod.sroa.0.06, %iter.sroa.0.05
  %spec.select.1 = add nuw nsw i32 %iter.sroa.0.05, 2
  %4 = mul i32 %3, %spec.select
  %spec.select.2 = add nuw nsw i32 %iter.sroa.0.05, 3
  %5 = mul i32 %4, %spec.select.1
  %spec.select.3 = add nuw nsw i32 %iter.sroa.0.05, 4
  %6 = mul i32 %5, %spec.select.2
  %spec.select.4 = add nuw nsw i32 %iter.sroa.0.05, 5
  %7 = mul i32 %6, %spec.select.3
  %spec.select.5 = add nuw nsw i32 %iter.sroa.0.05, 6
  %8 = mul i32 %7, %spec.select.4
  %spec.select.6 = add nuw nsw i32 %iter.sroa.0.05, 7
  %9 = mul i32 %8, %spec.select.5
  %spec.select.7 = add nuw nsw i32 %iter.sroa.0.05, 8
  %10 = mul i32 %9, %spec.select.6
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb6.loopexit.unr-lcssa, label %bb5

bb6.loopexit.unr-lcssa:                           ; preds = %bb5, %bb5.preheader
  %.lcssa.ph = phi i32 [ poison, %bb5.preheader ], [ %10, %bb5 ]
  %prod.sroa.0.06.unr = phi i32 [ 1, %bb5.preheader ], [ %10, %bb5 ]
  %iter.sroa.0.05.unr = phi i32 [ 2, %bb5.preheader ], [ %spec.select.7, %bb5 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb6, label %bb5.epil

bb5.epil:                                         ; preds = %bb6.loopexit.unr-lcssa, %bb5.epil
  %prod.sroa.0.06.epil = phi i32 [ %11, %bb5.epil ], [ %prod.sroa.0.06.unr, %bb6.loopexit.unr-lcssa ]
  %iter.sroa.0.05.epil = phi i32 [ %spec.select.epil, %bb5.epil ], [ %iter.sroa.0.05.unr, %bb6.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb5.epil ], [ 0, %bb6.loopexit.unr-lcssa ]
  %spec.select.epil = add nuw nsw i32 %iter.sroa.0.05.epil, 1
  %11 = mul i32 %prod.sroa.0.06.epil, %iter.sroa.0.05.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb6, label %bb5.epil, !llvm.loop !1630

bb6:                                              ; preds = %bb6.loopexit.unr-lcssa, %bb5.epil, %start
  %prod.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %.lcssa.ph, %bb6.loopexit.unr-lcssa ], [ %11, %bb5.epil ]
  %_12 = add i32 %n, -1
  %_11 = mul i32 %_12, %n
  %_10 = mul i32 %_11, %prod.sroa.0.0.lcssa
  %_0 = sdiv i32 %_10, 6
  ret i32 %_0
}
