define noundef i64 @f_gold(i32 noundef %n) unnamed_addr #1 {
start:
  %_209.not = icmp eq i32 %n, 0
  br i1 %_209.not, label %bb5, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %_7 = shl i32 %n, 1
  %wide.trip.count = zext i32 %n to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %n, 1
  br i1 %0, label %bb7.unr-lcssa, label %bb3.lr.ph.new

bb3.lr.ph.new:                                    ; preds = %bb3.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb3

bb7.unr-lcssa:                                    ; preds = %bb3, %bb3.lr.ph
  %.lcssa.ph = phi i64 [ poison, %bb3.lr.ph ], [ %9, %bb3 ]
  %indvars.iv.unr = phi i64 [ 0, %bb3.lr.ph ], [ %indvars.iv.next.1, %bb3 ]
  %res.sroa.0.011.unr = phi i64 [ 1, %bb3.lr.ph ], [ %9, %bb3 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb7, label %bb3.epil

bb3.epil:                                         ; preds = %bb7.unr-lcssa
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.unr, 1
  %1 = trunc nuw i64 %indvars.iv.unr to i32
  %_6.epil = sub i32 %_7, %1
  %_5.epil = zext i32 %_6.epil to i64
  %2 = mul i64 %res.sroa.0.011.unr, %_5.epil
  %3 = sdiv i64 %2, %indvars.iv.next.epil
  br label %bb7

bb7:                                              ; preds = %bb7.unr-lcssa, %bb3.epil
  %.lcssa = phi i64 [ %.lcssa.ph, %bb7.unr-lcssa ], [ %3, %bb3.epil ]
  %_15 = add i32 %n, 1
  %_16 = icmp eq i32 %_15, 0
  br i1 %_16, label %panic, label %bb5

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_11657b00a84b94006104e54693b93fbb) #17
  unreachable

bb5:                                              ; preds = %start, %bb7
  %_1517 = phi i32 [ %_15, %bb7 ], [ 1, %start ]
  %res.sroa.0.0.lcssa16 = phi i64 [ %.lcssa, %bb7 ], [ 1, %start ]
  %_14 = zext i32 %_1517 to i64
  %_0 = sdiv i64 %res.sroa.0.0.lcssa16, %_14
  ret i64 %_0

bb3:                                              ; preds = %bb3, %bb3.lr.ph.new
  %indvars.iv = phi i64 [ 0, %bb3.lr.ph.new ], [ %indvars.iv.next.1, %bb3 ]
  %res.sroa.0.011 = phi i64 [ 1, %bb3.lr.ph.new ], [ %9, %bb3 ]
  %niter = phi i64 [ 0, %bb3.lr.ph.new ], [ %niter.next.1, %bb3 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %4 = trunc nuw i64 %indvars.iv to i32
  %_6 = sub i32 %_7, %4
  %_5 = zext i32 %_6 to i64
  %5 = mul i64 %res.sroa.0.011, %_5
  %6 = sdiv i64 %5, %indvars.iv.next
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %7 = trunc nuw i64 %indvars.iv.next to i32
  %_6.1 = sub i32 %_7, %7
  %_5.1 = zext i32 %_6.1 to i64
  %8 = mul i64 %6, %_5.1
  %9 = sdiv i64 %8, %indvars.iv.next.1
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb7.unr-lcssa, label %bb3
}
