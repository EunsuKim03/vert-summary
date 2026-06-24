define noundef i32 @f_gold(i64 %0, i32 noundef %size) unnamed_addr #1 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %1 = trunc i64 %0 to i32
  %iter1 = sext i32 %size to i64
  %_129.not = icmp eq i32 %size, 0
  br i1 %_129.not, label %bb7, label %bb6.preheader

bb6.preheader:                                    ; preds = %start
  %2 = add nsw i64 %iter1, -3
  %.not = icmp ult i64 %2, -2
  br i1 %.not, label %panic, label %bb6.preheader15

bb6.preheader15:                                  ; preds = %bb6.preheader
  %3 = icmp eq i32 %size, 1
  br i1 %3, label %bb7.loopexit.unr-lcssa, label %bb6.preheader15.new

bb6.preheader15.new:                              ; preds = %bb6.preheader15
  %unroll_iter = and i64 %iter1, 2
  %invariant.gep = getelementptr inbounds i8, ptr %a, i64 4
  br label %bb6

bb7.loopexit.unr-lcssa:                           ; preds = %bb6, %bb6.preheader15
  %x.y.i6.lcssa.ph = phi i32 [ poison, %bb6.preheader15 ], [ %x.y.i6.1, %bb6 ]
  %iter.sroa.0.012.unr = phi i64 [ 0, %bb6.preheader15 ], [ %7, %bb6 ]
  %max_so_far.sroa.0.011.unr = phi i32 [ %1, %bb6.preheader15 ], [ %x.y.i6.1, %bb6 ]
  %curr_max.sroa.0.010.unr = phi i32 [ %1, %bb6.preheader15 ], [ %x.y.i.1, %bb6 ]
  %4 = and i32 %size, 1
  %lcmp.mod.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod.not, label %bb7, label %bb6.epil

bb6.epil:                                         ; preds = %bb7.loopexit.unr-lcssa
  %5 = getelementptr inbounds nuw i32, ptr %a, i64 %iter.sroa.0.012.unr
  %_7.epil = load i32, ptr %5, align 4, !noundef !23
  %_9.epil = add i32 %_7.epil, %curr_max.sroa.0.010.unr
  %x.y.i.epil = tail call noundef i32 @llvm.smax.i32(i32 %_7.epil, i32 %_9.epil)
  %x.y.i6.epil = tail call noundef i32 @llvm.smax.i32(i32 %max_so_far.sroa.0.011.unr, i32 %x.y.i.epil)
  br label %bb7

bb7:                                              ; preds = %bb6.epil, %bb7.loopexit.unr-lcssa, %start
  %max_so_far.sroa.0.0.lcssa = phi i32 [ %1, %start ], [ %x.y.i6.lcssa.ph, %bb7.loopexit.unr-lcssa ], [ %x.y.i6.epil, %bb6.epil ]
  ret i32 %max_so_far.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6, %bb6.preheader15.new
  %iter.sroa.0.012 = phi i64 [ 0, %bb6.preheader15.new ], [ %7, %bb6 ]
  %max_so_far.sroa.0.011 = phi i32 [ %1, %bb6.preheader15.new ], [ %x.y.i6.1, %bb6 ]
  %curr_max.sroa.0.010 = phi i32 [ %1, %bb6.preheader15.new ], [ %x.y.i.1, %bb6 ]
  %niter = phi i64 [ 0, %bb6.preheader15.new ], [ %niter.next.1, %bb6 ]
  %6 = getelementptr inbounds nuw i32, ptr %a, i64 %iter.sroa.0.012
  %_7 = load i32, ptr %6, align 8, !noundef !23
  %_9 = add i32 %_7, %curr_max.sroa.0.010
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_7, i32 %_9)
  %x.y.i6 = tail call noundef i32 @llvm.smax.i32(i32 %max_so_far.sroa.0.011, i32 %x.y.i)
  %7 = add nuw nsw i64 %iter.sroa.0.012, 2
  %gep = getelementptr inbounds i32, ptr %invariant.gep, i64 %iter.sroa.0.012
  %_7.1 = load i32, ptr %gep, align 4, !noundef !23
  %_9.1 = add i32 %_7.1, %x.y.i
  %x.y.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %_7.1, i32 %_9.1)
  %x.y.i6.1 = tail call noundef i32 @llvm.smax.i32(i32 %x.y.i6, i32 %x.y.i.1)
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb7.loopexit.unr-lcssa, label %bb6

panic:                                            ; preds = %bb6.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a4857fc8752fd6bcbb5ae47273e83252) #18
  unreachable
}
