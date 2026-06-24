define noundef i32 @f_gold(i32 noundef %f, i32 noundef %d, i32 noundef %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %mem = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mem)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %_7 = sext i32 %s to i64
  %_6 = add nsw i64 %_7, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %4, align 8, !alias.scope !1681
  %_9 = sext i32 %d to i64
  %_8 = add nsw i64 %_9, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %mem, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %5 = getelementptr inbounds nuw i8, ptr %mem, i64 16
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i98.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit": ; preds = %_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E.exit
  %6 = getelementptr inbounds nuw i8, ptr %mem, i64 8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %7 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i4 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i5.not = icmp eq i64 %len.i4, 0
  br i1 %_4.i.i5.not, label %panic.i.i98.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit"

cleanup:                                          ; preds = %panic.i.i98.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E"(ptr noalias noundef align 8 dereferenceable(24) %mem) #30
          to label %bb34 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit"
  %9 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i7 = load ptr, ptr %9, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  store i32 1, ptr %_6.i7, align 4
  %10 = xor i32 %f, -1
  %_0.i.not.i.i278 = icmp slt i32 %d, 1
  br i1 %_0.i.not.i.i278, label %bb11, label %bb14.preheader.lr.ph

bb14.preheader.lr.ph:                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit"
  %.not = icmp eq i32 %d, 1
  %iter.sroa.7.1284 = zext i1 %.not to i8
  %_0.i3.i.i279.not = icmp eq i32 %d, 1
  %iter.sroa.0.1283 = select i1 %_0.i3.i.i279.not, i32 1, i32 2
  br label %bb14.preheader

bb7.loopexit:                                     ; preds = %bb29, %bb14.preheader
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1287 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1286, %d
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1286, %d
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1286, %spec.select
  %11 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %11, i8 %iter.sroa.7.1287, i8 1
  br i1 %or.cond, label %bb11, label %bb14.preheader

bb14.preheader:                                   ; preds = %bb14.preheader.lr.ph, %bb7.loopexit
  %iter.sroa.7.1287 = phi i8 [ %iter.sroa.7.1284, %bb14.preheader.lr.ph ], [ %iter.sroa.7.1, %bb7.loopexit ]
  %iter.sroa.0.1286 = phi i32 [ %iter.sroa.0.1283, %bb14.preheader.lr.ph ], [ %iter.sroa.0.1, %bb7.loopexit ]
  %iter.sroa.0.0285 = phi i32 [ 1, %bb14.preheader.lr.ph ], [ %iter.sroa.0.1286, %bb7.loopexit ]
  %_31 = zext nneg i32 %iter.sroa.0.0285 to i64
  %_39 = add nsw i32 %iter.sroa.0.0285, -1
  %_38 = sext i32 %_39 to i64
  %_0.i.not.i.i25268 = icmp sgt i32 %iter.sroa.0.0285, %s
  br i1 %_0.i.not.i.i25268, label %bb7.loopexit, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb14.preheader
  %.not288 = icmp eq i32 %iter.sroa.0.0285, %s
  %iter1.sroa.7.1274 = zext i1 %.not288 to i8
  %_0.i3.i.i27269 = icmp slt i32 %iter.sroa.0.0285, %s
  %spec.select104272 = zext i1 %_0.i3.i.i27269 to i32
  %iter1.sroa.0.1273 = add nuw nsw i32 %iter.sroa.0.0285, %spec.select104272
  br label %bb16

bb11:                                             ; preds = %bb7.loopexit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit"
  %len.i9 = load i64, ptr %5, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i10 = icmp ugt i64 %len.i9, %_9
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit": ; preds = %bb11
  %_6.i12 = load ptr, ptr %6, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i12, i64 %_9
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i14 = load i64, ptr %12, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i15 = icmp ugt i64 %len.i14, %_7
  br i1 %_4.i.i15, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit"
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i17 = load ptr, ptr %13, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i18 = getelementptr inbounds nuw i32, ptr %_6.i17, i64 %_7
  %_0 = load i32, ptr %_0.i.i18, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E"(ptr noalias noundef align 8 dereferenceable(24) %mem)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mem)
  ret i32 %_0

bb16:                                             ; preds = %bb16.lr.ph, %bb29
  %_0.sroa.3.0.i.i29277 = phi i32 [ %iter.sroa.0.0285, %bb16.lr.ph ], [ %_0.sroa.3.0.i.i29, %bb29 ]
  %iter1.sroa.7.1276 = phi i8 [ %iter1.sroa.7.1274, %bb16.lr.ph ], [ %iter1.sroa.7.1, %bb29 ]
  %iter1.sroa.0.1275 = phi i32 [ %iter1.sroa.0.1273, %bb16.lr.ph ], [ %iter1.sroa.0.1, %bb29 ]
  %len.i33 = load i64, ptr %5, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i34 = icmp ugt i64 %len.i33, %_31
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit39", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit39": ; preds = %bb16
  %_6.i36 = load ptr, ptr %6, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i36, i64 %_31
  %_33 = add i32 %_0.sroa.3.0.i.i29277, -1
  %_32 = sext i32 %_33 to i64
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i37, i64 16
  %len.i40 = load i64, ptr %14, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i41 = icmp ugt i64 %len.i40, %_32
  br i1 %_4.i.i41, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit46", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit46": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit39"
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i37, i64 8
  %_6.i43 = load ptr, ptr %15, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i44 = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_32
  %_27 = load i32, ptr %_0.i.i44, align 4, !noundef !15
  %_4.i.i48 = icmp ugt i64 %len.i33, %_38
  br i1 %_4.i.i48, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit53", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit53": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit46"
  %_0.i.i51 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i36, i64 %_38
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i51, i64 16
  %len.i54 = load i64, ptr %16, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i55 = icmp ugt i64 %len.i54, %_32
  br i1 %_4.i.i55, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit60", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit60": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit53"
  %_43 = sext i32 %_0.sroa.3.0.i.i29277 to i64
  %_4.i.i69 = icmp ugt i64 %len.i40, %_43
  br i1 %_4.i.i69, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit74", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit60"
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i51, i64 8
  %_6.i57 = load ptr, ptr %17, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i58 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_32
  %_34 = load i32, ptr %_0.i.i58, align 4, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_43
  %18 = add i32 %_34, %_27
  store i32 %18, ptr %_0.i.i72, align 4
  %_45 = add i32 %_0.sroa.3.0.i.i29277, %10
  %_44 = icmp sgt i32 %_45, -1
  br i1 %_44, label %bb24, label %bb29

bb29:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit102", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit74"
  %_10.i.i20 = trunc nuw i8 %iter1.sroa.7.1276 to i1
  %_0.i.not.i.i25 = icmp sgt i32 %iter1.sroa.0.1275, %s
  %or.cond106 = select i1 %_10.i.i20, i1 true, i1 %_0.i.not.i.i25
  %_0.i3.i.i27 = icmp slt i32 %iter1.sroa.0.1275, %s
  %not.or.cond106 = xor i1 %or.cond106, true
  %narrow213 = select i1 %not.or.cond106, i1 %_0.i3.i.i27, i1 false
  %spec.select104 = zext i1 %narrow213 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1275, %spec.select104
  %19 = select i1 %or.cond106, i1 true, i1 %_0.i3.i.i27
  %iter1.sroa.7.1 = select i1 %19, i8 %iter1.sroa.7.1276, i8 1
  %_0.sroa.3.0.i.i29 = select i1 %_10.i.i20, i32 undef, i32 %iter1.sroa.0.1275
  br i1 %or.cond106, label %bb7.loopexit, label %bb16

bb24:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit74"
  %len.i75 = load i64, ptr %5, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i76 = icmp ugt i64 %len.i75, %_38
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit81", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit81": ; preds = %bb24
  %_6.i78 = load ptr, ptr %6, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i79 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i78, i64 %_38
  %_51 = zext nneg i32 %_45 to i64
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 16
  %len.i82 = load i64, ptr %20, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i83 = icmp ugt i64 %len.i82, %_51
  br i1 %_4.i.i83, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit88", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit88": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit81"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 8
  %_6.i85 = load ptr, ptr %21, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %_51
  %_47 = load i32, ptr %_0.i.i86, align 4, !noundef !15
  %_4.i.i90 = icmp ugt i64 %len.i75, %_31
  br i1 %_4.i.i90, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit95", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit95": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit88"
  %_0.i.i93 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i78, i64 %_31
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i93, i64 16
  %len.i96 = load i64, ptr %22, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i97 = icmp ugt i64 %len.i96, %_43
  br i1 %_4.i.i97, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit102", label %panic.i.i98.invoke

panic.i.i98.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit95", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit88", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit81", %bb24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit60", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit53", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit46", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit39", %bb16, %_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E.exit, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit", %bb11, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit"
  %23 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit" ], [ %_9, %bb11 ], [ %_7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit" ], [ 0, %_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E.exit ], [ %_43, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit95" ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit88" ], [ %_51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit81" ], [ %_38, %bb24 ], [ %_43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit60" ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit53" ], [ %_38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit46" ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit39" ], [ %_31, %bb16 ]
  %24 = phi i64 [ %len.i4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit" ], [ %len.i9, %bb11 ], [ %len.i14, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit" ], [ %len.i, %_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E.exit ], [ %len.i96, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit95" ], [ %len.i75, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit88" ], [ %len.i82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit81" ], [ %len.i75, %bb24 ], [ %len.i40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit60" ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit53" ], [ %len.i33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit46" ], [ %len.i40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit39" ], [ %len.i33, %bb16 ]
  %25 = phi ptr [ @alloc_6f35b41ea119093316f67fe513b76502, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit" ], [ @alloc_7fd48b4810d5547f51677e14f794f2a4, %bb11 ], [ @alloc_97d399a03a189396f4acc790d40e719f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit" ], [ @alloc_dae2ef4da11f8c3277ff05767ca96ed7, %_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E.exit ], [ @alloc_a636b71f01d028e62af66f041f36149c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit95" ], [ @alloc_8ef9c3ad4de16741a5cb13550d8a8277, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit88" ], [ @alloc_0775f161b05850225c2c9f476e76260e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit81" ], [ @alloc_96590de966b1a8b343741ff351cdca11, %bb24 ], [ @alloc_fd06b9c5674ae1c9e2c7b92d370707bb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit60" ], [ @alloc_09d648b1f10f476932d3409de2524a2b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit53" ], [ @alloc_fb9b5c60a2a1eb635c2abb8efc804f6f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E.exit46" ], [ @alloc_097f029744a4e9cec99b18c0f5b1c109, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E.exit39" ], [ @alloc_1c90723536eb01ea4c6e30fe61f3c144, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %23, i64 noundef range(i64 0, 2305843009213693952) %24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %25) #27
          to label %panic.i.i98.cont unwind label %cleanup

panic.i.i98.cont:                                 ; preds = %panic.i.i98.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE.exit102": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE.exit95"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i93, i64 8
  %_6.i99 = load ptr, ptr %26, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw i32, ptr %_6.i99, i64 %_43
  %27 = load i32, ptr %_0.i.i100, align 4, !noundef !15
  %28 = sub i32 %27, %_47
  store i32 %28, ptr %_0.i.i100, align 4
  br label %bb29

terminate:                                        ; preds = %cleanup
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb34:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
