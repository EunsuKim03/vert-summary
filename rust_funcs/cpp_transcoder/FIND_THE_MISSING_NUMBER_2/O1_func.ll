define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %_0.i.i.i18 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i18, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %start
  %x1.sroa.0.0.lcssa.in = phi i64 [ %0, %start ], [ %11, %bb7 ]
  %_17 = add i32 %n, 2
  %_0.i.i.i1023 = icmp sgt i32 %_17, 2
  br i1 %_0.i.i.i1023, label %bb11.preheader, label %bb12

bb11.preheader:                                   ; preds = %bb6
  %1 = add nsw i32 %n, -1
  %xtraiter = and i32 %n, 7
  %2 = icmp ult i32 %1, 7
  br i1 %2, label %bb12.loopexit.unr-lcssa, label %bb11.preheader.new

bb11.preheader.new:                               ; preds = %bb11.preheader
  %unroll_iter = and i32 %n, 2147483640
  br label %bb11

bb11:                                             ; preds = %bb11, %bb11.preheader.new
  %x2.sroa.0.025 = phi i32 [ 1, %bb11.preheader.new ], [ %9, %bb11 ]
  %iter1.sroa.0.024 = phi i32 [ 2, %bb11.preheader.new ], [ %spec.select15.7, %bb11 ]
  %niter = phi i32 [ 0, %bb11.preheader.new ], [ %niter.next.7, %bb11 ]
  %spec.select15.1 = add nuw nsw i32 %iter1.sroa.0.024, 2
  %spec.select15.2 = add nuw nsw i32 %iter1.sroa.0.024, 3
  %3 = xor i32 %x2.sroa.0.025, %spec.select15.1
  %spec.select15.3 = add nuw nsw i32 %iter1.sroa.0.024, 4
  %4 = xor i32 %3, %spec.select15.2
  %spec.select15.4 = add nuw nsw i32 %iter1.sroa.0.024, 5
  %5 = xor i32 %4, %spec.select15.3
  %spec.select15.5 = add nuw nsw i32 %iter1.sroa.0.024, 6
  %6 = xor i32 %5, %spec.select15.4
  %spec.select15.6 = add nuw nsw i32 %iter1.sroa.0.024, 7
  %7 = xor i32 %6, %spec.select15.5
  %spec.select15.7 = add nuw nsw i32 %iter1.sroa.0.024, 8
  %8 = xor i32 %7, %spec.select15.6
  %9 = xor i32 %8, 1
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb12.loopexit.unr-lcssa, label %bb11

bb12.loopexit.unr-lcssa:                          ; preds = %bb11, %bb11.preheader
  %.lcssa.ph = phi i32 [ poison, %bb11.preheader ], [ %9, %bb11 ]
  %x2.sroa.0.025.unr = phi i32 [ 1, %bb11.preheader ], [ %9, %bb11 ]
  %iter1.sroa.0.024.unr = phi i32 [ 2, %bb11.preheader ], [ %spec.select15.7, %bb11 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb12, label %bb11.epil

bb11.epil:                                        ; preds = %bb12.loopexit.unr-lcssa, %bb11.epil
  %x2.sroa.0.025.epil = phi i32 [ %10, %bb11.epil ], [ %x2.sroa.0.025.unr, %bb12.loopexit.unr-lcssa ]
  %iter1.sroa.0.024.epil = phi i32 [ %spec.select15.epil, %bb11.epil ], [ %iter1.sroa.0.024.unr, %bb12.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %bb11.epil ], [ 0, %bb12.loopexit.unr-lcssa ]
  %spec.select15.epil = add nuw nsw i32 %iter1.sroa.0.024.epil, 1
  %10 = xor i32 %x2.sroa.0.025.epil, %iter1.sroa.0.024.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb12, label %bb11.epil, !llvm.loop !1630

bb12:                                             ; preds = %bb12.loopexit.unr-lcssa, %bb11.epil, %bb6
  %x2.sroa.0.0.lcssa = phi i32 [ 1, %bb6 ], [ %.lcssa.ph, %bb12.loopexit.unr-lcssa ], [ %10, %bb11.epil ]
  %x1.sroa.0.0.lcssa = trunc i64 %x1.sroa.0.0.lcssa.in to i32
  %_0 = xor i32 %x2.sroa.0.0.lcssa, %x1.sroa.0.0.lcssa
  ret i32 %_0

bb7:                                              ; preds = %start
  %11 = xor i64 %a.sroa.2.0.extract.shift, %0
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb6, label %panic

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f41ef219a0795eef5f32ee9179de7056) #24
  unreachable
}
