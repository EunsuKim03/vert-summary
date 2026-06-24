define noundef i32 @f_gold(i32 noundef %dist) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count)
  %_4 = sext i32 %dist to i64
  %_3 = add nsw i64 %_4, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h8f79c655405a8948E.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h8f79c655405a8948E.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp ule i64 %_3, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i64 %_3, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h8f79c655405a8948E.exit.i.i"
  %3 = add nsw i64 %_4, -1
  %xtraiter = and i64 %_4, 7
  %4 = icmp ult i64 %3, 7
  br i1 %4, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %_4, -8
  br label %bb13.i.i.i

bb14.i.i.i.loopexit.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %5 = and i32 %dist, 7
  %lcmp.mod.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not, label %bb14.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.i.i.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.i.i.i.loopexit.unr-lcssa ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1644
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1645

bb14.i.i.i:                                       ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h8f79c655405a8948E.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h8f79c655405a8948E.exit.i.i" ], [ %_4, %bb13.i.i.i.epil ], [ %_4, %bb14.i.i.i.loopexit.unr-lcssa ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h8f79c655405a8948E.exit.i.i" ], [ %_15.i.i.i.lcssa.ph, %bb14.i.i.i.loopexit.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %_17.not.i.i.i = icmp eq i64 %_3, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit, label %bb4.i.i.i

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
  br i1 %niter.ncmp.7, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1644
  %6 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit

_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %6, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %count, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %count, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %count, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %storemerge14.i.i.i, 0
  br i1 %_4.i.i.not, label %panic.i.i46.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i46.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %count, i64 noundef 4, i64 noundef 4)
          to label %bb19 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit
  store i32 1, ptr %this.1.i.i.i, align 4
  %len.i3 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, 1
  br i1 %_4.i.i4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit8", label %panic.i.i46.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit8": ; preds = %bb2
  %_6.i6 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i6, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %len.i9 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, 2
  br i1 %_4.i.i10, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit15", label %panic.i.i46.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit15": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit8"
  %_6.i12 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i8, ptr %_6.i12, i64 8
  store i32 2, ptr %_0.i.i13, align 4
  %_0.i.not.i.i79 = icmp slt i32 %dist, 3
  br i1 %_0.i.not.i.i79, label %bb11, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit15"
  %.not = icmp eq i32 %dist, 3
  %iter.sroa.7.185 = zext i1 %.not to i8
  %_0.i3.i.i80.not = icmp eq i32 %dist, 3
  %iter.sroa.0.184 = select i1 %_0.i3.i.i80.not, i32 3, i32 4
  br label %bb10

bb10:                                             ; preds = %bb10.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit50"
  %_0.sroa.3.0.i.i88 = phi i32 [ 3, %bb10.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit50" ]
  %iter.sroa.7.187 = phi i8 [ %iter.sroa.7.185, %bb10.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit50" ]
  %iter.sroa.0.186 = phi i32 [ %iter.sroa.0.184, %bb10.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit50" ]
  %_23 = add i32 %_0.sroa.3.0.i.i88, -1
  %_22 = sext i32 %_23 to i64
  %len.i17 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1656, !noalias !1659, !noundef !37
  %_4.i.i18 = icmp ugt i64 %len.i17, %_22
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit": ; preds = %bb10
  %_6.i20 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1656, !noalias !1659, !nonnull !37, !noundef !37
  %_28 = add i32 %_0.sroa.3.0.i.i88, -2
  %_27 = sext i32 %_28 to i64
  %_4.i.i31 = icmp ugt i64 %len.i17, %_27
  br i1 %_4.i.i31, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit36", label %panic.i.i46.invoke

bb11:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit50", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit15"
  %len.i23 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1661, !noalias !1664, !noundef !37
  %_4.i.i24 = icmp ugt i64 %len.i23, %_4
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit29", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit29": ; preds = %bb11
  %_6.i26 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1661, !noalias !1664, !nonnull !37, !noundef !37
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_4
  %_0 = load i32, ptr %_0.i.i27, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %count, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit36": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit"
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_22
  %_19 = load i32, ptr %_0.i.i21, align 4, !noundef !37
  %_0.i.i34 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_27
  %_24 = load i32, ptr %_0.i.i34, align 4, !noundef !37
  %_18 = add i32 %_24, %_19
  %_33 = add i32 %_0.sroa.3.0.i.i88, -3
  %_32 = sext i32 %_33 to i64
  %_4.i.i38 = icmp ugt i64 %len.i17, %_32
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit43", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit43": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit36"
  %_36 = sext i32 %_0.sroa.3.0.i.i88 to i64
  %_4.i.i45 = icmp ugt i64 %len.i17, %_36
  br i1 %_4.i.i45, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit50", label %panic.i.i46.invoke

panic.i.i46.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit43", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit36", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit", %bb10, %_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit, %bb11, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit8", %bb2
  %8 = phi i64 [ 1, %bb2 ], [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit8" ], [ %_4, %bb11 ], [ 0, %_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit43" ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit36" ], [ %_27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit" ], [ %_22, %bb10 ]
  %9 = phi i64 [ %len.i3, %bb2 ], [ %len.i9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit8" ], [ %len.i23, %bb11 ], [ %storemerge14.i.i.i, %_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit ], [ %len.i17, %bb10 ], [ %len.i17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit" ], [ %len.i17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit36" ], [ %len.i17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit43" ]
  %10 = phi ptr [ @alloc_d281e09a5d92d3d51a9d62fb9a5090a6, %bb2 ], [ @alloc_9d760bb5332ae279a7fcc04c73c3ab59, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit8" ], [ @alloc_ae0436a8a03dba606f6a948305022b70, %bb11 ], [ @alloc_a9055964c0dc76bdbc9f31c5f47fadbf, %_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE.exit ], [ @alloc_e14f4e5232a6b2544ab73ca9418b6225, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit43" ], [ @alloc_b42a0850d058b893e991cd82ce90aebe, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit36" ], [ @alloc_687943ff8a4efddeeedbbcccc7f4697f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit" ], [ @alloc_af1cb943c84e539b189e3e216142db84, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.i.i46.cont unwind label %cleanup

panic.i.i46.cont:                                 ; preds = %panic.i.i46.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE.exit43"
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_32
  %_29 = load i32, ptr %_0.i.i41, align 4, !noundef !37
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_36
  %11 = add i32 %_18, %_29
  store i32 %11, ptr %_0.i.i48, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.187 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.186, %dist
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.186, %dist
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.186, %spec.select
  %12 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %12, i8 %iter.sroa.7.187, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.186
  br i1 %or.cond, label %bb11, label %bb10

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb19:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
