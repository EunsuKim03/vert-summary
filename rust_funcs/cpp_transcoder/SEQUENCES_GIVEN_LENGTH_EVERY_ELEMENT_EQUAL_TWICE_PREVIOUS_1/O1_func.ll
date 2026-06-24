define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %T = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %T)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17he2c1cafde31447ceE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17he2c1cafde31447ceE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1681
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %T, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %5 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %_0.i.not.i.i328 = icmp slt i32 %m, 0
  br i1 %_0.i.not.i.i328, label %bb9, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17he2c1cafde31447ceE.exit
  %.not = icmp eq i32 %m, 0
  %iter.sroa.7.1333 = zext i1 %.not to i8
  %_0.i3.i.i329 = icmp ne i32 %m, 0
  %spec.select332 = zext i1 %_0.i3.i.i329 to i32
  %_0.i.not.i.i17319 = icmp slt i32 %n, 0
  %.not337 = icmp eq i32 %n, 0
  %iter1.sroa.7.1324 = zext i1 %.not337 to i8
  %_0.i3.i.i19320 = icmp ne i32 %n, 0
  %spec.select108323 = zext i1 %_0.i3.i.i19320 to i32
  br label %bb12.preheader

cleanup:                                          ; preds = %panic.i.i102.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr noalias noundef align 8 dereferenceable(24) %T) #30
          to label %bb42 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb37, %bb12.preheader
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1335 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1334, %m
  %or.cond110 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1334, %m
  %not.or.cond110 = xor i1 %or.cond110, true
  %narrow = select i1 %not.or.cond110, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1334, %spec.select
  %14 = select i1 %or.cond110, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %14, i8 %iter.sroa.7.1335, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1334
  br i1 %or.cond110, label %bb9, label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i336 = phi i32 [ 0, %bb12.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1335 = phi i8 [ %iter.sroa.7.1333, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1334 = phi i32 [ %spec.select332, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %_23 = icmp eq i32 %_0.sroa.3.0.i.i336, 0
  %_47 = add i32 %_0.sroa.3.0.i.i336, -1
  %_46 = sext i32 %_47 to i64
  %_54 = sext i32 %_0.sroa.3.0.i.i336 to i64
  %_535 = lshr i64 %_54, 1
  %_40 = sext i32 %_0.sroa.3.0.i.i336 to i64
  %_34 = sext i32 %_0.sroa.3.0.i.i336 to i64
  %_28 = sext i32 %_0.sroa.3.0.i.i336 to i64
  br i1 %_0.i.not.i.i17319, label %bb5.loopexit, label %bb14

bb9:                                              ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17he2c1cafde31447ceE.exit
  %15 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %len.i = load i64, ptr %15, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, %_8
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit": ; preds = %bb9
  %16 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %_6.i = load ptr, ptr %16, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_8
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i6 = load i64, ptr %17, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i7 = icmp ugt i64 %len.i6, %_6
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit"
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i9 = load ptr, ptr %18, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i10 = getelementptr inbounds nuw i32, ptr %_6.i9, i64 %_6
  %_0 = load i32, ptr %_0.i.i10, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr noalias noundef align 8 dereferenceable(24) %T)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %T)
  ret i32 %_0

bb14:                                             ; preds = %bb12.preheader, %bb37
  %_0.sroa.3.0.i.i21327 = phi i32 [ %_0.sroa.3.0.i.i21, %bb37 ], [ 0, %bb12.preheader ]
  %iter1.sroa.7.1326 = phi i8 [ %iter1.sroa.7.1, %bb37 ], [ %iter1.sroa.7.1324, %bb12.preheader ]
  %iter1.sroa.0.1325 = phi i32 [ %iter1.sroa.0.1, %bb37 ], [ %spec.select108323, %bb12.preheader ]
  %_24 = icmp eq i32 %_0.sroa.3.0.i.i21327, 0
  %or.cond = or i1 %_23, %_24
  br i1 %or.cond, label %bb17, label %bb20

bb17:                                             ; preds = %bb14
  %len.i25 = load i64, ptr %11, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i26 = icmp ugt i64 %len.i25, %_28
  br i1 %_4.i.i26, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit", label %panic.i.i102.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit": ; preds = %bb17
  %_6.i28 = load ptr, ptr %12, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i29 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i28, i64 %_28
  %_29 = sext i32 %_0.sroa.3.0.i.i21327 to i64
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i29, i64 16
  %len.i100 = load i64, ptr %19, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i101 = icmp ugt i64 %len.i100, %_29
  br i1 %_4.i.i101, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit106", label %panic.i.i102.invoke

bb20:                                             ; preds = %bb14
  %_30 = icmp slt i32 %_0.sroa.3.0.i.i336, %_0.sroa.3.0.i.i21327
  br i1 %_30, label %bb21, label %bb24

bb24:                                             ; preds = %bb20
  %_36 = icmp eq i32 %_0.sroa.3.0.i.i21327, 1
  br i1 %_36, label %bb25, label %bb28

bb21:                                             ; preds = %bb20
  %len.i31 = load i64, ptr %9, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i32 = icmp ugt i64 %len.i31, %_34
  br i1 %_4.i.i32, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit37", label %panic.i.i102.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit37": ; preds = %bb21
  %_6.i34 = load ptr, ptr %10, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i34, i64 %_34
  %_35 = sext i32 %_0.sroa.3.0.i.i21327 to i64
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 16
  %len.i93 = load i64, ptr %20, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i94 = icmp ugt i64 %len.i93, %_35
  br i1 %_4.i.i94, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit99", label %panic.i.i102.invoke

bb28:                                             ; preds = %bb24
  %len.i38 = load i64, ptr %5, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i39 = icmp ugt i64 %len.i38, %_46
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit44", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit44": ; preds = %bb28
  %_6.i41 = load ptr, ptr %6, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i42 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %_46
  %_48 = sext i32 %_0.sroa.3.0.i.i21327 to i64
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 16
  %len.i52 = load i64, ptr %21, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i53 = icmp ugt i64 %len.i52, %_48
  br i1 %_4.i.i53, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit58", label %panic.i.i102.invoke

bb25:                                             ; preds = %bb24
  %len.i45 = load i64, ptr %7, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i46 = icmp ugt i64 %len.i45, %_40
  br i1 %_4.i.i46, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit51", label %panic.i.i102.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit51": ; preds = %bb25
  %_6.i48 = load ptr, ptr %8, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i48, i64 %_40
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 16
  %len.i86 = load i64, ptr %22, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i87 = icmp ugt i64 %len.i86, 1
  br i1 %_4.i.i87, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit92", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit58": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit44"
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 8
  %_6.i55 = load ptr, ptr %23, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i56 = getelementptr inbounds nuw i32, ptr %_6.i55, i64 %_48
  %_42 = load i32, ptr %_0.i.i56, align 4, !noundef !15
  %_4.i.i60 = icmp ult i64 %_535, %len.i38
  br i1 %_4.i.i60, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit65", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit65": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit58"
  %_0.i.i63 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %_535
  %_56 = add i32 %_0.sroa.3.0.i.i21327, -1
  %_55 = sext i32 %_56 to i64
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i63, i64 16
  %len.i66 = load i64, ptr %24, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i67 = icmp ugt i64 %len.i66, %_55
  br i1 %_4.i.i67, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit72", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit65"
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i63, i64 8
  %_6.i69 = load ptr, ptr %25, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_0.i.i70 = getelementptr inbounds nuw i32, ptr %_6.i69, i64 %_55
  %_49 = load i32, ptr %_0.i.i70, align 4, !noundef !15
  %_4.i.i74 = icmp ugt i64 %len.i38, %_54
  br i1 %_4.i.i74, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit79", label %panic.i.i102.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit79": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit72"
  %_0.i.i77 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %_54
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i77, i64 16
  %len.i80 = load i64, ptr %26, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i81 = icmp ugt i64 %len.i80, %_48
  br i1 %_4.i.i81, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit", label %panic.i.i102.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit79"
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i77, i64 8
  %_6.i83 = load ptr, ptr %27, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  %_0.i.i84 = getelementptr inbounds nuw i32, ptr %_6.i83, i64 %_48
  %28 = add i32 %_49, %_42
  store i32 %28, ptr %_0.i.i84, align 4
  br label %bb37

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit92": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit51"
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 8
  %_6.i89 = load ptr, ptr %29, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i90 = getelementptr inbounds nuw i8, ptr %_6.i89, i64 4
  store i32 %_0.sroa.3.0.i.i336, ptr %_0.i.i90, align 4
  br label %bb37

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit99": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit37"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 8
  %_6.i96 = load ptr, ptr %30, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i97 = getelementptr inbounds nuw i32, ptr %_6.i96, i64 %_35
  store i32 0, ptr %_0.i.i97, align 4
  br label %bb37

bb37:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit99", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit92", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit106"
  %_10.i.i12 = trunc nuw i8 %iter1.sroa.7.1326 to i1
  %_0.i.not.i.i17 = icmp sgt i32 %iter1.sroa.0.1325, %n
  %or.cond111 = select i1 %_10.i.i12, i1 true, i1 %_0.i.not.i.i17
  %_0.i3.i.i19 = icmp slt i32 %iter1.sroa.0.1325, %n
  %not.or.cond111 = xor i1 %or.cond111, true
  %narrow232 = select i1 %not.or.cond111, i1 %_0.i3.i.i19, i1 false
  %spec.select108 = zext i1 %narrow232 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1325, %spec.select108
  %31 = select i1 %or.cond111, i1 true, i1 %_0.i3.i.i19
  %iter1.sroa.7.1 = select i1 %31, i8 %iter1.sroa.7.1326, i8 1
  %_0.sroa.3.0.i.i21 = select i1 %_10.i.i12, i32 undef, i32 %iter1.sroa.0.1325
  br i1 %or.cond111, label %bb5.loopexit, label %bb14

panic.i.i102.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit37", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit51", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit79", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit72", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit65", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit58", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit44", %bb25, %bb28, %bb21, %bb17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit", %bb9
  %32 = phi i64 [ %_8, %bb9 ], [ %_6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit" ], [ %_29, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit" ], [ %_35, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit37" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit51" ], [ %_48, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit79" ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit72" ], [ %_55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit65" ], [ %_535, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit58" ], [ %_48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit44" ], [ %_40, %bb25 ], [ %_46, %bb28 ], [ %_34, %bb21 ], [ %_28, %bb17 ]
  %33 = phi i64 [ %len.i, %bb9 ], [ %len.i6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit" ], [ %len.i100, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit" ], [ %len.i93, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit37" ], [ %len.i86, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit51" ], [ %len.i80, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit79" ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit72" ], [ %len.i66, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit65" ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit58" ], [ %len.i52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit44" ], [ %len.i45, %bb25 ], [ %len.i38, %bb28 ], [ %len.i31, %bb21 ], [ %len.i25, %bb17 ]
  %34 = phi ptr [ @alloc_7b3dc8c7cbed41539a53215b466f6f89, %bb9 ], [ @alloc_14bb23932abe00454aca023fa32eec71, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit" ], [ @alloc_4b4cbbe990b6b60e4f6e251c18603fa3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit" ], [ @alloc_82e650ec0002bcc2e6a846d5aeef5123, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit37" ], [ @alloc_8813c1351c328e5ae912630fa17404a1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit51" ], [ @alloc_33acd2931b9c1f72fbd5f1529cc068dc, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit79" ], [ @alloc_652d7e4d7743d2dae70d9527f0185117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit72" ], [ @alloc_2a35df45f4f234eef6d576261bcec3fa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit65" ], [ @alloc_1d0b44fbc8c01b438d9d3ac609c046e3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit58" ], [ @alloc_8318b8cd712e533b1009a655213d23fb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit44" ], [ @alloc_43c0e1a3495702abf684ddc167d18716, %bb25 ], [ @alloc_d20fb4b1ec43765d1be7684a3fba005f, %bb28 ], [ @alloc_a03588279d6a7429cf539a1de7a9854d, %bb21 ], [ @alloc_bb2ef5058e0819405655d47be8cb4783, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, -9223372036854775808) %32, i64 noundef range(i64 0, 2305843009213693952) %33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #27
          to label %panic.i.i102.cont unwind label %cleanup

panic.i.i102.cont:                                ; preds = %panic.i.i102.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit106": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i29, i64 8
  %_6.i103 = load ptr, ptr %35, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i104 = getelementptr inbounds nuw i32, ptr %_6.i103, i64 %_29
  store i32 0, ptr %_0.i.i104, align 4
  br label %bb37

terminate:                                        ; preds = %cleanup
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb42:                                             ; preds = %cleanup
  resume { ptr, i32 } %13
}
