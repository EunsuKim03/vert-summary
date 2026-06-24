define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %s.0, i64 noundef range(i64 0, 2305843009213693952) %s.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_158 = icmp sgt i32 %n, 0
  br i1 %_158, label %bb9.preheader, label %bb10

bb9.preheader:                                    ; preds = %start
  %0 = zext nneg i32 %n to i64
  %1 = add nsw i32 %n, -1
  %2 = zext nneg i32 %1 to i64
  %.not.not = icmp samesign ugt i64 %s.1, %2
  br i1 %.not.not, label %bb9.preheader16, label %panic

bb9.preheader16:                                  ; preds = %bb9.preheader
  %xtraiter = and i64 %0, 1
  %3 = icmp eq i32 %n, 1
  br i1 %3, label %bb10.loopexit.unr-lcssa, label %bb9.preheader16.new

bb9.preheader16.new:                              ; preds = %bb9.preheader16
  %unroll_iter = and i64 %0, 2147483646
  %invariant.gep = getelementptr inbounds i8, ptr %s.0, i64 4
  br label %bb9

bb10.loopexit.unr-lcssa:                          ; preds = %bb8.1, %bb9.preheader16
  %invalid_close_braces.sroa.0.1.lcssa.ph = phi i32 [ poison, %bb9.preheader16 ], [ %invalid_close_braces.sroa.0.1.1, %bb8.1 ]
  %invalid_open_braces.sroa.0.1.lcssa.ph = phi i32 [ poison, %bb9.preheader16 ], [ %invalid_open_braces.sroa.0.1.1, %bb8.1 ]
  %indvars.iv.unr = phi i64 [ 0, %bb9.preheader16 ], [ %indvars.iv.next.1, %bb8.1 ]
  %invalid_open_braces.sroa.0.011.unr = phi i32 [ 0, %bb9.preheader16 ], [ %invalid_open_braces.sroa.0.1.1, %bb8.1 ]
  %invalid_close_braces.sroa.0.010.unr = phi i32 [ 0, %bb9.preheader16 ], [ %invalid_close_braces.sroa.0.1.1, %bb8.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb10.loopexit, label %bb9.epil

bb9.epil:                                         ; preds = %bb10.loopexit.unr-lcssa
  %4 = getelementptr inbounds nuw i32, ptr %s.0, i64 %indvars.iv.unr
  %_8.epil = load i32, ptr %4, align 4, !range !1031, !noundef !23
  %_7.epil = icmp eq i32 %_8.epil, 40
  br i1 %_7.epil, label %bb3.epil, label %bb4.epil

bb4.epil:                                         ; preds = %bb9.epil
  %_12.epil = icmp eq i32 %invalid_open_braces.sroa.0.011.unr, 0
  br i1 %_12.epil, label %bb5.epil, label %bb6.epil

bb6.epil:                                         ; preds = %bb4.epil
  %5 = add i32 %invalid_open_braces.sroa.0.011.unr, -1
  br label %bb10.loopexit

bb5.epil:                                         ; preds = %bb4.epil
  %6 = add i32 %invalid_close_braces.sroa.0.010.unr, 1
  br label %bb10.loopexit

bb3.epil:                                         ; preds = %bb9.epil
  %7 = add i32 %invalid_open_braces.sroa.0.011.unr, 1
  br label %bb10.loopexit

bb10.loopexit:                                    ; preds = %bb6.epil, %bb5.epil, %bb3.epil, %bb10.loopexit.unr-lcssa
  %invalid_close_braces.sroa.0.1.lcssa = phi i32 [ %invalid_close_braces.sroa.0.1.lcssa.ph, %bb10.loopexit.unr-lcssa ], [ %invalid_close_braces.sroa.0.010.unr, %bb3.epil ], [ %6, %bb5.epil ], [ %invalid_close_braces.sroa.0.010.unr, %bb6.epil ]
  %invalid_open_braces.sroa.0.1.lcssa = phi i32 [ %invalid_open_braces.sroa.0.1.lcssa.ph, %bb10.loopexit.unr-lcssa ], [ %7, %bb3.epil ], [ 0, %bb5.epil ], [ %5, %bb6.epil ]
  %8 = add i32 %invalid_close_braces.sroa.0.1.lcssa, %invalid_open_braces.sroa.0.1.lcssa
  br label %bb10

bb10:                                             ; preds = %bb10.loopexit, %start
  %9 = phi i32 [ 0, %start ], [ %8, %bb10.loopexit ]
  %_0 = sub i32 %n, %9
  ret i32 %_0

bb9:                                              ; preds = %bb8.1, %bb9.preheader16.new
  %indvars.iv = phi i64 [ 0, %bb9.preheader16.new ], [ %indvars.iv.next.1, %bb8.1 ]
  %invalid_open_braces.sroa.0.011 = phi i32 [ 0, %bb9.preheader16.new ], [ %invalid_open_braces.sroa.0.1.1, %bb8.1 ]
  %invalid_close_braces.sroa.0.010 = phi i32 [ 0, %bb9.preheader16.new ], [ %invalid_close_braces.sroa.0.1.1, %bb8.1 ]
  %niter = phi i64 [ 0, %bb9.preheader16.new ], [ %niter.next.1, %bb8.1 ]
  %10 = getelementptr inbounds nuw i32, ptr %s.0, i64 %indvars.iv
  %_8 = load i32, ptr %10, align 4, !range !1031, !noundef !23
  %_7 = icmp eq i32 %_8, 40
  br i1 %_7, label %bb3, label %bb4

panic:                                            ; preds = %bb9.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %s.1, i64 noundef %s.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1e79f9fbdeb8616ee8fffed9c1f21f00) #18
  unreachable

bb4:                                              ; preds = %bb9
  %_12 = icmp eq i32 %invalid_open_braces.sroa.0.011, 0
  br i1 %_12, label %bb5, label %bb6

bb3:                                              ; preds = %bb9
  %11 = add i32 %invalid_open_braces.sroa.0.011, 1
  br label %bb8

bb6:                                              ; preds = %bb4
  %12 = add i32 %invalid_open_braces.sroa.0.011, -1
  br label %bb8

bb5:                                              ; preds = %bb4
  %13 = add i32 %invalid_close_braces.sroa.0.010, 1
  br label %bb8

bb8:                                              ; preds = %bb6, %bb5, %bb3
  %invalid_close_braces.sroa.0.1 = phi i32 [ %invalid_close_braces.sroa.0.010, %bb3 ], [ %13, %bb5 ], [ %invalid_close_braces.sroa.0.010, %bb6 ]
  %invalid_open_braces.sroa.0.1 = phi i32 [ %11, %bb3 ], [ 0, %bb5 ], [ %12, %bb6 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %gep = getelementptr inbounds i32, ptr %invariant.gep, i64 %indvars.iv
  %_8.1 = load i32, ptr %gep, align 4, !range !1031, !noundef !23
  %_7.1 = icmp eq i32 %_8.1, 40
  br i1 %_7.1, label %bb3.1, label %bb4.1

bb4.1:                                            ; preds = %bb8
  %_12.1 = icmp eq i32 %invalid_open_braces.sroa.0.1, 0
  br i1 %_12.1, label %bb5.1, label %bb6.1

bb6.1:                                            ; preds = %bb4.1
  %14 = add i32 %invalid_open_braces.sroa.0.1, -1
  br label %bb8.1

bb5.1:                                            ; preds = %bb4.1
  %15 = add i32 %invalid_close_braces.sroa.0.1, 1
  br label %bb8.1

bb3.1:                                            ; preds = %bb8
  %16 = add i32 %invalid_open_braces.sroa.0.1, 1
  br label %bb8.1

bb8.1:                                            ; preds = %bb3.1, %bb5.1, %bb6.1
  %invalid_close_braces.sroa.0.1.1 = phi i32 [ %invalid_close_braces.sroa.0.1, %bb3.1 ], [ %15, %bb5.1 ], [ %invalid_close_braces.sroa.0.1, %bb6.1 ]
  %invalid_open_braces.sroa.0.1.1 = phi i32 [ %16, %bb3.1 ], [ 0, %bb5.1 ], [ %14, %bb6.1 ]
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb10.loopexit.unr-lcssa, label %bb9
}
