define noundef range(i32 -9, 10) i32 @f_gold(i32 noundef %x, i32 noundef %y) unnamed_addr #4 {
start:
  %_63 = icmp sgt i32 %y, 0
  br i1 %_63, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %xtraiter = and i32 %y, 3
  %0 = icmp ult i32 %y, 4
  br i1 %0, label %bb3.loopexit.unr-lcssa, label %bb2.preheader.new

bb2.preheader.new:                                ; preds = %bb2.preheader
  %unroll_iter = and i32 %y, 2147483644
  br label %bb2

bb3.loopexit.unr-lcssa:                           ; preds = %bb2, %bb2.preheader
  %.lcssa.ph = phi i32 [ poison, %bb2.preheader ], [ %5, %bb2 ]
  %res.sroa.0.05.unr = phi i32 [ 1, %bb2.preheader ], [ %5, %bb2 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb3, label %bb2.epil

bb2.epil:                                         ; preds = %bb3.loopexit.unr-lcssa, %bb2.epil
  %res.sroa.0.05.epil = phi i32 [ %1, %bb2.epil ], [ %res.sroa.0.05.unr, %bb3.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb2.epil ], [ 0, %bb3.loopexit.unr-lcssa ]
  %_5.epil = mul i32 %res.sroa.0.05.epil, %x
  %1 = srem i32 %_5.epil, 10
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb3, label %bb2.epil, !llvm.loop !1031

bb3:                                              ; preds = %bb3.loopexit.unr-lcssa, %bb2.epil, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %.lcssa.ph, %bb3.loopexit.unr-lcssa ], [ %1, %bb2.epil ]
  ret i32 %res.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2, %bb2.preheader.new
  %res.sroa.0.05 = phi i32 [ 1, %bb2.preheader.new ], [ %5, %bb2 ]
  %niter = phi i32 [ 0, %bb2.preheader.new ], [ %niter.next.3, %bb2 ]
  %_5 = mul i32 %res.sroa.0.05, %x
  %2 = srem i32 %_5, 10
  %_5.1 = mul i32 %2, %x
  %3 = srem i32 %_5.1, 10
  %_5.2 = mul i32 %3, %x
  %4 = srem i32 %_5.2, 10
  %_5.3 = mul i32 %4, %x
  %5 = srem i32 %_5.3, 10
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb3.loopexit.unr-lcssa, label %bb2
}
