define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 1
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
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hab2547e9dd99509eE.exit.i.i", !prof !1036

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #28, !noalias !1681
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hab2547e9dd99509eE.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp ule i64 %_5, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
  %_2415.i.i.i = icmp ugt i64 %_5, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hab2547e9dd99509eE.exit.i.i"
  %3 = add nsw i64 %_6, -1
  %xtraiter = and i64 %_6, 7
  %4 = icmp ult i64 %3, 7
  br i1 %4, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %_6, -8
  br label %bb13.i.i.i

bb14.i.i.i.loopexit.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %5 = and i32 %n, 7
  %lcmp.mod.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not, label %bb14.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.i.i.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.i.i.i.loopexit.unr-lcssa ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1681
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1682

bb14.i.i.i:                                       ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hab2547e9dd99509eE.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hab2547e9dd99509eE.exit.i.i" ], [ %_6, %bb13.i.i.i.epil ], [ %_6, %bb14.i.i.i.loopexit.unr-lcssa ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hab2547e9dd99509eE.exit.i.i" ], [ %_15.i.i.i.lcssa.ph, %bb14.i.i.i.loopexit.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %_17.not.i.i.i = icmp eq i64 %_5, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h9c6a95fe0ef3d10fE.exit, label %bb4.i.i.i

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
  br i1 %niter.ncmp.7, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1681
  %6 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h9c6a95fe0ef3d10fE.exit

_ZN5alloc3vec9from_elem17h9c6a95fe0ef3d10fE.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %6, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %_4, align 8, !alias.scope !1681
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i171 = icmp slt i32 %m, 1
  br i1 %_0.i.not.i.i171, label %bb9, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h9c6a95fe0ef3d10fE.exit
  %.not = icmp eq i32 %m, 1
  %iter.sroa.7.1177 = zext i1 %.not to i8
  %_0.i3.i.i172.not = icmp eq i32 %m, 1
  %iter.sroa.0.1176 = select i1 %_0.i3.i.i172.not, i32 1, i32 2
  %_0.i.not.i.i16161 = icmp slt i32 %n, 1
  %.not181 = icmp eq i32 %n, 1
  %iter1.sroa.7.1167 = zext i1 %.not181 to i8
  %_0.i3.i.i18162.not = icmp eq i32 %n, 1
  %iter1.sroa.0.1166 = select i1 %_0.i3.i.i18162.not, i32 1, i32 2
  br label %bb12.preheader

cleanup:                                          ; preds = %panic.i.i74.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb28 unwind label %terminate

bb5.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E.exit", %bb12.preheader
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1180 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1179, %m
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1179, %m
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1179, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1180, i8 1
  br i1 %or.cond, label %bb9, label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb5.loopexit
  %iter.sroa.7.1180 = phi i8 [ %iter.sroa.7.1177, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1179 = phi i32 [ %iter.sroa.0.1176, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %iter.sroa.0.0178 = phi i32 [ 1, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1179, %bb5.loopexit ]
  %_29 = add nsw i32 %iter.sroa.0.0178, -1
  %_28 = sext i32 %_29 to i64
  %_41 = zext nneg i32 %iter.sroa.0.0178 to i64
  br i1 %_0.i.not.i.i16161, label %bb5.loopexit, label %bb14

bb9:                                              ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h9c6a95fe0ef3d10fE.exit
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %11, align 8, !alias.scope !1683, !noalias !1686, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, %_8
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit": ; preds = %bb9
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %12, align 8, !alias.scope !1683, !noalias !1686, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_8
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i5 = load i64, ptr %13, align 8, !alias.scope !1688, !noalias !1691, !noundef !15
  %_4.i.i6 = icmp ugt i64 %len.i5, %_6
  br i1 %_4.i.i6, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit"
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i8 = load ptr, ptr %14, align 8, !alias.scope !1688, !noalias !1691, !nonnull !15, !noundef !15
  %_0.i.i9 = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_6
  %_0 = load i32, ptr %_0.i.i9, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb14:                                             ; preds = %bb12.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E.exit"
  %_0.sroa.3.0.i.i20170 = phi i32 [ %_0.sroa.3.0.i.i20, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E.exit" ], [ 1, %bb12.preheader ]
  %iter1.sroa.7.1169 = phi i8 [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E.exit" ], [ %iter1.sroa.7.1167, %bb12.preheader ]
  %iter1.sroa.0.1168 = phi i32 [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E.exit" ], [ %iter1.sroa.0.1166, %bb12.preheader ]
  %len.i24 = load i64, ptr %7, align 8, !alias.scope !1693, !noalias !1696, !noundef !15
  %_4.i.i25 = icmp ugt i64 %len.i24, %_28
  br i1 %_4.i.i25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit30", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit30": ; preds = %bb14
  %_6.i27 = load ptr, ptr %8, align 8, !alias.scope !1693, !noalias !1696, !nonnull !15, !noundef !15
  %_0.i.i28 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i27, i64 %_28
  %_30 = sext i32 %_0.sroa.3.0.i.i20170 to i64
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i28, i64 16
  %len.i31 = load i64, ptr %15, align 8, !alias.scope !1698, !noalias !1701, !noundef !15
  %_4.i.i32 = icmp ugt i64 %len.i31, %_30
  br i1 %_4.i.i32, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit37", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit37": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit30"
  %_36 = add i32 %_0.sroa.3.0.i.i20170, -1
  %_35 = sext i32 %_36 to i64
  %_4.i.i46 = icmp ugt i64 %len.i31, %_35
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit51", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit51": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit37"
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i28, i64 8
  %_6.i34 = load ptr, ptr %16, align 8, !alias.scope !1698, !noalias !1701, !nonnull !15, !noundef !15
  %_0.i.i35 = getelementptr inbounds nuw i32, ptr %_6.i34, i64 %_30
  %_24 = load i32, ptr %_0.i.i35, align 4, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i34, i64 %_35
  %_31 = load i32, ptr %_0.i.i49, align 4, !noundef !15
  %_23 = add i32 %_31, %_24
  %_4.i.i53 = icmp ugt i64 %len.i24, %_41
  br i1 %_4.i.i53, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit58", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit58": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit51"
  %_0.i.i56 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i27, i64 %_41
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i56, i64 16
  %len.i59 = load i64, ptr %17, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i60 = icmp ugt i64 %len.i59, %_35
  br i1 %_4.i.i60, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit65", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit65": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit58"
  %_4.i.i73 = icmp ugt i64 %len.i59, %_30
  br i1 %_4.i.i73, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E.exit", label %panic.i.i74.invoke

panic.i.i74.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit65", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit58", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit51", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit37", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit30", %bb14, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit", %bb9
  %18 = phi i64 [ %_8, %bb9 ], [ %_6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit" ], [ %_30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit65" ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit58" ], [ %_41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit51" ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit37" ], [ %_30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit30" ], [ %_28, %bb14 ]
  %19 = phi i64 [ %len.i, %bb9 ], [ %len.i5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit" ], [ %len.i59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit65" ], [ %len.i59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit58" ], [ %len.i24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit51" ], [ %len.i31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit37" ], [ %len.i31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit30" ], [ %len.i24, %bb14 ]
  %20 = phi ptr [ @alloc_3b3a2d4d238febdca0864ee92e15b50a, %bb9 ], [ @alloc_6953d1c9ebd1202663291e973da12335, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit" ], [ @alloc_78c013ee15602f2b0cc3361504c0c1d1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit65" ], [ @alloc_99d9fc95742a32991a4bee3cffac5a68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit58" ], [ @alloc_784fb100adcfb24e8fded27ae2a3779b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit51" ], [ @alloc_f277aa26183d3d7cef94f3575225af8b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit37" ], [ @alloc_0e2862e384e0c398417587de176c7684, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E.exit30" ], [ @alloc_5b40e0c6b06aee87a0b0fd90477ac1ad, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %18, i64 noundef range(i64 0, 2305843009213693952) %19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #27
          to label %panic.i.i74.cont unwind label %cleanup

panic.i.i74.cont:                                 ; preds = %panic.i.i74.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE.exit65"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i56, i64 8
  %_6.i62 = load ptr, ptr %21, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i63 = getelementptr inbounds nuw i32, ptr %_6.i62, i64 %_35
  %_37 = load i32, ptr %_0.i.i63, align 4, !noundef !15
  %_0.i.i76 = getelementptr inbounds nuw i32, ptr %_6.i62, i64 %_30
  %22 = add i32 %_23, %_37
  store i32 %22, ptr %_0.i.i76, align 4
  %_10.i.i11 = trunc nuw i8 %iter1.sroa.7.1169 to i1
  %_0.i.not.i.i16 = icmp sgt i32 %iter1.sroa.0.1168, %n
  %or.cond81 = select i1 %_10.i.i11, i1 true, i1 %_0.i.not.i.i16
  %_0.i3.i.i18 = icmp slt i32 %iter1.sroa.0.1168, %n
  %not.or.cond81 = xor i1 %or.cond81, true
  %narrow133 = select i1 %not.or.cond81, i1 %_0.i3.i.i18, i1 false
  %spec.select79 = zext i1 %narrow133 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1168, %spec.select79
  %23 = select i1 %or.cond81, i1 true, i1 %_0.i3.i.i18
  %iter1.sroa.7.1 = select i1 %23, i8 %iter1.sroa.7.1169, i8 1
  %_0.sroa.3.0.i.i20 = select i1 %_10.i.i11, i32 undef, i32 %iter1.sroa.0.1168
  br i1 %or.cond81, label %bb5.loopexit, label %bb14

terminate:                                        ; preds = %cleanup
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb28:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
