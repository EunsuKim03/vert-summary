define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %lt = alloca [24 x i8], align 8
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = bitcast i32 %arr.sroa.0.0.extract.trunc to float
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  %2 = bitcast i32 %arr.sroa.3.0.extract.trunc to float
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lt)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %3 = trunc nuw i64 %_5.i.i.i to i1
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %4, align 8, !range !1032, !noalias !1644, !noundef !37
  %5 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %3, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %5, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %5, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp uge i64 %err.0.i.i.i, %_4
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i32 %n, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i"
  %6 = add nsw i64 %_4, -1
  %7 = add nsw i64 %_4, -2
  %xtraiter = and i64 %6, 7
  %8 = icmp ult i64 %7, 7
  br i1 %8, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %6, -8
  br label %bb13.i.i.i

bb14.loopexit.i.i.i.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.loopexit.i.i.i.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.loopexit.i.i.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.loopexit.i.i.i.unr-lcssa ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1644
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1645

bb14.loopexit.i.i.i:                              ; preds = %bb13.i.i.i.epil, %bb14.loopexit.i.i.i.unr-lcssa
  %_15.i.i.i.lcssa = phi ptr [ %_15.i.i.i.lcssa.ph, %bb14.loopexit.i.i.i.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %9 = add nsw i64 %_4, -1
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb14.loopexit.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i" ], [ %9, %bb14.loopexit.i.i.i ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i" ], [ %_15.i.i.i.lcssa, %bb14.loopexit.i.i.i ]
  %_17.not.i.i.i = icmp eq i32 %n, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit, label %bb4.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader.new
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader.new ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i.i ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1644
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store i32 1, ptr %_15.i.i.i, align 4, !noalias !1644
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store i32 1, ptr %_15.i.i.i.1, align 4, !noalias !1644
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store i32 1, ptr %_15.i.i.i.2, align 4, !noalias !1644
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store i32 1, ptr %_15.i.i.i.3, align 4, !noalias !1644
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store i32 1, ptr %_15.i.i.i.4, align 4, !noalias !1644
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store i32 1, ptr %_15.i.i.i.5, align 4, !noalias !1644
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store i32 1, ptr %_15.i.i.i.6, align 4, !noalias !1644
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1644
  %10 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit

_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %10, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %lt, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %lt, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %lt, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %_0.i.i.i85 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i85, label %bb9.preheader.split, label %bb28.preheader

cleanup:                                          ; preds = %panic.i.i41.invoke, %bb9.preheader.1
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lt, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb9.preheader.split:                              ; preds = %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit
  %_19 = fcmp ogt float %2, %1
  br i1 %_19, label %bb17, label %bb26

bb28.preheader:                                   ; preds = %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit
  %_0.i.i.i1890.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i1890.not, label %bb31, label %bb30.lr.ph

bb30.lr.ph:                                       ; preds = %bb26, %bb28.preheader
  %len.i = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !noundef !37
  %_6.i = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !nonnull !37
  %12 = add nsw i64 %_4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %len.i, i64 %12)
  %.not.not = icmp ugt i64 %len.i, %12
  br label %bb30

bb30:                                             ; preds = %bb30.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit"
  %spec.select6794 = phi i64 [ 1, %bb30.lr.ph ], [ %spec.select67, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit" ]
  %max_len.sroa.0.093 = phi i32 [ 0, %bb30.lr.ph ], [ %spec.select71, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit" ]
  %iter2.sroa.0.092 = phi i64 [ 0, %bb30.lr.ph ], [ %spec.select6794, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit" ]
  br i1 %.not.not, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit", label %panic.i.i41.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit": ; preds = %bb30
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %iter2.sroa.0.092
  %_49 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %spec.select71 = tail call i32 @llvm.smax.i32(i32 %max_len.sroa.0.093, i32 %_49)
  %_0.i.i.i18 = icmp ult i64 %spec.select6794, %_4
  %_0.i1.i.i21 = zext i1 %_0.i.i.i18 to i64
  %spec.select67 = add nuw i64 %spec.select6794, %_0.i1.i.i21
  br i1 %_0.i.i.i18, label %bb30, label %bb31

bb31:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit", %bb28.preheader
  %max_len.sroa.0.0.lcssa = phi i32 [ 0, %bb28.preheader ], [ %spec.select71, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit" ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lt, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lt)
  ret i32 %max_len.sroa.0.0.lcssa

unreachable:                                      ; preds = %bb9.preheader.1
  unreachable

bb26:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit45", %bb17, %bb21, %bb9.preheader.split
  %cond = icmp eq i32 %n, 2
  br i1 %cond, label %bb30.lr.ph, label %bb9.preheader.1

bb9.preheader.1:                                  ; preds = %bb26
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c6aeff43c0c2d682ac0408d77489e1b3) #26
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb9.preheader.split
  %_26 = fadd float %2, %1
  %_25 = frem float %_26, 2.000000e+00
  %_24 = fcmp une float %_25, 0.000000e+00
  br i1 %_24, label %bb18, label %bb26

bb18:                                             ; preds = %bb17
  %len.i39 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i40 = icmp ugt i64 %len.i39, 1
  br i1 %_4.i.i40, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit45", label %panic.i.i41.invoke

panic.i.i41.invoke:                               ; preds = %bb18, %bb30
  %13 = phi i64 [ %umin, %bb30 ], [ 1, %bb18 ]
  %14 = phi i64 [ %len.i, %bb30 ], [ %len.i39, %bb18 ]
  %15 = phi ptr [ @alloc_fba2231dfd0dc522d7f72e0649a12fdd, %bb30 ], [ @alloc_135e7c0eecac955dcc614e9018fce069, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef range(i64 0, 2305843009213693952) %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #25
          to label %panic.i.i41.cont unwind label %cleanup

panic.i.i41.cont:                                 ; preds = %panic.i.i41.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit45": ; preds = %bb18
  %_6.i42 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %_0.i.i43 = getelementptr inbounds nuw i8, ptr %_6.i42, i64 4
  %_28 = load i32, ptr %_0.i.i43, align 4, !noundef !37
  %_32 = load i32, ptr %_6.i42, align 4, !noundef !37
  %_31 = add i32 %_32, 1
  %_27 = icmp slt i32 %_28, %_31
  br i1 %_27, label %bb21, label %bb26

bb21:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit45"
  store i32 %_31, ptr %_0.i.i43, align 4
  br label %bb26

terminate:                                        ; preds = %cleanup
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %11
}
