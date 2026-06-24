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
  %_0.i.not.i.i266 = icmp slt i32 %m, 1
  br i1 %_0.i.not.i.i266, label %bb9, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17he2c1cafde31447ceE.exit
  %.not = icmp eq i32 %m, 1
  %iter.sroa.7.1272 = zext i1 %.not to i8
  %_0.i3.i.i267.not = icmp eq i32 %m, 1
  %iter.sroa.0.1271 = select i1 %_0.i3.i.i267.not, i32 1, i32 2
  %_0.i.not.i.i17256 = icmp slt i32 %n, 1
  %.not276 = icmp eq i32 %n, 1
  %iter1.sroa.7.1262 = zext i1 %.not276 to i8
  %_0.i3.i.i19257.not = icmp eq i32 %n, 1
  %iter1.sroa.0.1261 = select i1 %_0.i3.i.i19257.not, i32 1, i32 2
  br label %bb12.preheader

cleanup:                                          ; preds = %panic.i.i88.invoke
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr noalias noundef align 8 dereferenceable(24) %T) #30
          to label %bb36 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb31, %bb12.preheader
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1274 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1273, %m
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1273, %m
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1273, %spec.select
  %12 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %12, i8 %iter.sroa.7.1274, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1273
  br i1 %or.cond, label %bb9, label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i275 = phi i32 [ 1, %bb12.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1274 = phi i8 [ %iter.sroa.7.1272, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1273 = phi i32 [ %iter.sroa.0.1271, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %_40 = add i32 %_0.sroa.3.0.i.i275, -1
  %_39 = sext i32 %_40 to i64
  %_47 = sdiv i32 %_0.sroa.3.0.i.i275, 2
  %_46 = sext i32 %_47 to i64
  %_53 = sext i32 %_0.sroa.3.0.i.i275 to i64
  %_33 = sext i32 %_0.sroa.3.0.i.i275 to i64
  %_27 = sext i32 %_0.sroa.3.0.i.i275 to i64
  br i1 %_0.i.not.i.i17256, label %bb5.loopexit, label %bb14

bb9:                                              ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17he2c1cafde31447ceE.exit
  %13 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %len.i = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, %_8
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit": ; preds = %bb9
  %14 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %_6.i = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_8
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i6 = load i64, ptr %15, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i7 = icmp ugt i64 %len.i6, %_6
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit"
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i9 = load ptr, ptr %16, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i10 = getelementptr inbounds nuw i32, ptr %_6.i9, i64 %_6
  %_0 = load i32, ptr %_0.i.i10, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr noalias noundef align 8 dereferenceable(24) %T)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %T)
  ret i32 %_0

bb14:                                             ; preds = %bb12.preheader, %bb31
  %_0.sroa.3.0.i.i21265 = phi i32 [ %_0.sroa.3.0.i.i21, %bb31 ], [ 1, %bb12.preheader ]
  %iter1.sroa.7.1264 = phi i8 [ %iter1.sroa.7.1, %bb31 ], [ %iter1.sroa.7.1262, %bb12.preheader ]
  %iter1.sroa.0.1263 = phi i32 [ %iter1.sroa.0.1, %bb31 ], [ %iter1.sroa.0.1261, %bb12.preheader ]
  %_23 = icmp slt i32 %_0.sroa.3.0.i.i275, %_0.sroa.3.0.i.i21265
  br i1 %_23, label %bb16, label %bb19

bb19:                                             ; preds = %bb14
  %_29 = icmp eq i32 %_0.sroa.3.0.i.i21265, 1
  br i1 %_29, label %bb20, label %bb23

bb16:                                             ; preds = %bb14
  %len.i25 = load i64, ptr %9, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i26 = icmp ugt i64 %len.i25, %_27
  br i1 %_4.i.i26, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit", label %panic.i.i88.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit": ; preds = %bb16
  %_6.i28 = load ptr, ptr %10, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i29 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i28, i64 %_27
  %_28 = sext i32 %_0.sroa.3.0.i.i21265 to i64
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i29, i64 16
  %len.i86 = load i64, ptr %17, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i87 = icmp ugt i64 %len.i86, %_28
  br i1 %_4.i.i87, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit92", label %panic.i.i88.invoke

bb23:                                             ; preds = %bb19
  %len.i31 = load i64, ptr %5, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i32 = icmp ugt i64 %len.i31, %_39
  br i1 %_4.i.i32, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit37", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit37": ; preds = %bb23
  %_6.i34 = load ptr, ptr %6, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i34, i64 %_39
  %_41 = sext i32 %_0.sroa.3.0.i.i21265 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 16
  %len.i45 = load i64, ptr %18, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i46 = icmp ugt i64 %len.i45, %_41
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit51", label %panic.i.i88.invoke

bb20:                                             ; preds = %bb19
  %len.i38 = load i64, ptr %7, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i39 = icmp ugt i64 %len.i38, %_33
  br i1 %_4.i.i39, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit44", label %panic.i.i88.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit44": ; preds = %bb20
  %_6.i41 = load ptr, ptr %8, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i42 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %_33
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 16
  %len.i79 = load i64, ptr %19, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i80 = icmp ugt i64 %len.i79, 1
  br i1 %_4.i.i80, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit85", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit51": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit37"
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 8
  %_6.i48 = load ptr, ptr %20, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i48, i64 %_41
  %_35 = load i32, ptr %_0.i.i49, align 4, !noundef !15
  %_4.i.i53 = icmp ugt i64 %len.i31, %_46
  br i1 %_4.i.i53, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit58", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit58": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit51"
  %_0.i.i56 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i34, i64 %_46
  %_49 = add i32 %_0.sroa.3.0.i.i21265, -1
  %_48 = sext i32 %_49 to i64
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i56, i64 16
  %len.i59 = load i64, ptr %21, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i60 = icmp ugt i64 %len.i59, %_48
  br i1 %_4.i.i60, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit65", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit65": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit58"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i56, i64 8
  %_6.i62 = load ptr, ptr %22, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i63 = getelementptr inbounds nuw i32, ptr %_6.i62, i64 %_48
  %_42 = load i32, ptr %_0.i.i63, align 4, !noundef !15
  %_4.i.i67 = icmp ugt i64 %len.i31, %_53
  br i1 %_4.i.i67, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit72", label %panic.i.i88.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit65"
  %_0.i.i70 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i34, i64 %_53
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i70, i64 16
  %len.i73 = load i64, ptr %23, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i74 = icmp ugt i64 %len.i73, %_41
  br i1 %_4.i.i74, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit", label %panic.i.i88.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit72"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i70, i64 8
  %_6.i76 = load ptr, ptr %24, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i77 = getelementptr inbounds nuw i32, ptr %_6.i76, i64 %_41
  %25 = add i32 %_42, %_35
  store i32 %25, ptr %_0.i.i77, align 4
  br label %bb31

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit85": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit44"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 8
  %_6.i82 = load ptr, ptr %26, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i83 = getelementptr inbounds nuw i8, ptr %_6.i82, i64 4
  store i32 %_0.sroa.3.0.i.i275, ptr %_0.i.i83, align 4
  br label %bb31

bb31:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit85", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit92"
  %_10.i.i12 = trunc nuw i8 %iter1.sroa.7.1264 to i1
  %_0.i.not.i.i17 = icmp sgt i32 %iter1.sroa.0.1263, %n
  %or.cond96 = select i1 %_10.i.i12, i1 true, i1 %_0.i.not.i.i17
  %_0.i3.i.i19 = icmp slt i32 %iter1.sroa.0.1263, %n
  %not.or.cond96 = xor i1 %or.cond96, true
  %narrow191 = select i1 %not.or.cond96, i1 %_0.i3.i.i19, i1 false
  %spec.select94 = zext i1 %narrow191 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1263, %spec.select94
  %27 = select i1 %or.cond96, i1 true, i1 %_0.i3.i.i19
  %iter1.sroa.7.1 = select i1 %27, i8 %iter1.sroa.7.1264, i8 1
  %_0.sroa.3.0.i.i21 = select i1 %_10.i.i12, i32 undef, i32 %iter1.sroa.0.1263
  br i1 %or.cond96, label %bb5.loopexit, label %bb14

panic.i.i88.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit44", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit72", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit65", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit58", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit51", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit37", %bb20, %bb23, %bb16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit", %bb9
  %28 = phi i64 [ %_8, %bb9 ], [ %_6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit" ], [ %_28, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit44" ], [ %_41, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit72" ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit65" ], [ %_48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit58" ], [ %_46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit51" ], [ %_41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit37" ], [ %_33, %bb20 ], [ %_39, %bb23 ], [ %_27, %bb16 ]
  %29 = phi i64 [ %len.i, %bb9 ], [ %len.i6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit" ], [ %len.i86, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit" ], [ %len.i79, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit44" ], [ %len.i73, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit72" ], [ %len.i31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit65" ], [ %len.i59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit58" ], [ %len.i31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit51" ], [ %len.i45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit37" ], [ %len.i38, %bb20 ], [ %len.i31, %bb23 ], [ %len.i25, %bb16 ]
  %30 = phi ptr [ @alloc_7c505dd7778f7f54b2f075d7a586a2ff, %bb9 ], [ @alloc_d36c1766dc5774f0f4f66bb69479e895, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit" ], [ @alloc_2ccaf0e95f4fdb35ecb2f6b5bf0639fb, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit" ], [ @alloc_af4e2ec7ec6e2fe96889c845c7f5eaf1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit44" ], [ @alloc_7e1bbf5bbd240e8f7ce3ad63cf09205a, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit72" ], [ @alloc_91841cebad64ee16a9ec882d4e99be1d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit65" ], [ @alloc_d354df91300d30d5fabf4edd0f2a2081, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit58" ], [ @alloc_3b8f9903a2bc3656de019ceba635f97a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE.exit51" ], [ @alloc_c2e0156163e436945459be5869f5791d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E.exit37" ], [ @alloc_ffaddeb92256bb0e67ef9b27f0c40008, %bb20 ], [ @alloc_3176ea66d28ae85950d07e450e40d143, %bb23 ], [ @alloc_6f9c8bd6d81dbee1b2eeacc3680df8e3, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %28, i64 noundef range(i64 0, 2305843009213693952) %29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %30) #27
          to label %panic.i.i88.cont unwind label %cleanup

panic.i.i88.cont:                                 ; preds = %panic.i.i88.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E.exit92": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E.exit"
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i29, i64 8
  %_6.i89 = load ptr, ptr %31, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i90 = getelementptr inbounds nuw i32, ptr %_6.i89, i64 %_28
  store i32 0, ptr %_0.i.i90, align 4
  br label %bb31

terminate:                                        ; preds = %cleanup
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb36:                                             ; preds = %cleanup
  resume { ptr, i32 } %11
}
