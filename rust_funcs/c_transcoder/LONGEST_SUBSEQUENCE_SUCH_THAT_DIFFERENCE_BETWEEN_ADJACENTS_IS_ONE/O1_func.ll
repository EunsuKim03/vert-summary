define noundef range(i32 1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_5.i.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %1, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h89fe5eaab77ced97E.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h89fe5eaab77ced97E.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp uge i64 %err.0.i.i.i, %_4
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i32 %n, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h89fe5eaab77ced97E.exit.i.i"
  %4 = add nsw i64 %_4, -1
  %5 = add nsw i64 %_4, -2
  %xtraiter = and i64 %4, 7
  %6 = icmp ult i64 %5, 7
  br i1 %6, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %4, -8
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
  %7 = add nsw i64 %_4, -1
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb14.loopexit.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h89fe5eaab77ced97E.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h89fe5eaab77ced97E.exit.i.i" ], [ %7, %bb14.loopexit.i.i.i ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h89fe5eaab77ced97E.exit.i.i" ], [ %_15.i.i.i.lcssa, %bb14.loopexit.i.i.i ]
  %_17.not.i.i.i = icmp eq i32 %n, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h824d97e2df7fcc48E.exit, label %bb4.i.i.i

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
  %8 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h824d97e2df7fcc48E.exit

_ZN5alloc3vec9from_elem17h824d97e2df7fcc48E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %8, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %dp, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %_0.i.i.i79 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i79, label %bb9.preheader.split, label %bb28.preheader

cleanup:                                          ; preds = %panic.i.i41.invoke, %bb9.preheader.1
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb9.preheader.split:                              ; preds = %_ZN5alloc3vec9from_elem17h824d97e2df7fcc48E.exit
  %_22 = add i32 %arr.sroa.0.0.extract.trunc, 1
  %_19 = icmp eq i32 %_22, %arr.sroa.3.0.extract.trunc
  %_26 = add i32 %arr.sroa.0.0.extract.trunc, -1
  %_25 = icmp eq i32 %_26, %arr.sroa.3.0.extract.trunc
  %or.cond = or i1 %_19, %_25
  br i1 %or.cond, label %bb20, label %bb26

bb28.preheader:                                   ; preds = %_ZN5alloc3vec9from_elem17h824d97e2df7fcc48E.exit
  %_0.i.i.i1884.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i1884.not, label %bb31, label %bb30.lr.ph

bb30.lr.ph:                                       ; preds = %bb26, %bb28.preheader
  %len.i = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !noundef !37
  %_6.i = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !nonnull !37
  %10 = add nsw i64 %_4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %len.i, i64 %10)
  %.not.not = icmp ugt i64 %len.i, %10
  br label %bb30

bb30:                                             ; preds = %bb30.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit"
  %spec.select6188 = phi i64 [ 1, %bb30.lr.ph ], [ %spec.select61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit" ]
  %result.sroa.0.087 = phi i32 [ 1, %bb30.lr.ph ], [ %spec.select65, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit" ]
  %iter2.sroa.0.086 = phi i64 [ 0, %bb30.lr.ph ], [ %spec.select6188, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit" ]
  br i1 %.not.not, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit", label %panic.i.i41.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit": ; preds = %bb30
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %iter2.sroa.0.086
  %_46 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %spec.select65 = tail call i32 @llvm.smax.i32(i32 %result.sroa.0.087, i32 %_46)
  %_0.i.i.i18 = icmp ult i64 %spec.select6188, %_4
  %_0.i1.i.i21 = zext i1 %_0.i.i.i18 to i64
  %spec.select61 = add nuw i64 %spec.select6188, %_0.i1.i.i21
  br i1 %_0.i.i.i18, label %bb30, label %bb31

bb31:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit", %bb28.preheader
  %result.sroa.0.0.lcssa = phi i32 [ 1, %bb28.preheader ], [ %spec.select65, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit" ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %result.sroa.0.0.lcssa

unreachable:                                      ; preds = %bb9.preheader.1
  unreachable

bb26:                                             ; preds = %bb9.preheader.split, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit52"
  %cond = icmp eq i32 %n, 2
  br i1 %cond, label %bb30.lr.ph, label %bb9.preheader.1

bb9.preheader.1:                                  ; preds = %bb26
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_63030a71be8ad4ff6a16c3e80781f476) #26
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb9.preheader.split
  %len.i39 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i40 = icmp ugt i64 %len.i39, 1
  br i1 %_4.i.i40, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit52", label %panic.i.i41.invoke

panic.i.i41.invoke:                               ; preds = %bb20, %bb30
  %11 = phi i64 [ %umin, %bb30 ], [ 1, %bb20 ]
  %12 = phi i64 [ %len.i, %bb30 ], [ %len.i39, %bb20 ]
  %13 = phi ptr [ @alloc_4c50854920dd692170ef022c65d1cb63, %bb30 ], [ @alloc_b8b2e49487c1fd2b251518861085ca8d, %bb20 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %11, i64 noundef range(i64 0, 2305843009213693952) %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %panic.i.i41.cont unwind label %cleanup

panic.i.i41.cont:                                 ; preds = %panic.i.i41.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E.exit52": ; preds = %bb20
  %_6.i42 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %_0.i.i43 = getelementptr inbounds nuw i8, ptr %_6.i42, i64 4
  %_28 = load i32, ptr %_0.i.i43, align 4, !noundef !37
  %_32 = load i32, ptr %_6.i42, align 4, !noundef !37
  %_31 = add i32 %_32, 1
  %_0.sroa.0.0.i.i53 = tail call noundef i32 @llvm.smax.i32(i32 %_31, i32 %_28)
  store i32 %_0.sroa.0.0.i.i53, ptr %_0.i.i43, align 4
  br label %bb26

terminate:                                        ; preds = %cleanup
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
