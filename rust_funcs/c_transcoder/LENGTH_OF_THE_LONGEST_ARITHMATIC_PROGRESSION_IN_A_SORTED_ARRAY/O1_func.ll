define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %L = alloca [24 x i8], align 8
  %set = alloca [8 x i8], align 8
  store i64 %0, ptr %set, align 8
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb52, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %L)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %_6 = zext nneg i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_6, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %1 = trunc nuw i64 %_5.i.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1681, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %1, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i", !prof !1036

bb3.i.i.i:                                        ; preds = %bb2
  %err.1.i.i.i = load i64, ptr %3, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #28, !noalias !1681
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i": ; preds = %bb2
  %this.1.i.i.i = load ptr, ptr %3, align 8, !noalias !1681, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp samesign uge i64 %err.0.i.i.i, %_6
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
  %4 = add nsw i64 %_6, -1
  %xtraiter = and i64 %4, 7
  %5 = add nsw i32 %n, -2
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %bb4.i.i.i.unr-lcssa, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i.new"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i.new": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i"
  %unroll_iter = and i64 %4, -8
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i.new"
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i.new" ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i.new" ], [ %niter.next.7, %bb13.i.i.i ]
  store i32 2, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1681
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store i32 2, ptr %_15.i.i.i, align 4, !noalias !1681
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store i32 2, ptr %_15.i.i.i.1, align 4, !noalias !1681
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store i32 2, ptr %_15.i.i.i.2, align 4, !noalias !1681
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store i32 2, ptr %_15.i.i.i.3, align 4, !noalias !1681
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store i32 2, ptr %_15.i.i.i.4, align 4, !noalias !1681
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store i32 2, ptr %_15.i.i.i.5, align 4, !noalias !1681
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store i32 2, ptr %_15.i.i.i.6, align 4, !noalias !1681
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb4.i.i.i.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i.unr-lcssa:                              ; preds = %bb13.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i"
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i" ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf57a277725d6e0adE.exit.i.i" ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb4.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb4.i.i.i.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb4.i.i.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb4.i.i.i.unr-lcssa ]
  store i32 2, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1681
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb4.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1682

bb4.i.i.i:                                        ; preds = %bb13.i.i.i.epil, %bb4.i.i.i.unr-lcssa
  %_15.i.i.i.lcssa = phi ptr [ %_15.i.i.i.lcssa.ph, %bb4.i.i.i.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  store i32 2, ptr %_15.i.i.i.lcssa, align 4, !noalias !1681
  store i64 %err.0.i.i.i, ptr %_5, align 8, !alias.scope !1681
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hd7ddbbaff35c728aE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %L, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %7 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %_18 = add nsw i32 %n, -1
  %_17 = zext nneg i32 %_18 to i64
  br label %bb9

cleanup:                                          ; preds = %panic3.invoke, %panic.i.i99.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E"(ptr noalias noundef align 8 dereferenceable(24) %L) #30
          to label %bb54 unwind label %terminate

bb17.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit103"
  %10 = add nsw i32 %n, -1
  %11 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %L, i64 8
  br label %bb17

bb9:                                              ; preds = %bb4.i.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit103"
  %spec.select186 = phi i64 [ 1, %bb4.i.i.i ], [ %spec.select, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit103" ]
  %iter.sroa.0.0185 = phi i64 [ 0, %bb4.i.i.i ], [ %spec.select186, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit103" ]
  %len.i = load i64, ptr %7, align 8, !alias.scope !1683, !noalias !1686, !noundef !15
  %_4.i.i28 = icmp ult i64 %iter.sroa.0.0185, %len.i
  br i1 %_4.i.i28, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit", label %panic.i.i99.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit": ; preds = %bb9
  %_6.i = load ptr, ptr %8, align 8, !alias.scope !1683, !noalias !1686, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %iter.sroa.0.0185
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i97 = load i64, ptr %17, align 8, !alias.scope !1688, !noalias !1691, !noundef !15
  %_4.i.i98 = icmp ugt i64 %len.i97, %_17
  br i1 %_4.i.i98, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit103", label %panic.i.i99.invoke

bb15.loopexit:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit", %bb46.preheader
  %_0.i.i.i.i = icmp sgt i32 %iter1.sroa.4.1200, 2
  %18 = add nsw i32 %iter1.sroa.4.1200, -1
  %iter1.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %18, i32 %iter1.sroa.4.1200
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %18, i32 undef
  br i1 %_0.i.i.i.i, label %bb17, label %bb18

bb17:                                             ; preds = %bb17.lr.ph, %bb15.loopexit
  %_0.sroa.3.0.i.i.i201 = phi i32 [ %10, %bb17.lr.ph ], [ %_0.sroa.3.0.i.i.i, %bb15.loopexit ]
  %iter1.sroa.4.1200 = phi i32 [ %10, %bb17.lr.ph ], [ %iter1.sroa.4.1, %bb15.loopexit ]
  %llap.sroa.0.0199 = phi i32 [ 2, %bb17.lr.ph ], [ %llap.sroa.0.2.lcssa, %bb15.loopexit ]
  %19 = add i32 %_0.sroa.3.0.i.i.i201, -1
  %20 = add i32 %_0.sroa.3.0.i.i.i201, 1
  %_29187 = icmp sgt i32 %19, -1
  %_31.not.not188 = icmp slt i32 %20, %n
  %or.cond189 = and i1 %_29187, %_31.not.not188
  br i1 %or.cond189, label %bb21.lr.ph, label %bb46.preheader

bb21.lr.ph:                                       ; preds = %bb17
  %_46 = sext i32 %_0.sroa.3.0.i.i.i201 to i64
  %_47 = icmp ult i32 %_0.sroa.3.0.i.i.i201, 2
  %21 = getelementptr inbounds nuw i32, ptr %set, i64 %_46
  br label %bb21

bb18:                                             ; preds = %bb15.loopexit
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E"(ptr noalias noundef align 8 dereferenceable(24) %L)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %L)
  br label %bb52

bb52:                                             ; preds = %start, %bb18
  %llap.sroa.0.1 = phi i32 [ %llap.sroa.0.2.lcssa, %bb18 ], [ %n, %start ]
  ret i32 %llap.sroa.0.1

bb46.preheader:                                   ; preds = %bb42, %bb17
  %i.sroa.0.0.lcssa = phi i32 [ %19, %bb17 ], [ %i.sroa.0.2, %bb42 ]
  %llap.sroa.0.2.lcssa = phi i32 [ %llap.sroa.0.0199, %bb17 ], [ %llap.sroa.0.3, %bb42 ]
  %_81194 = icmp sgt i32 %i.sroa.0.0.lcssa, -1
  br i1 %_81194, label %bb47.lr.ph, label %bb15.loopexit

bb47.lr.ph:                                       ; preds = %bb46.preheader
  %_88 = sext i32 %_0.sroa.3.0.i.i.i201 to i64
  %22 = zext nneg i32 %i.sroa.0.0.lcssa to i64
  br label %bb47

bb21:                                             ; preds = %bb21.lr.ph, %bb42
  %k.sroa.0.0192 = phi i32 [ %20, %bb21.lr.ph ], [ %k.sroa.0.1, %bb42 ]
  %llap.sroa.0.2191 = phi i32 [ %llap.sroa.0.0199, %bb21.lr.ph ], [ %llap.sroa.0.3, %bb42 ]
  %i.sroa.0.0190 = phi i32 [ %19, %bb21.lr.ph ], [ %i.sroa.0.2, %bb42 ]
  %_37 = zext nneg i32 %i.sroa.0.0190 to i64
  %_39 = icmp ult i32 %i.sroa.0.0190, 2
  br i1 %_39, label %bb22, label %panic3.invoke

bb47:                                             ; preds = %bb47.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit"
  %indvars.iv = phi i64 [ %22, %bb47.lr.ph ], [ %indvars.iv.next, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit" ]
  %len.i30 = load i64, ptr %15, align 8, !alias.scope !1693, !noalias !1696, !noundef !15
  %_4.i.i31 = icmp ugt i64 %len.i30, %indvars.iv
  br i1 %_4.i.i31, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit36", label %panic.i.i99.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit36": ; preds = %bb47
  %_6.i33 = load ptr, ptr %16, align 8, !alias.scope !1693, !noalias !1696, !nonnull !15, !noundef !15
  %_0.i.i34 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i33, i64 %indvars.iv
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i34, i64 16
  %len.i37 = load i64, ptr %23, align 8, !alias.scope !1698, !noalias !1701, !noundef !15
  %_4.i.i38 = icmp ugt i64 %len.i37, %_88
  br i1 %_4.i.i38, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit", label %panic.i.i99.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit36"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i34, i64 8
  %_6.i40 = load ptr, ptr %24, align 8, !alias.scope !1698, !noalias !1701, !nonnull !15, !noundef !15
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i40, i64 %_88
  store i32 2, ptr %_0.i.i41, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %_81 = icmp sgt i64 %indvars.iv, 0
  br i1 %_81, label %bb47, label %bb15.loopexit

bb22:                                             ; preds = %bb21
  %_41 = sext i32 %k.sroa.0.0192 to i64
  %_43 = icmp ult i32 %k.sroa.0.0192, 2
  br i1 %_43, label %bb23, label %panic3.invoke

bb23:                                             ; preds = %bb22
  %25 = getelementptr inbounds nuw i32, ptr %set, i64 %_37
  %_36 = load i32, ptr %25, align 4, !noundef !15
  %26 = getelementptr inbounds nuw i32, ptr %set, i64 %_41
  %_40 = load i32, ptr %26, align 4, !noundef !15
  %_35 = add i32 %_40, %_36
  br i1 %_47, label %bb24, label %panic3.invoke

bb24:                                             ; preds = %bb23
  %_45 = load i32, ptr %21, align 4, !noundef !15
  %_44 = shl i32 %_45, 1
  %_34 = icmp slt i32 %_35, %_44
  br i1 %_34, label %bb25, label %bb29

panic3.invoke:                                    ; preds = %bb23, %bb22, %bb21
  %27 = phi i64 [ %_37, %bb21 ], [ %_41, %bb22 ], [ %_46, %bb23 ]
  %28 = phi ptr [ @alloc_dfeefaf8b2ab45fb9de75fe5c610fb3f, %bb21 ], [ @alloc_6f51ea75f6465892bb31df86ea9ef009, %bb22 ], [ @alloc_f0e795fa0dda43f96cfd00acdf099f9f, %bb23 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %27, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %28) #28
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb25:                                             ; preds = %bb24
  %29 = add nuw nsw i32 %k.sroa.0.0192, 1
  br label %bb42

bb29:                                             ; preds = %bb24
  %_48 = icmp sgt i32 %_35, %_44
  br i1 %_48, label %bb30, label %bb33

bb33:                                             ; preds = %bb29
  %len.i43 = load i64, ptr %11, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i44 = icmp samesign ugt i64 %len.i43, %_46
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit", label %panic.i.i99.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit": ; preds = %bb33
  %_6.i46 = load ptr, ptr %12, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i47 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i46, i64 %_46
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i47, i64 16
  %len.i56 = load i64, ptr %30, align 8, !alias.scope !1708, !noalias !1711, !noundef !15
  %_4.i.i57 = icmp samesign ugt i64 %len.i56, %_41
  br i1 %_4.i.i57, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit", label %panic.i.i99.invoke

bb30:                                             ; preds = %bb29
  %len.i49 = load i64, ptr %13, align 8, !alias.scope !1713, !noalias !1716, !noundef !15
  %_4.i.i50 = icmp ugt i64 %len.i49, %_37
  br i1 %_4.i.i50, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit55", label %panic.i.i99.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit55": ; preds = %bb30
  %_6.i52 = load ptr, ptr %14, align 8, !alias.scope !1713, !noalias !1716, !nonnull !15, !noundef !15
  %_0.i.i53 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i52, i64 %_37
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i53, i64 16
  %len.i90 = load i64, ptr %31, align 8, !alias.scope !1718, !noalias !1721, !noundef !15
  %_4.i.i91 = icmp ugt i64 %len.i90, %_46
  br i1 %_4.i.i91, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit96", label %panic.i.i99.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit"
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i47, i64 8
  %_6.i59 = load ptr, ptr %32, align 8, !alias.scope !1708, !noalias !1711, !nonnull !15, !noundef !15
  %_0.i.i60 = getelementptr inbounds nuw i32, ptr %_6.i59, i64 %_41
  %_63 = load i32, ptr %_0.i.i60, align 4, !noundef !15
  %_4.i.i63 = icmp ugt i64 %len.i43, %_37
  br i1 %_4.i.i63, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit68", label %panic.i.i99.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit68": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit"
  %_0.i.i66 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i46, i64 %_37
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 16
  %len.i69 = load i64, ptr %33, align 8, !alias.scope !1723, !noalias !1726, !noundef !15
  %_4.i.i70 = icmp ugt i64 %len.i69, %_46
  br i1 %_4.i.i70, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit75", label %panic.i.i99.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit75": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit68"
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 8
  %_6.i72 = load ptr, ptr %34, align 8, !alias.scope !1723, !noalias !1726, !nonnull !15, !noundef !15
  %_0.i.i73 = getelementptr inbounds nuw i32, ptr %_6.i72, i64 %_46
  %35 = add i32 %_63, 1
  store i32 %35, ptr %_0.i.i73, align 4
  %len.i76 = load i64, ptr %11, align 8, !alias.scope !1728, !noalias !1731, !noundef !15
  %_4.i.i77 = icmp samesign ugt i64 %len.i76, %_37
  br i1 %_4.i.i77, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit82", label %panic.i.i99.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit82": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit75"
  %_6.i79 = load ptr, ptr %12, align 8, !alias.scope !1728, !noalias !1731, !nonnull !15, !noundef !15
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i79, i64 %_37
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i83 = load i64, ptr %36, align 8, !alias.scope !1733, !noalias !1736, !noundef !15
  %_4.i.i84 = icmp samesign ugt i64 %len.i83, %_46
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit89", label %panic.i.i99.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit89": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit82"
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i86 = load ptr, ptr %37, align 8, !alias.scope !1733, !noalias !1736, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_46
  %_75 = load i32, ptr %_0.i.i87, align 4, !noundef !15
  %x.y.i = call noundef i32 @llvm.smax.i32(i32 %llap.sroa.0.2191, i32 %_75)
  %38 = add nsw i32 %i.sroa.0.0190, -1
  %39 = add nuw nsw i32 %k.sroa.0.0192, 1
  br label %bb42

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit96": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit55"
  %40 = getelementptr inbounds nuw i8, ptr %_0.i.i53, i64 8
  %_6.i93 = load ptr, ptr %40, align 8, !alias.scope !1718, !noalias !1721, !nonnull !15, !noundef !15
  %_0.i.i94 = getelementptr inbounds nuw i32, ptr %_6.i93, i64 %_46
  store i32 2, ptr %_0.i.i94, align 4
  %41 = add nsw i32 %i.sroa.0.0190, -1
  br label %bb42

bb42:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit89", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit96", %bb25
  %i.sroa.0.2 = phi i32 [ %i.sroa.0.0190, %bb25 ], [ %41, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit96" ], [ %38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit89" ]
  %llap.sroa.0.3 = phi i32 [ %llap.sroa.0.2191, %bb25 ], [ %llap.sroa.0.2191, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit96" ], [ %x.y.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit89" ]
  %k.sroa.0.1 = phi i32 [ %29, %bb25 ], [ %k.sroa.0.0192, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit96" ], [ %39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit89" ]
  %_29 = icmp sgt i32 %i.sroa.0.2, -1
  %_31.not.not = icmp slt i32 %k.sroa.0.1, %n
  %or.cond = select i1 %_29, i1 %_31.not.not, i1 false
  br i1 %or.cond, label %bb21, label %bb46.preheader

panic.i.i99.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit", %bb9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit55", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit82", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit75", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit68", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit", %bb30, %bb33, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit36", %bb47
  %42 = phi i64 [ %_88, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit36" ], [ %indvars.iv, %bb47 ], [ %_46, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit55" ], [ %_46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit82" ], [ %_37, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit75" ], [ %_46, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit68" ], [ %_37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit" ], [ %_41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit" ], [ %_37, %bb30 ], [ %_46, %bb33 ], [ %_17, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit" ], [ %iter.sroa.0.0185, %bb9 ]
  %43 = phi i64 [ %len.i37, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit36" ], [ %len.i30, %bb47 ], [ %len.i90, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit55" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit82" ], [ %len.i76, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit75" ], [ %len.i69, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit68" ], [ %len.i43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit" ], [ %len.i56, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit" ], [ %len.i49, %bb30 ], [ %len.i43, %bb33 ], [ %len.i97, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit" ], [ %len.i, %bb9 ]
  %44 = phi ptr [ @alloc_445e0d2130c8479e1ffcac3db29a4f65, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit36" ], [ @alloc_4f6de02c9f4a796469218c905d326f44, %bb47 ], [ @alloc_bb283316aef1fba55ea1daaeeeadf92f, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit55" ], [ @alloc_a9a381c48fe7cf3ab2005754fe7bcda7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit82" ], [ @alloc_f45b891ab27fe71acc1b47f1255089b3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit75" ], [ @alloc_a4c1e5a2475b1d45d020028d996d5972, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit68" ], [ @alloc_065f65d4f73f0494ec0d885e8858f9ce, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E.exit" ], [ @alloc_b2295a6757e166c9cabb68ed0c8b197a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E.exit" ], [ @alloc_0720980fb5807a00cb4b18c4db7885e3, %bb30 ], [ @alloc_c45e8ff3f32919e3472dd8835d22df64, %bb33 ], [ @alloc_fcadf39929066068fe1c92547fe100e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit" ], [ @alloc_7e65c5552f175f9e5b53701ea20751e2, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %42, i64 noundef range(i64 0, 2305843009213693952) %43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %44) #27
          to label %panic.i.i99.cont unwind label %cleanup

panic.i.i99.cont:                                 ; preds = %panic.i.i99.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE.exit103": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E.exit"
  %45 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i100 = load ptr, ptr %45, align 8, !alias.scope !1688, !noalias !1691, !nonnull !15, !noundef !15
  %_0.i.i101 = getelementptr inbounds nuw i32, ptr %_6.i100, i64 %_17
  store i32 2, ptr %_0.i.i101, align 4
  %_0.i.i.i = icmp ult i64 %spec.select186, %_6
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select186, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9, label %bb17.lr.ph

terminate:                                        ; preds = %cleanup
  %46 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb54:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
