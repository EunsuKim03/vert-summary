define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_5 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_5, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h70a3baa5c3a2dc60E.exit.i.i", !prof !1036

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #28, !noalias !1681
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h70a3baa5c3a2dc60E.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp uge i64 %err.0.i.i.i, %_5
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
  %_2415.i.i.i = icmp ugt i32 %n, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h70a3baa5c3a2dc60E.exit.i.i"
  %3 = add nsw i64 %_5, -1
  %4 = add nsw i64 %_5, -2
  %xtraiter = and i64 %3, 7
  %5 = icmp ult i64 %4, 7
  br i1 %5, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %3, -8
  br label %bb13.i.i.i

bb14.loopexit.i.i.i.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.loopexit.i.i.i.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.loopexit.i.i.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.loopexit.i.i.i.unr-lcssa ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1681
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1682

bb14.loopexit.i.i.i:                              ; preds = %bb13.i.i.i.epil, %bb14.loopexit.i.i.i.unr-lcssa
  %_15.i.i.i.lcssa = phi ptr [ %_15.i.i.i.lcssa.ph, %bb14.loopexit.i.i.i.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %6 = add nsw i64 %_5, -1
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb14.loopexit.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h70a3baa5c3a2dc60E.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h70a3baa5c3a2dc60E.exit.i.i" ], [ %6, %bb14.loopexit.i.i.i ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h70a3baa5c3a2dc60E.exit.i.i" ], [ %_15.i.i.i.lcssa, %bb14.loopexit.i.i.i ]
  %_17.not.i.i.i = icmp eq i32 %n, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit, label %bb4.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader.new
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader.new ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i.i ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1681
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store i32 1, ptr %_15.i.i.i, align 4, !noalias !1681
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store i32 1, ptr %_15.i.i.i.1, align 4, !noalias !1681
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store i32 1, ptr %_15.i.i.i.2, align 4, !noalias !1681
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store i32 1, ptr %_15.i.i.i.3, align 4, !noalias !1681
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store i32 1, ptr %_15.i.i.i.4, align 4, !noalias !1681
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store i32 1, ptr %_15.i.i.i.5, align 4, !noalias !1681
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store i32 1, ptr %_15.i.i.i.6, align 4, !noalias !1681
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1681
  %7 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit

_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %7, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %_4, align 8, !alias.scope !1681
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %_6 = sext i32 %m to i64
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %count, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %_0.i.i.i84 = icmp sgt i32 %m, 1
  br i1 %_0.i.i.i84, label %bb10.preheader.lr.ph, label %bb8

bb10.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit
  %_0.i.i.i1580 = icmp sgt i32 %n, 1
  %spec.select6081 = select i1 %_0.i.i.i1580, i32 2, i32 1
  %8 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %wide.trip.count = zext nneg i32 %m to i64
  br label %bb10.preheader

cleanup:                                          ; preds = %panic.i.i55.invoke
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %count) #30
          to label %bb24 unwind label %terminate

bb4.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit", %bb10.preheader
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count
  br i1 %exitcond.not, label %bb8, label %bb10.preheader

bb10.preheader:                                   ; preds = %bb10.preheader.lr.ph, %bb4.loopexit
  %indvars.iv113 = phi i64 [ 1, %bb10.preheader.lr.ph ], [ %indvars.iv.next114, %bb4.loopexit ]
  br i1 %_0.i.i.i1580, label %bb12.lr.ph, label %bb4.loopexit

bb12.lr.ph:                                       ; preds = %bb10.preheader
  %11 = add nsw i64 %indvars.iv113, -1
  br label %bb12

bb8:                                              ; preds = %bb4.loopexit, %_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit
  %_42 = add i32 %m, -1
  %_41 = sext i32 %_42 to i64
  %12 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %len.i = load i64, ptr %12, align 8, !alias.scope !1683, !noalias !1686, !noundef !15
  %_4.i.i5 = icmp ugt i64 %len.i, %_41
  br i1 %_4.i.i5, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit", label %panic.i.i55.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit": ; preds = %bb8
  %13 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_6.i = load ptr, ptr %13, align 8, !alias.scope !1683, !noalias !1686, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_41
  %_44 = add i32 %n, -1
  %_43 = sext i32 %_44 to i64
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i6 = load i64, ptr %14, align 8, !alias.scope !1688, !noalias !1691, !noundef !15
  %_4.i.i7 = icmp ugt i64 %len.i6, %_43
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit", label %panic.i.i55.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit"
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i9 = load ptr, ptr %15, align 8, !alias.scope !1688, !noalias !1691, !nonnull !15, !noundef !15
  %_0.i.i10 = getelementptr inbounds nuw i32, ptr %_6.i9, i64 %_43
  %_0 = load i32, ptr %_0.i.i10, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %count)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count)
  ret i32 %_0

bb12:                                             ; preds = %bb12.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit"
  %spec.select6083 = phi i32 [ %spec.select6081, %bb12.lr.ph ], [ %spec.select60, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit" ]
  %iter1.sroa.0.082 = phi i32 [ 1, %bb12.lr.ph ], [ %spec.select6083, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit" ]
  %len.i19 = load i64, ptr %8, align 8, !alias.scope !1693, !noalias !1696, !noundef !15
  %_4.i.i20 = icmp ugt i64 %len.i19, %11
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit25", label %panic.i.i55.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit25": ; preds = %bb12
  %_6.i22 = load ptr, ptr %9, align 8, !alias.scope !1693, !noalias !1696, !nonnull !15, !noundef !15
  %_0.i.i23 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i22, i64 %11
  %_27 = zext nneg i32 %iter1.sroa.0.082 to i64
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i23, i64 16
  %len.i26 = load i64, ptr %16, align 8, !alias.scope !1698, !noalias !1701, !noundef !15
  %_4.i.i27 = icmp ugt i64 %len.i26, %_27
  br i1 %_4.i.i27, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit32", label %panic.i.i55.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit32": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit25"
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i23, i64 8
  %_6.i29 = load ptr, ptr %17, align 8, !alias.scope !1698, !noalias !1701, !nonnull !15, !noundef !15
  %_0.i.i30 = getelementptr inbounds nuw i32, ptr %_6.i29, i64 %_27
  %_21 = load i32, ptr %_0.i.i30, align 4, !noundef !15
  %_4.i.i34 = icmp ugt i64 %len.i19, %indvars.iv113
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit39", label %panic.i.i55.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit39": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit32"
  %_0.i.i37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i22, i64 %indvars.iv113
  %_34 = add nsw i32 %iter1.sroa.0.082, -1
  %_33 = sext i32 %_34 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i37, i64 16
  %len.i40 = load i64, ptr %18, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i41 = icmp ugt i64 %len.i40, %_33
  br i1 %_4.i.i41, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit46", label %panic.i.i55.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit46": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit39"
  %_4.i.i54 = icmp ugt i64 %len.i40, %_27
  br i1 %_4.i.i54, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit", label %panic.i.i55.invoke

panic.i.i55.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit46", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit39", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit32", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit25", %bb12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit", %bb8
  %19 = phi i64 [ %_41, %bb8 ], [ %_43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit" ], [ %_27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit46" ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit39" ], [ %indvars.iv113, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit32" ], [ %_27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit25" ], [ %11, %bb12 ]
  %20 = phi i64 [ %len.i, %bb8 ], [ %len.i6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit" ], [ %len.i40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit46" ], [ %len.i40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit39" ], [ %len.i19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit32" ], [ %len.i26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit25" ], [ %len.i19, %bb12 ]
  %21 = phi ptr [ @alloc_add54dea945342527bc80369af396a12, %bb8 ], [ @alloc_aedb19f93eeb283b4fb08880906cd229, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit" ], [ @alloc_572c6fcd34bbdc3470df4441d363f0a1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit46" ], [ @alloc_3e854e26426e5ea82ea80d0e237f8475, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit39" ], [ @alloc_54704b5798d23eb0eec56d9d623f3625, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit32" ], [ @alloc_12d417564cad6aac1a021013ffd3a8da, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit25" ], [ @alloc_b1c5fb87344d527737e7502755d2cdb6, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %19, i64 noundef range(i64 0, 2305843009213693952) %20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %21) #27
          to label %panic.i.i55.cont unwind label %cleanup

panic.i.i55.cont:                                 ; preds = %panic.i.i55.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit46"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i37, i64 8
  %_6.i43 = load ptr, ptr %22, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i44 = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_33
  %_28 = load i32, ptr %_0.i.i44, align 4, !noundef !15
  %_0.i.i57 = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_27
  %23 = add i32 %_28, %_21
  store i32 %23, ptr %_0.i.i57, align 4
  %_0.i.i.i15 = icmp slt i32 %spec.select6083, %n
  %24 = zext i1 %_0.i.i.i15 to i32
  %spec.select60 = add nuw nsw i32 %spec.select6083, %24
  br i1 %_0.i.i.i15, label %bb12, label %bb4.loopexit

terminate:                                        ; preds = %cleanup
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb24:                                             ; preds = %cleanup
  resume { ptr, i32 } %10
}
