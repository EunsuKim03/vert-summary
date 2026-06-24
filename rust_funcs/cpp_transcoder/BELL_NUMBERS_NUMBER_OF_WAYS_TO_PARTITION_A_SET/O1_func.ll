define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %bell = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bell)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h1cadcc8454442effE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h1cadcc8454442effE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %bell, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %bell, i64 16
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i98.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit": ; preds = %_ZN5alloc3vec9from_elem17h1cadcc8454442effE.exit
  %6 = getelementptr inbounds nuw i8, ptr %bell, i64 8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %7 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i4 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i5.not = icmp eq i64 %len.i4, 0
  br i1 %_4.i.i5.not, label %panic.i.i98.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit"

cleanup:                                          ; preds = %panic.i.i98.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE"(ptr noalias noundef align 8 dereferenceable(24) %bell) #30
          to label %bb32 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit"
  %9 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i7 = load ptr, ptr %9, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  store i32 1, ptr %_6.i7, align 4
  %_0.i.not.i.i253 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i253, label %bb11, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit"
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.1259 = zext i1 %.not to i8
  %_0.i3.i.i254.not = icmp eq i32 %n, 1
  %iter.sroa.0.1258 = select i1 %_0.i3.i.i254.not, i32 1, i32 2
  br label %bb10

bb7.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit102", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit47"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1261 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1260, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1260, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1260, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1261, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1260
  br i1 %or.cond, label %bb11, label %bb10

bb10:                                             ; preds = %bb10.lr.ph, %bb7.loopexit
  %_0.sroa.3.0.i.i262 = phi i32 [ 1, %bb10.lr.ph ], [ %_0.sroa.3.0.i.i, %bb7.loopexit ]
  %iter.sroa.7.1261 = phi i8 [ %iter.sroa.7.1259, %bb10.lr.ph ], [ %iter.sroa.7.1, %bb7.loopexit ]
  %iter.sroa.0.1260 = phi i32 [ %iter.sroa.0.1258, %bb10.lr.ph ], [ %iter.sroa.0.1, %bb7.loopexit ]
  %_21 = add i32 %_0.sroa.3.0.i.i262, -1
  %_20 = sext i32 %_21 to i64
  %len.i9 = load i64, ptr %5, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i10 = icmp ugt i64 %len.i9, %_20
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit": ; preds = %bb10
  %_6.i12 = load ptr, ptr %6, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i12, i64 %_20
  %11 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i27 = load i64, ptr %11, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i28 = icmp ugt i64 %len.i27, %_20
  br i1 %_4.i.i28, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit33", label %panic.i.i98.invoke

bb11:                                             ; preds = %bb7.loopexit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit"
  %len.i14 = load i64, ptr %5, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i15 = icmp ugt i64 %len.i14, %_5
  br i1 %_4.i.i15, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit20", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit20": ; preds = %bb11
  %_6.i17 = load ptr, ptr %6, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i18 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i17, i64 %_5
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i18, i64 16
  %len.i21 = load i64, ptr %12, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i22.not = icmp eq i64 %len.i21, 0
  br i1 %_4.i.i22.not, label %panic.i.i98.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit20"
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i18, i64 8
  %_6.i24 = load ptr, ptr %13, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0 = load i32, ptr %_6.i24, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE"(ptr noalias noundef align 8 dereferenceable(24) %bell)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bell)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit33": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit"
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i30 = load ptr, ptr %14, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i31 = getelementptr inbounds nuw i32, ptr %_6.i30, i64 %_20
  %_16 = load i32, ptr %_0.i.i31, align 4, !noundef !15
  %_25 = sext i32 %_0.sroa.3.0.i.i262 to i64
  %_4.i.i35 = icmp ugt i64 %len.i9, %_25
  br i1 %_4.i.i35, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit40", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit40": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit33"
  %_0.i.i38 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i12, i64 %_25
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i38, i64 16
  %len.i41 = load i64, ptr %15, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i42.not = icmp eq i64 %len.i41, 0
  br i1 %_4.i.i42.not, label %panic.i.i98.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit47"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit47": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit40"
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i38, i64 8
  %_6.i44 = load ptr, ptr %16, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  store i32 %_16, ptr %_6.i44, align 4
  %_0.i.not.i.i53243 = icmp slt i32 %_0.sroa.3.0.i.i262, 1
  br i1 %_0.i.not.i.i53243, label %bb7.loopexit, label %bb20.lr.ph

bb20.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit47"
  %.not263 = icmp eq i32 %_0.sroa.3.0.i.i262, 1
  %iter1.sroa.7.1249 = zext i1 %.not263 to i8
  %_0.i3.i.i55244.not = icmp eq i32 %_0.sroa.3.0.i.i262, 1
  %iter1.sroa.0.1248 = select i1 %_0.i3.i.i55244.not, i32 1, i32 2
  br label %bb20

bb20:                                             ; preds = %bb20.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit102"
  %_0.sroa.3.0.i.i57252 = phi i32 [ 1, %bb20.lr.ph ], [ %_0.sroa.3.0.i.i57, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit102" ]
  %iter1.sroa.7.1251 = phi i8 [ %iter1.sroa.7.1249, %bb20.lr.ph ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit102" ]
  %iter1.sroa.0.1250 = phi i32 [ %iter1.sroa.0.1248, %bb20.lr.ph ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit102" ]
  %len.i61 = load i64, ptr %5, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i62 = icmp ugt i64 %len.i61, %_20
  br i1 %_4.i.i62, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit67", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit67": ; preds = %bb20
  %_6.i64 = load ptr, ptr %6, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i65 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i64, i64 %_20
  %_38 = add i32 %_0.sroa.3.0.i.i57252, -1
  %_37 = sext i32 %_38 to i64
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i65, i64 16
  %len.i68 = load i64, ptr %17, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i69 = icmp ugt i64 %len.i68, %_37
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit74", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit67"
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i65, i64 8
  %_6.i71 = load ptr, ptr %18, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i71, i64 %_37
  %_33 = load i32, ptr %_0.i.i72, align 4, !noundef !15
  %_4.i.i76 = icmp ugt i64 %len.i61, %_25
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit81", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit74"
  %_0.i.i79 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i64, i64 %_25
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 16
  %len.i82 = load i64, ptr %19, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i83 = icmp ugt i64 %len.i82, %_37
  br i1 %_4.i.i83, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit88", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit88": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit81"
  %_46 = sext i32 %_0.sroa.3.0.i.i57252 to i64
  %_4.i.i97 = icmp ugt i64 %len.i82, %_46
  br i1 %_4.i.i97, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit102", label %panic.i.i98.invoke

panic.i.i98.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit40", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit33", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit", %bb10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit88", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit74", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit67", %bb20, %_ZN5alloc3vec9from_elem17h1cadcc8454442effE.exit, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit20", %bb11, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit"
  %20 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit" ], [ %_5, %bb11 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit20" ], [ 0, %_ZN5alloc3vec9from_elem17h1cadcc8454442effE.exit ], [ %_46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit88" ], [ %_37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit81" ], [ %_25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit74" ], [ %_37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit67" ], [ %_20, %bb20 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit40" ], [ %_25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit33" ], [ %_20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit" ], [ %_20, %bb10 ]
  %21 = phi i64 [ %len.i4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit" ], [ %len.i14, %bb11 ], [ %len.i21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit20" ], [ %len.i, %_ZN5alloc3vec9from_elem17h1cadcc8454442effE.exit ], [ %len.i82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit88" ], [ %len.i82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit81" ], [ %len.i61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit74" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit67" ], [ %len.i61, %bb20 ], [ %len.i41, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit40" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit33" ], [ %len.i27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit" ], [ %len.i9, %bb10 ]
  %22 = phi ptr [ @alloc_98d7f26519a83282fabd1f4ab068edac, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit" ], [ @alloc_5245d00d50f2a584e7211bb963892319, %bb11 ], [ @alloc_968bf4e5efc36a1777785d2bfeba68d5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit20" ], [ @alloc_fec55a222f4e9dcb868d3a9b21f4e08b, %_ZN5alloc3vec9from_elem17h1cadcc8454442effE.exit ], [ @alloc_61e43189735cf2aab09740fdedfb9d35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit88" ], [ @alloc_84c282f315b65520953b93a96f21e8b2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit81" ], [ @alloc_896cd0571355317326155ec59c5c0203, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit74" ], [ @alloc_1faef331a4eb397ffbbe47ffa27ae2e9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit67" ], [ @alloc_dee5f08d78bdfa2958b51c4865fb8256, %bb20 ], [ @alloc_ec2499eb41820769b79e8aba38658cea, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E.exit40" ], [ @alloc_09d71ee23d31a4b2fa8275efacf796bf, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit33" ], [ @alloc_00efc86c75bdfd3751fd9e3b815068d2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E.exit" ], [ @alloc_ea9f15ddd215e96785b0f25976b2ae0e, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %20, i64 noundef range(i64 0, 2305843009213693952) %21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %22) #27
          to label %panic.i.i98.cont unwind label %cleanup

panic.i.i98.cont:                                 ; preds = %panic.i.i98.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE.exit102": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE.exit88"
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 8
  %_6.i85 = load ptr, ptr %23, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %_37
  %_39 = load i32, ptr %_0.i.i86, align 4, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %_46
  %24 = add i32 %_39, %_33
  store i32 %24, ptr %_0.i.i100, align 4
  %_10.i.i48 = trunc nuw i8 %iter1.sroa.7.1251 to i1
  %_0.i.not.i.i53 = icmp sgt i32 %iter1.sroa.0.1250, %_0.sroa.3.0.i.i262
  %or.cond106 = select i1 %_10.i.i48, i1 true, i1 %_0.i.not.i.i53
  %_0.i3.i.i55 = icmp slt i32 %iter1.sroa.0.1250, %_0.sroa.3.0.i.i262
  %not.or.cond106 = xor i1 %or.cond106, true
  %narrow197 = select i1 %not.or.cond106, i1 %_0.i3.i.i55, i1 false
  %spec.select104 = zext i1 %narrow197 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1250, %spec.select104
  %25 = select i1 %or.cond106, i1 true, i1 %_0.i3.i.i55
  %iter1.sroa.7.1 = select i1 %25, i8 %iter1.sroa.7.1251, i8 1
  %_0.sroa.3.0.i.i57 = select i1 %_10.i.i48, i32 undef, i32 %iter1.sroa.0.1250
  br i1 %or.cond106, label %bb7.loopexit, label %bb20

terminate:                                        ; preds = %cleanup
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb32:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
