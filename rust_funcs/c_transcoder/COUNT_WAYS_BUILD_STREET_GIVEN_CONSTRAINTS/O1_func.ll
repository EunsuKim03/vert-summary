define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hbaa69cde725c493dE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17hbaa69cde725c493dE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfcd3f9d476f07fd0E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef 2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i126.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit": ; preds = %_ZN5alloc3vec9from_elem17hbaa69cde725c493dE.exit
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %7 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i2 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i3 = icmp ugt i64 %len.i2, 1
  br i1 %_4.i.i3, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit", label %panic.i.i126.invoke

cleanup:                                          ; preds = %panic.i.i126.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb32 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit"
  %9 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i5 = load ptr, ptr %9, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i5, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %len.i7 = load i64, ptr %5, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i8 = icmp samesign ugt i64 %len.i7, 1
  br i1 %_4.i.i8, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit13", label %panic.i.i126.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit13": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit"
  %_6.i10 = load ptr, ptr %6, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %10 = getelementptr inbounds nuw i8, ptr %_6.i10, i64 40
  %len.i14 = load i64, ptr %10, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i15 = icmp ugt i64 %len.i14, 1
  br i1 %_4.i.i15, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit20", label %panic.i.i126.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit20": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit13"
  %11 = getelementptr inbounds nuw i8, ptr %_6.i10, i64 32
  %_6.i17 = load ptr, ptr %11, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i18 = getelementptr inbounds nuw i8, ptr %_6.i17, i64 4
  store i32 2, ptr %_0.i.i18, align 4
  %_0.i.not.i.i264 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i264, label %bb13, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit20"
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.1270 = zext i1 %.not to i8
  %_0.i3.i.i265.not = icmp eq i32 %n, 2
  %iter.sroa.0.1269 = select i1 %_0.i3.i.i265.not, i32 2, i32 3
  br label %bb12

bb12:                                             ; preds = %bb12.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit130"
  %_0.sroa.3.0.i.i273 = phi i32 [ 2, %bb12.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit130" ]
  %iter.sroa.7.1272 = phi i8 [ %iter.sroa.7.1270, %bb12.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit130" ]
  %iter.sroa.0.1271 = phi i32 [ %iter.sroa.0.1269, %bb12.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit130" ]
  %len.i21 = load i64, ptr %5, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i22.not = icmp eq i64 %len.i21, 0
  br i1 %_4.i.i22.not, label %panic.i.i126.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit": ; preds = %bb12
  %_6.i24 = load ptr, ptr %6, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_24 = add i32 %_0.sroa.3.0.i.i273, -1
  %_23 = sext i32 %_24 to i64
  %12 = getelementptr inbounds nuw i8, ptr %_6.i24, i64 16
  %len.i54 = load i64, ptr %12, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i55 = icmp ugt i64 %len.i54, %_23
  br i1 %_4.i.i55, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit60", label %panic.i.i126.invoke

bb13:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit130", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit20"
  %len.i27 = load i64, ptr %5, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i28.not = icmp eq i64 %len.i27, 0
  br i1 %_4.i.i28.not, label %panic.i.i126.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit33"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit33": ; preds = %bb13
  %_6.i30 = load ptr, ptr %6, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %13 = getelementptr inbounds nuw i8, ptr %_6.i30, i64 16
  %len.i34 = load i64, ptr %13, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i35 = icmp ugt i64 %len.i34, %_5
  br i1 %_4.i.i35, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit", label %panic.i.i126.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit33"
  %14 = getelementptr inbounds nuw i8, ptr %_6.i30, i64 8
  %_6.i37 = load ptr, ptr %14, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i38 = getelementptr inbounds nuw i32, ptr %_6.i37, i64 %_5
  %_45 = load i32, ptr %_0.i.i38, align 4, !noundef !15
  %_4.i.i41.not = icmp eq i64 %len.i27, 1
  br i1 %_4.i.i41.not, label %panic.i.i126.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit46"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit46": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit"
  %15 = getelementptr inbounds nuw i8, ptr %_6.i30, i64 40
  %len.i47 = load i64, ptr %15, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i48 = icmp ugt i64 %len.i47, %_5
  br i1 %_4.i.i48, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit53", label %panic.i.i126.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit53": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit46"
  %16 = getelementptr inbounds nuw i8, ptr %_6.i30, i64 32
  %_6.i50 = load ptr, ptr %16, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i51 = getelementptr inbounds nuw i32, ptr %_6.i50, i64 %_5
  %_49 = load i32, ptr %_0.i.i51, align 4, !noundef !15
  %_0 = add i32 %_49, %_45
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit60": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit"
  %17 = getelementptr inbounds nuw i8, ptr %_6.i24, i64 8
  %_6.i57 = load ptr, ptr %17, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i58 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_23
  %_19 = load i32, ptr %_0.i.i58, align 4, !noundef !15
  %_4.i.i62.not = icmp eq i64 %len.i21, 1
  br i1 %_4.i.i62.not, label %panic.i.i126.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit67"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit67": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit60"
  %18 = getelementptr inbounds nuw i8, ptr %_6.i24, i64 40
  %len.i68 = load i64, ptr %18, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i69 = icmp ugt i64 %len.i68, %_23
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit74", label %panic.i.i126.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit67"
  %_32 = sext i32 %_0.sroa.3.0.i.i273 to i64
  %_4.i.i83 = icmp ugt i64 %len.i54, %_32
  br i1 %_4.i.i83, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit88", label %panic.i.i126.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit88": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit74"
  %19 = getelementptr inbounds nuw i8, ptr %_6.i24, i64 32
  %_6.i71 = load ptr, ptr %19, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i71, i64 %_23
  %_25 = load i32, ptr %_0.i.i72, align 4, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_32
  %20 = add i32 %_25, %_19
  store i32 %20, ptr %_0.i.i86, align 4
  %len.i89 = load i64, ptr %5, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i90.not = icmp eq i64 %len.i89, 0
  br i1 %_4.i.i90.not, label %panic.i.i126.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit95"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit95": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit88"
  %_6.i92 = load ptr, ptr %6, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %21 = getelementptr inbounds nuw i8, ptr %_6.i92, i64 16
  %len.i96 = load i64, ptr %21, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i97 = icmp ugt i64 %len.i96, %_23
  br i1 %_4.i.i97, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit102", label %panic.i.i126.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit102": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit95"
  %22 = getelementptr inbounds nuw i8, ptr %_6.i92, i64 8
  %_6.i99 = load ptr, ptr %22, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw i32, ptr %_6.i99, i64 %_23
  %_34 = load i32, ptr %_0.i.i100, align 4, !noundef !15
  %_33 = shl i32 %_34, 1
  %_4.i.i104.not = icmp eq i64 %len.i89, 1
  br i1 %_4.i.i104.not, label %panic.i.i126.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit109"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit109": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit102"
  %23 = getelementptr inbounds nuw i8, ptr %_6.i92, i64 40
  %len.i110 = load i64, ptr %23, align 8, !alias.scope !1742, !noalias !1745, !noundef !15
  %_4.i.i111 = icmp ugt i64 %len.i110, %_23
  br i1 %_4.i.i111, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit116", label %panic.i.i126.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit116": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit109"
  %_4.i.i125 = icmp ugt i64 %len.i110, %_32
  br i1 %_4.i.i125, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit130", label %panic.i.i126.invoke

panic.i.i126.invoke:                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit116", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit109", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit102", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit95", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit88", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit74", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit67", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit60", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit", %bb12, %_ZN5alloc3vec9from_elem17hbaa69cde725c493dE.exit, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit46", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit33", %bb13, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit13", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit"
  %24 = phi i64 [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit13" ], [ 0, %bb13 ], [ %_5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit33" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit" ], [ %_5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit46" ], [ 0, %_ZN5alloc3vec9from_elem17hbaa69cde725c493dE.exit ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit116" ], [ %_23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit109" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit102" ], [ %_23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit95" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit88" ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit74" ], [ %_23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit67" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit60" ], [ %_23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit" ], [ 0, %bb12 ]
  %25 = phi i64 [ %len.i2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit" ], [ %len.i7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit" ], [ %len.i14, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit13" ], [ %len.i27, %bb13 ], [ %len.i34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit33" ], [ %len.i27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit" ], [ %len.i47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit46" ], [ %len.i, %_ZN5alloc3vec9from_elem17hbaa69cde725c493dE.exit ], [ %len.i110, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit116" ], [ %len.i110, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit109" ], [ %len.i89, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit102" ], [ %len.i96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit95" ], [ %len.i89, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit88" ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit74" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit67" ], [ %len.i21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit60" ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit" ], [ %len.i21, %bb12 ]
  %26 = phi ptr [ @alloc_156a2292b42cb8b41375b9ac4c541954, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit" ], [ @alloc_017e82055919fa76722a845ac35c8f12, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit" ], [ @alloc_f01afa1788f94ca0194a04eebed45386, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E.exit13" ], [ @alloc_526647b16b3d420a748112a84380ffe9, %bb13 ], [ @alloc_9d9e59c56836b55a4d140441f15c77df, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit33" ], [ @alloc_d1788848aaa3762e1aeb85561e8f1694, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit" ], [ @alloc_70089a8c124d263157bfb7841de64092, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit46" ], [ @alloc_2bda443dd6e5d6a3b8b636afe9b38016, %_ZN5alloc3vec9from_elem17hbaa69cde725c493dE.exit ], [ @alloc_5af7cd25c882f3f07e0fc75fc0b28712, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit116" ], [ @alloc_3d9ce4fb900a8219c8abaf9ac04b5679, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit109" ], [ @alloc_da367ede526abb7d7a9deeda015824c1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit102" ], [ @alloc_c6b826aae231a2bff9e4ee453f85fc33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit95" ], [ @alloc_2b795fe728c15327c3848200f9e74fc8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit88" ], [ @alloc_18906e21970eb3031c37f117adeebbeb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit74" ], [ @alloc_5a059bd1e0e55f2841781da6641e1915, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit67" ], [ @alloc_166265b14cb0967a0d86085c04e33123, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit60" ], [ @alloc_431060d0cd41bee65d4038b2fe531622, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E.exit" ], [ @alloc_29371a306d946f59a8c6b7029489eec8, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %24, i64 noundef range(i64 0, 2305843009213693952) %25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #27
          to label %panic.i.i126.cont unwind label %cleanup

panic.i.i126.cont:                                ; preds = %panic.i.i126.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E.exit130": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E.exit116"
  %27 = getelementptr inbounds nuw i8, ptr %_6.i92, i64 32
  %_6.i113 = load ptr, ptr %27, align 8, !alias.scope !1742, !noalias !1745, !nonnull !15, !noundef !15
  %_0.i.i114 = getelementptr inbounds nuw i32, ptr %_6.i113, i64 %_23
  %_38 = load i32, ptr %_0.i.i114, align 4, !noundef !15
  %_0.i.i128 = getelementptr inbounds nuw i32, ptr %_6.i113, i64 %_32
  %28 = add i32 %_38, %_33
  store i32 %28, ptr %_0.i.i128, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1272 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1271, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1271, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1271, %spec.select
  %29 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %29, i8 %iter.sroa.7.1272, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1271
  br i1 %or.cond, label %bb13, label %bb12

terminate:                                        ; preds = %cleanup
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb32:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
