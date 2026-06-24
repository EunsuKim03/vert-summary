define noundef range(i32 0, 256) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %strA, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %strB) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %strA, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i33.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i33.not, label %bb7, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %strA, i64 8
  %_4.i.i12 = load ptr, ptr %1, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %xtraiter = and i64 %_0.i, 3
  %2 = icmp samesign ult i64 %_0.i, 4
  br i1 %2, label %bb7.loopexit.unr-lcssa, label %bb9.lr.ph.new

bb9.lr.ph.new:                                    ; preds = %bb9.lr.ph
  %unroll_iter = and i64 %_0.i, 9223372036854775804
  br label %bb9

bb7.loopexit.unr-lcssa:                           ; preds = %bb9, %bb9.lr.ph
  %.lcssa46.ph = phi i32 [ poison, %bb9.lr.ph ], [ %30, %bb9 ]
  %spec.select37.unr = phi i64 [ 1, %bb9.lr.ph ], [ %spec.select.3, %bb9 ]
  %res.sroa.0.036.unr = phi i32 [ 0, %bb9.lr.ph ], [ %30, %bb9 ]
  %iter.sroa.0.035.unr = phi i64 [ 0, %bb9.lr.ph ], [ %spec.select.2, %bb9 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb7, label %bb9.epil

bb9.epil:                                         ; preds = %bb7.loopexit.unr-lcssa, %bb9.epil
  %spec.select37.epil = phi i64 [ %spec.select.epil, %bb9.epil ], [ %spec.select37.unr, %bb7.loopexit.unr-lcssa ]
  %res.sroa.0.036.epil = phi i32 [ %4, %bb9.epil ], [ %res.sroa.0.036.unr, %bb7.loopexit.unr-lcssa ]
  %iter.sroa.0.035.epil = phi i64 [ %spec.select37.epil, %bb9.epil ], [ %iter.sroa.0.035.unr, %bb7.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb9.epil ], [ 0, %bb7.loopexit.unr-lcssa ]
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i12, i64 %iter.sroa.0.035.epil
  %_14.epil = load i8, ptr %3, align 1, !noundef !37
  %_13.epil = zext i8 %_14.epil to i32
  %4 = xor i32 %res.sroa.0.036.epil, %_13.epil
  %_0.i.i.i.epil = icmp ult i64 %spec.select37.epil, %_0.i
  %_0.i1.i.i.epil = zext i1 %_0.i.i.i.epil to i64
  %spec.select.epil = add nuw i64 %spec.select37.epil, %_0.i1.i.i.epil
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb7, label %bb9.epil, !llvm.loop !1638

bb7:                                              ; preds = %bb7.loopexit.unr-lcssa, %bb9.epil, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa46.ph, %bb7.loopexit.unr-lcssa ], [ %4, %bb9.epil ]
  %5 = getelementptr inbounds nuw i8, ptr %strB, i64 16
  %_0.i13 = load i64, ptr %5, align 8, !alias.scope !1639, !noundef !37
  %_2.i14 = icmp sgt i64 %_0.i13, -1
  tail call void @llvm.assume(i1 %_2.i14)
  %_0.i.i.i1838.not = icmp eq i64 %_0.i13, 0
  br i1 %_0.i.i.i1838.not, label %bb15, label %bb17.lr.ph

bb17.lr.ph:                                       ; preds = %bb7
  %6 = getelementptr inbounds nuw i8, ptr %strB, i64 8
  %_4.i.i23 = load ptr, ptr %6, align 8, !alias.scope !1642, !nonnull !37, !noundef !37
  %xtraiter48 = and i64 %_0.i13, 3
  %7 = icmp samesign ult i64 %_0.i13, 4
  br i1 %7, label %bb15.loopexit.unr-lcssa, label %bb17.lr.ph.new

bb17.lr.ph.new:                                   ; preds = %bb17.lr.ph
  %unroll_iter52 = and i64 %_0.i13, 9223372036854775804
  br label %bb17

bb15.loopexit.unr-lcssa:                          ; preds = %bb17, %bb17.lr.ph
  %.lcssa.ph = phi i32 [ poison, %bb17.lr.ph ], [ %22, %bb17 ]
  %spec.select3142.unr = phi i64 [ 1, %bb17.lr.ph ], [ %spec.select31.3, %bb17 ]
  %res.sroa.0.141.unr = phi i32 [ %res.sroa.0.0.lcssa, %bb17.lr.ph ], [ %22, %bb17 ]
  %iter1.sroa.0.040.unr = phi i64 [ 0, %bb17.lr.ph ], [ %spec.select31.2, %bb17 ]
  %lcmp.mod50.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod50.not, label %bb15, label %bb17.epil

bb17.epil:                                        ; preds = %bb15.loopexit.unr-lcssa, %bb17.epil
  %spec.select3142.epil = phi i64 [ %spec.select31.epil, %bb17.epil ], [ %spec.select3142.unr, %bb15.loopexit.unr-lcssa ]
  %res.sroa.0.141.epil = phi i32 [ %9, %bb17.epil ], [ %res.sroa.0.141.unr, %bb15.loopexit.unr-lcssa ]
  %iter1.sroa.0.040.epil = phi i64 [ %spec.select3142.epil, %bb17.epil ], [ %iter1.sroa.0.040.unr, %bb15.loopexit.unr-lcssa ]
  %epil.iter49 = phi i64 [ %epil.iter49.next, %bb17.epil ], [ 0, %bb15.loopexit.unr-lcssa ]
  %8 = getelementptr inbounds nuw i8, ptr %_4.i.i23, i64 %iter1.sroa.0.040.epil
  %_29.epil = load i8, ptr %8, align 1, !noundef !37
  %_28.epil = zext i8 %_29.epil to i32
  %9 = xor i32 %res.sroa.0.141.epil, %_28.epil
  %_0.i.i.i18.epil = icmp ult i64 %spec.select3142.epil, %_0.i13
  %_0.i1.i.i21.epil = zext i1 %_0.i.i.i18.epil to i64
  %spec.select31.epil = add nuw i64 %spec.select3142.epil, %_0.i1.i.i21.epil
  %epil.iter49.next = add i64 %epil.iter49, 1
  %epil.iter49.cmp.not = icmp eq i64 %epil.iter49.next, %xtraiter48
  br i1 %epil.iter49.cmp.not, label %bb15, label %bb17.epil, !llvm.loop !1647

bb15:                                             ; preds = %bb15.loopexit.unr-lcssa, %bb17.epil, %bb7
  %res.sroa.0.1.lcssa = phi i32 [ %res.sroa.0.0.lcssa, %bb7 ], [ %.lcssa.ph, %bb15.loopexit.unr-lcssa ], [ %9, %bb17.epil ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %strB)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8136447a185fac1aE.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb15
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %strB)
          to label %bb21 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8136447a185fac1aE.exit.i": ; preds = %bb15
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %strB)
          to label %bb18 unwind label %cleanup2

bb21:                                             ; preds = %cleanup2, %cleanup.i.i
  %.pn = phi { ptr, i32 } [ %12, %cleanup2 ], [ %10, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E"(ptr noalias noundef align 8 dereferenceable(24) %strA) #27
          to label %common.resume unwind label %terminate

cleanup2:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8136447a185fac1aE.exit.i"
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb21

bb18:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8136447a185fac1aE.exit.i"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %strA)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E.exit29" unwind label %cleanup.i.i25

cleanup.i.i25:                                    ; preds = %bb18
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %strA)
          to label %common.resume unwind label %terminate.i.i26

terminate.i.i26:                                  ; preds = %cleanup.i.i25
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

common.resume:                                    ; preds = %bb21, %cleanup.i.i25
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup.i.i25 ], [ %.pn, %bb21 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E.exit29": ; preds = %bb18
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %strA)
  ret i32 %res.sroa.0.1.lcssa

bb17:                                             ; preds = %bb17, %bb17.lr.ph.new
  %spec.select3142 = phi i64 [ 1, %bb17.lr.ph.new ], [ %spec.select31.3, %bb17 ]
  %res.sroa.0.141 = phi i32 [ %res.sroa.0.0.lcssa, %bb17.lr.ph.new ], [ %22, %bb17 ]
  %iter1.sroa.0.040 = phi i64 [ 0, %bb17.lr.ph.new ], [ %spec.select31.2, %bb17 ]
  %niter53 = phi i64 [ 0, %bb17.lr.ph.new ], [ %niter53.next.3, %bb17 ]
  %15 = getelementptr inbounds nuw i8, ptr %_4.i.i23, i64 %iter1.sroa.0.040
  %_29 = load i8, ptr %15, align 1, !noundef !37
  %_28 = zext i8 %_29 to i32
  %16 = xor i32 %res.sroa.0.141, %_28
  %_0.i.i.i18 = icmp ult i64 %spec.select3142, %_0.i13
  %_0.i1.i.i21 = zext i1 %_0.i.i.i18 to i64
  %spec.select31 = add nuw i64 %spec.select3142, %_0.i1.i.i21
  %17 = getelementptr inbounds nuw i8, ptr %_4.i.i23, i64 %spec.select3142
  %_29.1 = load i8, ptr %17, align 1, !noundef !37
  %_28.1 = zext i8 %_29.1 to i32
  %18 = xor i32 %16, %_28.1
  %_0.i.i.i18.1 = icmp ult i64 %spec.select31, %_0.i13
  %_0.i1.i.i21.1 = zext i1 %_0.i.i.i18.1 to i64
  %spec.select31.1 = add nuw i64 %spec.select31, %_0.i1.i.i21.1
  %19 = getelementptr inbounds nuw i8, ptr %_4.i.i23, i64 %spec.select31
  %_29.2 = load i8, ptr %19, align 1, !noundef !37
  %_28.2 = zext i8 %_29.2 to i32
  %20 = xor i32 %18, %_28.2
  %_0.i.i.i18.2 = icmp ult i64 %spec.select31.1, %_0.i13
  %_0.i1.i.i21.2 = zext i1 %_0.i.i.i18.2 to i64
  %spec.select31.2 = add nuw i64 %spec.select31.1, %_0.i1.i.i21.2
  %21 = getelementptr inbounds nuw i8, ptr %_4.i.i23, i64 %spec.select31.1
  %_29.3 = load i8, ptr %21, align 1, !noundef !37
  %_28.3 = zext i8 %_29.3 to i32
  %22 = xor i32 %20, %_28.3
  %_0.i.i.i18.3 = icmp ult i64 %spec.select31.2, %_0.i13
  %_0.i1.i.i21.3 = zext i1 %_0.i.i.i18.3 to i64
  %spec.select31.3 = add nuw i64 %spec.select31.2, %_0.i1.i.i21.3
  %niter53.next.3 = add i64 %niter53, 4
  %niter53.ncmp.3.not = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3.not, label %bb15.loopexit.unr-lcssa, label %bb17

bb9:                                              ; preds = %bb9, %bb9.lr.ph.new
  %spec.select37 = phi i64 [ 1, %bb9.lr.ph.new ], [ %spec.select.3, %bb9 ]
  %res.sroa.0.036 = phi i32 [ 0, %bb9.lr.ph.new ], [ %30, %bb9 ]
  %iter.sroa.0.035 = phi i64 [ 0, %bb9.lr.ph.new ], [ %spec.select.2, %bb9 ]
  %niter = phi i64 [ 0, %bb9.lr.ph.new ], [ %niter.next.3, %bb9 ]
  %23 = getelementptr inbounds nuw i8, ptr %_4.i.i12, i64 %iter.sroa.0.035
  %_14 = load i8, ptr %23, align 1, !noundef !37
  %_13 = zext i8 %_14 to i32
  %24 = xor i32 %res.sroa.0.036, %_13
  %_0.i.i.i = icmp ult i64 %spec.select37, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select37, %_0.i1.i.i
  %25 = getelementptr inbounds nuw i8, ptr %_4.i.i12, i64 %spec.select37
  %_14.1 = load i8, ptr %25, align 1, !noundef !37
  %_13.1 = zext i8 %_14.1 to i32
  %26 = xor i32 %24, %_13.1
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_0.i
  %_0.i1.i.i.1 = zext i1 %_0.i.i.i.1 to i64
  %spec.select.1 = add nuw i64 %spec.select, %_0.i1.i.i.1
  %27 = getelementptr inbounds nuw i8, ptr %_4.i.i12, i64 %spec.select
  %_14.2 = load i8, ptr %27, align 1, !noundef !37
  %_13.2 = zext i8 %_14.2 to i32
  %28 = xor i32 %26, %_13.2
  %_0.i.i.i.2 = icmp ult i64 %spec.select.1, %_0.i
  %_0.i1.i.i.2 = zext i1 %_0.i.i.i.2 to i64
  %spec.select.2 = add nuw i64 %spec.select.1, %_0.i1.i.i.2
  %29 = getelementptr inbounds nuw i8, ptr %_4.i.i12, i64 %spec.select.1
  %_14.3 = load i8, ptr %29, align 1, !noundef !37
  %_13.3 = zext i8 %_14.3 to i32
  %30 = xor i32 %28, %_13.3
  %_0.i.i.i.3 = icmp ult i64 %spec.select.2, %_0.i
  %_0.i1.i.i.3 = zext i1 %_0.i.i.i.3 to i64
  %spec.select.3 = add nuw i64 %spec.select.2, %_0.i1.i.i.3
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %bb7.loopexit.unr-lcssa, label %bb9

terminate:                                        ; preds = %bb21
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable
}
