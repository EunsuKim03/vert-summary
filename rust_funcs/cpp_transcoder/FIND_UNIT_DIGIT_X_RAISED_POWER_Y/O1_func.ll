define noundef range(i32 -9, 10) i32 @f_gold(i32 noundef %x, i32 noundef %y) unnamed_addr #12 {
start:
  %_0.i.i.i4 = icmp sgt i32 %y, 0
  br i1 %_0.i.i.i4, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %xtraiter = and i32 %y, 3
  %0 = icmp ult i32 %y, 4
  br i1 %0, label %bb6.loopexit.unr-lcssa, label %bb5.preheader.new

bb5.preheader.new:                                ; preds = %bb5.preheader
  %unroll_iter = and i32 %y, 2147483644
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.preheader.new
  %res.sroa.0.06 = phi i32 [ 1, %bb5.preheader.new ], [ %4, %bb5 ]
  %niter = phi i32 [ 0, %bb5.preheader.new ], [ %niter.next.3, %bb5 ]
  %_10 = mul i32 %res.sroa.0.06, %x
  %1 = srem i32 %_10, 10
  %_10.1 = mul i32 %1, %x
  %2 = srem i32 %_10.1, 10
  %_10.2 = mul i32 %2, %x
  %3 = srem i32 %_10.2, 10
  %_10.3 = mul i32 %3, %x
  %4 = srem i32 %_10.3, 10
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb6.loopexit.unr-lcssa, label %bb5

bb6.loopexit.unr-lcssa:                           ; preds = %bb5, %bb5.preheader
  %.lcssa.ph = phi i32 [ poison, %bb5.preheader ], [ %4, %bb5 ]
  %res.sroa.0.06.unr = phi i32 [ 1, %bb5.preheader ], [ %4, %bb5 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb6, label %bb5.epil

bb5.epil:                                         ; preds = %bb6.loopexit.unr-lcssa, %bb5.epil
  %res.sroa.0.06.epil = phi i32 [ %5, %bb5.epil ], [ %res.sroa.0.06.unr, %bb6.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb5.epil ], [ 0, %bb6.loopexit.unr-lcssa ]
  %_10.epil = mul i32 %res.sroa.0.06.epil, %x
  %5 = srem i32 %_10.epil, 10
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb6, label %bb5.epil, !llvm.loop !1630

bb6:                                              ; preds = %bb6.loopexit.unr-lcssa, %bb5.epil, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %.lcssa.ph, %bb6.loopexit.unr-lcssa ], [ %5, %bb5.epil ]
  ret i32 %res.sroa.0.0.lcssa
}
