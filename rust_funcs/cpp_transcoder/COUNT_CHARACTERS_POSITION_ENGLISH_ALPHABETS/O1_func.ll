define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i8.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i8.not, label %bb7, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_4.i.i4 = load ptr, ptr %1, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %xtraiter = and i64 %_0.i, 1
  %2 = icmp eq i64 %_0.i, 1
  br i1 %2, label %bb7.loopexit.unr-lcssa, label %bb9.lr.ph.new

bb9.lr.ph.new:                                    ; preds = %bb9.lr.ph
  %unroll_iter = and i64 %_0.i, 9223372036854775806
  br label %bb9

bb7.loopexit.unr-lcssa:                           ; preds = %bb17.1, %bb9.lr.ph
  %result.sroa.0.1.lcssa.ph = phi i32 [ poison, %bb9.lr.ph ], [ %result.sroa.0.1.1, %bb17.1 ]
  %result.sroa.0.011.unr = phi i32 [ 0, %bb9.lr.ph ], [ %result.sroa.0.1.1, %bb17.1 ]
  %iter.sroa.0.010.unr = phi i64 [ 0, %bb9.lr.ph ], [ %spec.select, %bb17.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb7, label %bb9.epil

bb9.epil:                                         ; preds = %bb7.loopexit.unr-lcssa
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i4, i64 %iter.sroa.0.010.unr
  %_14.epil = load i8, ptr %3, align 1, !noundef !37
  %_13.epil = add i8 %_14.epil, -97
  %_12.epil = zext i8 %_13.epil to i64
  %_11.epil = icmp eq i64 %iter.sroa.0.010.unr, %_12.epil
  br i1 %_11.epil, label %bb15.epil, label %bb11.epil

bb11.epil:                                        ; preds = %bb9.epil
  %_21.epil = add i8 %_14.epil, -65
  %_20.epil = zext i8 %_21.epil to i64
  %_19.epil = icmp eq i64 %iter.sroa.0.010.unr, %_20.epil
  br i1 %_19.epil, label %bb15.epil, label %bb7

bb15.epil:                                        ; preds = %bb11.epil, %bb9.epil
  %4 = add i32 %result.sroa.0.011.unr, 1
  br label %bb7

bb7:                                              ; preds = %bb7.loopexit.unr-lcssa, %bb15.epil, %bb11.epil, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa.ph, %bb7.loopexit.unr-lcssa ], [ %4, %bb15.epil ], [ %result.sroa.0.011.unr, %bb11.epil ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61ac49c6e4f6f7beE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb7
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %cleanup.i.i
  resume { ptr, i32 } %5

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61ac49c6e4f6f7beE.exit": ; preds = %bb7
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %result.sroa.0.0.lcssa

bb9:                                              ; preds = %bb17.1, %bb9.lr.ph.new
  %spec.select12 = phi i64 [ 1, %bb9.lr.ph.new ], [ %spec.select.1, %bb17.1 ]
  %result.sroa.0.011 = phi i32 [ 0, %bb9.lr.ph.new ], [ %result.sroa.0.1.1, %bb17.1 ]
  %iter.sroa.0.010 = phi i64 [ 0, %bb9.lr.ph.new ], [ %spec.select, %bb17.1 ]
  %niter = phi i64 [ 0, %bb9.lr.ph.new ], [ %niter.next.1, %bb17.1 ]
  %7 = getelementptr inbounds nuw i8, ptr %_4.i.i4, i64 %iter.sroa.0.010
  %_14 = load i8, ptr %7, align 1, !noundef !37
  %_13 = add i8 %_14, -97
  %_12 = zext i8 %_13 to i64
  %_11 = icmp eq i64 %iter.sroa.0.010, %_12
  br i1 %_11, label %bb15, label %bb11

bb11:                                             ; preds = %bb9
  %_21 = add i8 %_14, -65
  %_20 = zext i8 %_21 to i64
  %_19 = icmp eq i64 %iter.sroa.0.010, %_20
  br i1 %_19, label %bb15, label %bb17

bb17:                                             ; preds = %bb11, %bb15
  %result.sroa.0.1 = phi i32 [ %10, %bb15 ], [ %result.sroa.0.011, %bb11 ]
  %_0.i.i.i = icmp ult i64 %spec.select12, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select12, %_0.i1.i.i
  %8 = getelementptr inbounds nuw i8, ptr %_4.i.i4, i64 %spec.select12
  %_14.1 = load i8, ptr %8, align 1, !noundef !37
  %_13.1 = add i8 %_14.1, -97
  %_12.1 = zext i8 %_13.1 to i64
  %_11.1 = icmp eq i64 %spec.select12, %_12.1
  br i1 %_11.1, label %bb15.1, label %bb11.1

bb11.1:                                           ; preds = %bb17
  %_21.1 = add i8 %_14.1, -65
  %_20.1 = zext i8 %_21.1 to i64
  %_19.1 = icmp eq i64 %spec.select12, %_20.1
  br i1 %_19.1, label %bb15.1, label %bb17.1

bb15.1:                                           ; preds = %bb11.1, %bb17
  %9 = add i32 %result.sroa.0.1, 1
  br label %bb17.1

bb17.1:                                           ; preds = %bb15.1, %bb11.1
  %result.sroa.0.1.1 = phi i32 [ %9, %bb15.1 ], [ %result.sroa.0.1, %bb11.1 ]
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_0.i
  %_0.i1.i.i.1 = zext i1 %_0.i.i.i.1 to i64
  %spec.select.1 = add nuw i64 %spec.select, %_0.i1.i.i.1
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %bb7.loopexit.unr-lcssa, label %bb9

bb15:                                             ; preds = %bb11, %bb9
  %10 = add i32 %result.sroa.0.011, 1
  br label %bb17
}
