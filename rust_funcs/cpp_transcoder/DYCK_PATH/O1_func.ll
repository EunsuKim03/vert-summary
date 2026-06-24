define noundef i64 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i11.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i11.not, label %bb6, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start
  %_12 = shl i32 %n, 1
  %wide.trip.count = zext i32 %n to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %n, 1
  br i1 %0, label %bb6.loopexit.unr-lcssa, label %bb5.lr.ph.new

bb5.lr.ph.new:                                    ; preds = %bb5.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.lr.ph.new
  %indvars.iv16 = phi i64 [ 0, %bb5.lr.ph.new ], [ %indvars.iv.next17.1, %bb5 ]
  %res.sroa.0.014 = phi i64 [ 1, %bb5.lr.ph.new ], [ %6, %bb5 ]
  %niter = phi i64 [ 0, %bb5.lr.ph.new ], [ %niter.next.1, %bb5 ]
  %indvars.iv.next17 = or disjoint i64 %indvars.iv16, 1
  %1 = trunc nuw i64 %indvars.iv16 to i32
  %_11 = sub i32 %_12, %1
  %_10 = zext i32 %_11 to i64
  %2 = mul i64 %res.sroa.0.014, %_10
  %3 = sdiv i64 %2, %indvars.iv.next17
  %indvars.iv.next17.1 = add nuw nsw i64 %indvars.iv16, 2
  %4 = trunc nuw i64 %indvars.iv.next17 to i32
  %_11.1 = sub i32 %_12, %4
  %_10.1 = zext i32 %_11.1 to i64
  %5 = mul i64 %3, %_10.1
  %6 = sdiv i64 %5, %indvars.iv.next17.1
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb6.loopexit.unr-lcssa, label %bb5

bb6.loopexit.unr-lcssa:                           ; preds = %bb5, %bb5.lr.ph
  %.lcssa.ph = phi i64 [ poison, %bb5.lr.ph ], [ %6, %bb5 ]
  %indvars.iv16.unr = phi i64 [ 0, %bb5.lr.ph ], [ %indvars.iv.next17.1, %bb5 ]
  %res.sroa.0.014.unr = phi i64 [ 1, %bb5.lr.ph ], [ %6, %bb5 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb6, label %bb5.epil

bb5.epil:                                         ; preds = %bb6.loopexit.unr-lcssa
  %indvars.iv.next17.epil = add nuw nsw i64 %indvars.iv16.unr, 1
  %7 = trunc nuw i64 %indvars.iv16.unr to i32
  %_11.epil = sub i32 %_12, %7
  %_10.epil = zext i32 %_11.epil to i64
  %8 = mul i64 %res.sroa.0.014.unr, %_10.epil
  %9 = sdiv i64 %8, %indvars.iv.next17.epil
  br label %bb6

bb6:                                              ; preds = %bb5.epil, %bb6.loopexit.unr-lcssa, %start
  %res.sroa.0.0.lcssa = phi i64 [ 1, %start ], [ %.lcssa.ph, %bb6.loopexit.unr-lcssa ], [ %9, %bb5.epil ]
  %_20 = add i32 %n, 1
  %_21 = icmp eq i32 %_20, 0
  br i1 %_21, label %panic, label %bb10

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_11657b00a84b94006104e54693b93fbb) #23
  unreachable

bb10:                                             ; preds = %bb6
  %_19 = zext i32 %_20 to i64
  %_0 = sdiv i64 %res.sroa.0.0.lcssa, %_19
  ret i64 %_0
}
