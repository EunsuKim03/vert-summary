define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef 10, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 10, ptr %4, align 8, !alias.scope !1681
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i10.not, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit"

cleanup:                                          ; preds = %panic.i.i97.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %a) #30
          to label %bb41 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit": ; preds = %_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE.exit
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %8 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i95 = load i64, ptr %8, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.not = icmp eq i64 %len.i95, 0
  br i1 %_4.i.i96.not, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101"

bb13:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.9", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit94"
  %iter1.sroa.0.0 = phi i32 [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit94" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.9" ]
  %iter1.sroa.7.0 = phi i8 [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit94" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.9" ]
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter1.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit", label %bb2.i.i13

bb2.i.i13:                                        ; preds = %bb13
  %_0.i3.i.i = icmp slt i32 %iter1.sroa.0.0, %n
  %9 = zext i1 %_0.i3.i.i to i32
  %spec.select103 = add nsw i32 %iter1.sroa.0.0, %9
  %spec.select104 = select i1 %_0.i3.i.i, i8 %iter1.sroa.7.0, i8 1
  %10 = sext i32 %iter1.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit": ; preds = %bb2.i.i13, %bb13
  %iter1.sroa.0.1 = phi i32 [ %iter1.sroa.0.0, %bb13 ], [ %spec.select103, %bb2.i.i13 ]
  %iter1.sroa.7.1 = phi i8 [ %iter1.sroa.7.0, %bb13 ], [ %spec.select104, %bb2.i.i13 ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb13 ], [ %10, %bb2.i.i13 ]
  br i1 %or.cond, label %bb21.preheader, label %bb15

bb21.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit"
  %11 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_0.i.not.i.i26210 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i26210, label %bb24, label %bb27.preheader.lr.ph

bb27.preheader.lr.ph:                             ; preds = %bb21.preheader
  %.not = icmp eq i32 %n, 1
  %iter2.sroa.7.1216 = zext i1 %.not to i8
  %_0.i3.i.i28211.not = icmp eq i32 %n, 1
  %iter2.sroa.0.1215 = select i1 %_0.i3.i.i28211.not, i32 1, i32 2
  br label %bb27.preheader

bb15:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit"
  %_4.i.i16 = icmp ult i64 %_0.sroa.3.0.i.i, %len.i15
  br i1 %_4.i.i16, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit20", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit20": ; preds = %bb15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i18, i64 %_0.sroa.3.0.i.i
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i88 = load i64, ptr %13, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i89 = icmp ugt i64 %len.i88, 9
  br i1 %_4.i.i89, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit94", label %panic.i.i97.invoke

bb21.loopexit:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit"
  %_10.i.i21 = trunc nuw i8 %iter2.sroa.7.1219 to i1
  %_0.i.not.i.i26 = icmp sgt i32 %iter2.sroa.0.1218, %n
  %or.cond107 = select i1 %_10.i.i21, i1 true, i1 %_0.i.not.i.i26
  %_0.i3.i.i28 = icmp slt i32 %iter2.sroa.0.1218, %n
  %not.or.cond107 = xor i1 %or.cond107, true
  %narrow = select i1 %not.or.cond107, i1 %_0.i3.i.i28, i1 false
  %spec.select105 = zext i1 %narrow to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.1218, %spec.select105
  %14 = select i1 %or.cond107, i1 true, i1 %_0.i3.i.i28
  %iter2.sroa.7.1 = select i1 %14, i8 %iter2.sroa.7.1219, i8 1
  br i1 %or.cond107, label %bb24, label %bb27.preheader

bb27.preheader:                                   ; preds = %bb27.preheader.lr.ph, %bb21.loopexit
  %iter2.sroa.7.1219 = phi i8 [ %iter2.sroa.7.1216, %bb27.preheader.lr.ph ], [ %iter2.sroa.7.1, %bb21.loopexit ]
  %iter2.sroa.0.1218 = phi i32 [ %iter2.sroa.0.1215, %bb27.preheader.lr.ph ], [ %iter2.sroa.0.1, %bb21.loopexit ]
  %iter2.sroa.0.0217 = phi i32 [ 1, %bb27.preheader.lr.ph ], [ %iter2.sroa.0.1218, %bb21.loopexit ]
  %_45 = add nsw i32 %iter2.sroa.0.0217, -1
  %_44 = sext i32 %_45 to i64
  %_50 = zext nneg i32 %iter2.sroa.0.0217 to i64
  br label %bb29

bb24:                                             ; preds = %bb21.loopexit, %bb21.preheader
  %15 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %len.i34 = load i64, ptr %15, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i35 = icmp ugt i64 %len.i34, %_5
  br i1 %_4.i.i35, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit", label %panic.i.i97.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit": ; preds = %bb24
  %16 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_6.i37 = load ptr, ptr %16, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i38 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i37, i64 %_5
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i38, i64 16
  %len.i40 = load i64, ptr %17, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i41.not = icmp eq i64 %len.i40, 0
  br i1 %_4.i.i41.not, label %panic.i.i97.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit"
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i38, i64 8
  %_6.i43 = load ptr, ptr %18, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0 = load i32, ptr %_6.i43, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %a)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0

bb29:                                             ; preds = %bb27.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit"
  %iter3.sroa.4.1142 = phi i64 [ 8, %bb27.preheader ], [ %iter3.sroa.4.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit" ]
  %_0.i1.i.i.i141 = phi i64 [ 8, %bb27.preheader ], [ %_0.i1.i.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit" ]
  %iter3.sroa.4.0140 = phi i64 [ 9, %bb27.preheader ], [ %iter3.sroa.4.1142, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit" ]
  %len.i47 = load i64, ptr %11, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i48 = icmp ugt i64 %len.i47, %_44
  br i1 %_4.i.i48, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit53", label %panic.i.i97.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit53": ; preds = %bb29
  %_6.i50 = load ptr, ptr %12, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i51 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i50, i64 %_44
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i51, i64 16
  %len.i54 = load i64, ptr %19, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i55 = icmp ult i64 %_0.i1.i.i.i141, %len.i54
  br i1 %_4.i.i55, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit60", label %panic.i.i97.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit60": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit53"
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i51, i64 8
  %_6.i57 = load ptr, ptr %20, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i58 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_0.i1.i.i.i141
  %_40 = load i32, ptr %_0.i.i58, align 4, !noundef !15
  %_4.i.i62 = icmp ugt i64 %len.i47, %_50
  br i1 %_4.i.i62, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit67", label %panic.i.i97.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit67": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit60"
  %_0.i.i65 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i50, i64 %_50
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i65, i64 16
  %len.i68 = load i64, ptr %21, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i69 = icmp ult i64 %iter3.sroa.4.0140, %len.i68
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit74", label %panic.i.i97.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit67"
  %_4.i.i83 = icmp ult i64 %_0.i1.i.i.i141, %len.i68
  br i1 %_4.i.i83, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit74"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i65, i64 8
  %_6.i71 = load ptr, ptr %22, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i71, i64 %iter3.sroa.4.0140
  %_46 = load i32, ptr %_0.i.i72, align 4, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i71, i64 %_0.i1.i.i.i141
  %23 = add i32 %_46, %_40
  store i32 %23, ptr %_0.i.i86, align 4
  %_0.i.i.i.i.not.not = icmp eq i64 %iter3.sroa.4.1142, 0
  %_0.i1.i.i.i = add i64 %iter3.sroa.4.1142, -1
  %iter3.sroa.4.1 = call i64 @llvm.usub.sat.i64(i64 %iter3.sroa.4.1142, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb21.loopexit, label %bb29

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit94": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit20"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i91 = load ptr, ptr %24, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i92 = getelementptr inbounds nuw i8, ptr %_6.i91, i64 36
  store i32 1, ptr %_0.i.i92, align 4
  br label %bb13

panic.i.i97.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit20", %bb15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit74", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit67", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit60", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit53", %bb29, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.2", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.3", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.4", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.5", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.6", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.7", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.8", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.9", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit", %bb24, %_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE.exit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.2", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.3", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.4", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.5", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.6", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.7", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.8"
  %25 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.8" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.7" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.6" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.5" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.4" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.3" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.2" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.1" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101" ], [ 0, %_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE.exit ], [ %_5, %bb24 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.1" ], [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.2" ], [ 3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.3" ], [ 4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.4" ], [ 5, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.5" ], [ 6, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.6" ], [ 7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.7" ], [ 8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.8" ], [ 9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.9" ], [ %_0.i1.i.i.i141, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit74" ], [ %iter3.sroa.4.0140, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit67" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit60" ], [ %_0.i1.i.i.i141, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit53" ], [ %_44, %bb29 ], [ 9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit20" ], [ %_0.sroa.3.0.i.i, %bb15 ]
  %26 = phi i64 [ %len.i.9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.8" ], [ %len.i.8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.7" ], [ %len.i.7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.6" ], [ %len.i.6, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.5" ], [ %len.i.5, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.4" ], [ %len.i.4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.3" ], [ %len.i.3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.2" ], [ %len.i.2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.1" ], [ %len.i.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101" ], [ %len.i, %_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE.exit ], [ %len.i34, %bb24 ], [ %len.i40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit" ], [ %len.i95, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit" ], [ %len.i95.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.1" ], [ %len.i95.2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.2" ], [ %len.i95.3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.3" ], [ %len.i95.4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.4" ], [ %len.i95.5, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.5" ], [ %len.i95.6, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.6" ], [ %len.i95.7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.7" ], [ %len.i95.8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.8" ], [ %len.i95.9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.9" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit74" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit67" ], [ %len.i47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit60" ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit53" ], [ %len.i47, %bb29 ], [ %len.i88, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit20" ], [ %len.i15, %bb15 ]
  %27 = phi ptr [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.8" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.7" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.6" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.5" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.4" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.3" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.2" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.1" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101" ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE.exit ], [ @alloc_ad53536c75336b5b550143ae8351bbba, %bb24 ], [ @alloc_a9295b2bed659bc12bf462e33dce4bc3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.1" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.2" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.3" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.4" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.5" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.6" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.7" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.8" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.9" ], [ @alloc_711be6953d5959899d54bc84453395c0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit74" ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit67" ], [ @alloc_58177cf6f21ea68bee3e8bdbc951e9f2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit60" ], [ @alloc_422063443952b1d6e7a3f175e781b928, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit53" ], [ @alloc_97257dea4c25d16ac01dfed9157b334f, %bb29 ], [ @alloc_28514442b776d66058ab6f17c9cbc078, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit20" ], [ @alloc_05b19055f92c9d5e9f047356ec5db620, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %25, i64 noundef range(i64 0, 2305843009213693952) %26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %27) #27
          to label %panic.i.i97.cont unwind label %cleanup

panic.i.i97.cont:                                 ; preds = %panic.i.i97.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit"
  %28 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i98 = load ptr, ptr %28, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  store i32 1, ptr %_6.i98, align 4
  %len.i.1 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.1 = icmp eq i64 %len.i.1, 0
  br i1 %_4.i.i10.not.1, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.1"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.1": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101"
  %_6.i.1 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %29 = getelementptr inbounds nuw i8, ptr %_6.i.1, i64 16
  %len.i95.1 = load i64, ptr %29, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.1 = icmp ugt i64 %len.i95.1, 1
  br i1 %_4.i.i96.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.1", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.1": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.1"
  %30 = getelementptr inbounds nuw i8, ptr %_6.i.1, i64 8
  %_6.i98.1 = load ptr, ptr %30, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.1 = getelementptr inbounds nuw i8, ptr %_6.i98.1, i64 4
  store i32 1, ptr %_0.i.i99.1, align 4
  %len.i.2 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.2 = icmp eq i64 %len.i.2, 0
  br i1 %_4.i.i10.not.2, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.2"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.2": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.1"
  %_6.i.2 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %31 = getelementptr inbounds nuw i8, ptr %_6.i.2, i64 16
  %len.i95.2 = load i64, ptr %31, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.2 = icmp ugt i64 %len.i95.2, 2
  br i1 %_4.i.i96.2, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.2", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.2": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.2"
  %32 = getelementptr inbounds nuw i8, ptr %_6.i.2, i64 8
  %_6.i98.2 = load ptr, ptr %32, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.2 = getelementptr inbounds nuw i8, ptr %_6.i98.2, i64 8
  store i32 1, ptr %_0.i.i99.2, align 4
  %len.i.3 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.3 = icmp eq i64 %len.i.3, 0
  br i1 %_4.i.i10.not.3, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.3"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.3": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.2"
  %_6.i.3 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %33 = getelementptr inbounds nuw i8, ptr %_6.i.3, i64 16
  %len.i95.3 = load i64, ptr %33, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.3 = icmp ugt i64 %len.i95.3, 3
  br i1 %_4.i.i96.3, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.3", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.3": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.3"
  %34 = getelementptr inbounds nuw i8, ptr %_6.i.3, i64 8
  %_6.i98.3 = load ptr, ptr %34, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.3 = getelementptr inbounds nuw i8, ptr %_6.i98.3, i64 12
  store i32 1, ptr %_0.i.i99.3, align 4
  %len.i.4 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.4 = icmp eq i64 %len.i.4, 0
  br i1 %_4.i.i10.not.4, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.4"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.4": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.3"
  %_6.i.4 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %35 = getelementptr inbounds nuw i8, ptr %_6.i.4, i64 16
  %len.i95.4 = load i64, ptr %35, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.4 = icmp ugt i64 %len.i95.4, 4
  br i1 %_4.i.i96.4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.4", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.4": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.4"
  %36 = getelementptr inbounds nuw i8, ptr %_6.i.4, i64 8
  %_6.i98.4 = load ptr, ptr %36, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.4 = getelementptr inbounds nuw i8, ptr %_6.i98.4, i64 16
  store i32 1, ptr %_0.i.i99.4, align 4
  %len.i.5 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.5 = icmp eq i64 %len.i.5, 0
  br i1 %_4.i.i10.not.5, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.5"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.5": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.4"
  %_6.i.5 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %37 = getelementptr inbounds nuw i8, ptr %_6.i.5, i64 16
  %len.i95.5 = load i64, ptr %37, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.5 = icmp ugt i64 %len.i95.5, 5
  br i1 %_4.i.i96.5, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.5", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.5": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.5"
  %38 = getelementptr inbounds nuw i8, ptr %_6.i.5, i64 8
  %_6.i98.5 = load ptr, ptr %38, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.5 = getelementptr inbounds nuw i8, ptr %_6.i98.5, i64 20
  store i32 1, ptr %_0.i.i99.5, align 4
  %len.i.6 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.6 = icmp eq i64 %len.i.6, 0
  br i1 %_4.i.i10.not.6, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.6"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.6": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.5"
  %_6.i.6 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %39 = getelementptr inbounds nuw i8, ptr %_6.i.6, i64 16
  %len.i95.6 = load i64, ptr %39, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.6 = icmp ugt i64 %len.i95.6, 6
  br i1 %_4.i.i96.6, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.6", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.6": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.6"
  %40 = getelementptr inbounds nuw i8, ptr %_6.i.6, i64 8
  %_6.i98.6 = load ptr, ptr %40, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.6 = getelementptr inbounds nuw i8, ptr %_6.i98.6, i64 24
  store i32 1, ptr %_0.i.i99.6, align 4
  %len.i.7 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.7 = icmp eq i64 %len.i.7, 0
  br i1 %_4.i.i10.not.7, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.7"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.7": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.6"
  %_6.i.7 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %41 = getelementptr inbounds nuw i8, ptr %_6.i.7, i64 16
  %len.i95.7 = load i64, ptr %41, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.7 = icmp ugt i64 %len.i95.7, 7
  br i1 %_4.i.i96.7, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.7", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.7": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.7"
  %42 = getelementptr inbounds nuw i8, ptr %_6.i.7, i64 8
  %_6.i98.7 = load ptr, ptr %42, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.7 = getelementptr inbounds nuw i8, ptr %_6.i98.7, i64 28
  store i32 1, ptr %_0.i.i99.7, align 4
  %len.i.8 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.8 = icmp eq i64 %len.i.8, 0
  br i1 %_4.i.i10.not.8, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.8"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.8": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.7"
  %_6.i.8 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %43 = getelementptr inbounds nuw i8, ptr %_6.i.8, i64 16
  %len.i95.8 = load i64, ptr %43, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.8 = icmp ugt i64 %len.i95.8, 8
  br i1 %_4.i.i96.8, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.8", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.8": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.8"
  %44 = getelementptr inbounds nuw i8, ptr %_6.i.8, i64 8
  %_6.i98.8 = load ptr, ptr %44, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.8 = getelementptr inbounds nuw i8, ptr %_6.i98.8, i64 32
  store i32 1, ptr %_0.i.i99.8, align 4
  %len.i.9 = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10.not.9 = icmp eq i64 %len.i.9, 0
  br i1 %_4.i.i10.not.9, label %panic.i.i97.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.9"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.9": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.8"
  %_6.i.9 = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %45 = getelementptr inbounds nuw i8, ptr %_6.i.9, i64 16
  %len.i95.9 = load i64, ptr %45, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i96.9 = icmp ugt i64 %len.i95.9, 9
  br i1 %_4.i.i96.9, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.9", label %panic.i.i97.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit101.9": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit.9"
  %46 = getelementptr inbounds nuw i8, ptr %_6.i.9, i64 8
  %_6.i98.9 = load ptr, ptr %46, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i99.9 = getelementptr inbounds nuw i8, ptr %_6.i98.9, i64 36
  store i32 1, ptr %_0.i.i99.9, align 4
  %47 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %len.i15 = load i64, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_6.i18 = load ptr, ptr %48, align 8, !nonnull !15
  br label %bb13

terminate:                                        ; preds = %cleanup
  %49 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb41:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
