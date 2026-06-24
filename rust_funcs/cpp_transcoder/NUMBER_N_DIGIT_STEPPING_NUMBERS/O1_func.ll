define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit: ; preds = %start
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
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %_6 = icmp eq i32 %n, 1
  br i1 %_6, label %bb56, label %bb7.preheader

bb7.preheader:                                    ; preds = %_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb10

cleanup:                                          ; preds = %panic.i.i162.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb58 unwind label %terminate

bb16.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit166"
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i16467 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i16467, label %bb48.preheader, label %bb22.preheader.lr.ph

bb22.preheader.lr.ph:                             ; preds = %bb16.preheader
  %.not = icmp eq i32 %n, 2
  %iter1.sroa.7.1473 = zext i1 %.not to i8
  %_0.i3.i.i18468.not = icmp eq i32 %n, 2
  %iter1.sroa.0.1472 = select i1 %_0.i3.i.i18468.not, i32 2, i32 3
  br label %bb22.preheader

bb10:                                             ; preds = %bb7.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit166"
  %_0.sroa.3.0.i.i463 = phi i64 [ 0, %bb7.preheader ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit166" ]
  %iter.sroa.0.1462 = phi i64 [ 1, %bb7.preheader ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit166" ]
  %iter.sroa.7.1461 = phi i8 [ 0, %bb7.preheader ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit166" ]
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, 1
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit", label %panic.i.i162.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit": ; preds = %bb10
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %14 = getelementptr inbounds nuw i8, ptr %_6.i, i64 40
  %len.i160 = load i64, ptr %14, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i161 = icmp ult i64 %_0.sroa.3.0.i.i463, %len.i160
  br i1 %_4.i.i161, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit166", label %panic.i.i162.invoke

bb16.loopexit:                                    ; preds = %bb45
  %_10.i.i11 = trunc nuw i8 %iter1.sroa.7.1476 to i1
  %_0.i.not.i.i16 = icmp sgt i32 %iter1.sroa.0.1475, %n
  %or.cond174 = select i1 %_10.i.i11, i1 true, i1 %_0.i.not.i.i16
  %_0.i3.i.i18 = icmp slt i32 %iter1.sroa.0.1475, %n
  %not.or.cond174 = xor i1 %or.cond174, true
  %narrow = select i1 %not.or.cond174, i1 %_0.i3.i.i18, i1 false
  %spec.select168 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1475, %spec.select168
  %15 = select i1 %or.cond174, i1 true, i1 %_0.i3.i.i18
  %iter1.sroa.7.1 = select i1 %15, i8 %iter1.sroa.7.1476, i8 1
  br i1 %or.cond174, label %bb48.preheader, label %bb22.preheader

bb22.preheader:                                   ; preds = %bb22.preheader.lr.ph, %bb16.loopexit
  %iter1.sroa.7.1476 = phi i8 [ %iter1.sroa.7.1473, %bb22.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb16.loopexit ]
  %iter1.sroa.0.1475 = phi i32 [ %iter1.sroa.0.1472, %bb22.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb16.loopexit ]
  %iter1.sroa.0.0474 = phi i32 [ 2, %bb22.preheader.lr.ph ], [ %iter1.sroa.0.1475, %bb16.loopexit ]
  %_49 = add nsw i32 %iter1.sroa.0.0474, -1
  %_48 = sext i32 %_49 to i64
  %_54 = zext nneg i32 %iter1.sroa.0.0474 to i64
  %_37 = add nsw i32 %iter1.sroa.0.0474, -1
  %_36 = sext i32 %_37 to i64
  %_42 = zext nneg i32 %iter1.sroa.0.0474 to i64
  %_60 = add nsw i32 %iter1.sroa.0.0474, -1
  %_59 = sext i32 %_60 to i64
  %_70 = zext nneg i32 %iter1.sroa.0.0474 to i64
  br label %bb24

bb48.preheader:                                   ; preds = %bb16.loopexit, %bb16.preheader
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i37 = load i64, ptr %16, align 8
  %_4.i.i38 = icmp ugt i64 %len.i37, %_5
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i40 = load ptr, ptr %17, align 8, !nonnull !15
  %_0.i.i41 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i40, i64 %_5
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i41, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i41, i64 8
  br label %bb50

bb50:                                             ; preds = %bb48.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit"
  %_0.sroa.3.0.i.i32480 = phi i64 [ 1, %bb48.preheader ], [ %_0.sroa.3.0.i.i32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ]
  %iter3.sroa.7.1479 = phi i8 [ 0, %bb48.preheader ], [ %iter3.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ]
  %iter3.sroa.0.1478 = phi i64 [ 2, %bb48.preheader ], [ %iter3.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ]
  %sum.sroa.0.0477 = phi i32 [ 0, %bb48.preheader ], [ %20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ]
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit", label %panic.i.i162.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit": ; preds = %bb50
  %len.i43 = load i64, ptr %18, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i44 = icmp ult i64 %_0.sroa.3.0.i.i32480, %len.i43
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit", label %panic.i.i162.invoke

bb56:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit", %_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit
  %sum.sroa.0.1 = phi i32 [ 10, %_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit ], [ %20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %sum.sroa.0.1

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit"
  %_6.i46 = load ptr, ptr %19, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i46, i64 %_0.sroa.3.0.i.i32480
  %_78 = load i32, ptr %_0.i.i47, align 4, !noundef !15
  %20 = add i32 %_78, %sum.sroa.0.0477
  %_10.i.i23 = trunc nuw i8 %iter3.sroa.7.1479 to i1
  %_0.i.not.i.i28 = icmp ugt i64 %iter3.sroa.0.1478, 9
  %or.cond175 = select i1 %_10.i.i23, i1 true, i1 %_0.i.not.i.i28
  %_0.i3.i.i30.not = icmp eq i64 %iter3.sroa.0.1478, 9
  %_0.i4.i.i35 = add nuw nsw i64 %iter3.sroa.0.1478, 1
  %spec.select170 = select i1 %_0.i3.i.i30.not, i64 9, i64 %_0.i4.i.i35
  %spec.select171 = select i1 %_0.i3.i.i30.not, i8 1, i8 %iter3.sroa.7.1479
  %iter3.sroa.0.1 = select i1 %or.cond175, i64 %iter3.sroa.0.1478, i64 %spec.select170
  %iter3.sroa.7.1 = select i1 %or.cond175, i8 %iter3.sroa.7.1479, i8 %spec.select171
  %_0.sroa.3.0.i.i32 = select i1 %_10.i.i23, i64 undef, i64 %iter3.sroa.0.1478
  br i1 %or.cond175, label %bb56, label %bb50

bb24:                                             ; preds = %bb22.preheader, %bb45
  %_0.sroa.3.0.i.i58466 = phi i64 [ 0, %bb22.preheader ], [ %_0.sroa.3.0.i.i58, %bb45 ]
  %iter2.sroa.7.1465 = phi i8 [ 0, %bb22.preheader ], [ %iter2.sroa.7.1, %bb45 ]
  %iter2.sroa.0.1464 = phi i64 [ 1, %bb22.preheader ], [ %iter2.sroa.0.1, %bb45 ]
  switch i64 %_0.sroa.3.0.i.i58466, label %bb37 [
    i64 0, label %bb26
    i64 9, label %bb32
  ]

bb26:                                             ; preds = %bb24
  %len.i63 = load i64, ptr %10, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i64 = icmp ugt i64 %len.i63, %_36
  br i1 %_4.i.i64, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit69", label %panic.i.i162.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit69": ; preds = %bb26
  %_6.i66 = load ptr, ptr %11, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i67 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i66, i64 %_36
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 16
  %len.i139 = load i64, ptr %21, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i140 = icmp ugt i64 %len.i139, 1
  br i1 %_4.i.i140, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit145", label %panic.i.i162.invoke

bb37:                                             ; preds = %bb24
  %len.i70 = load i64, ptr %12, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i71 = icmp ugt i64 %len.i70, %_59
  br i1 %_4.i.i71, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit76", label %panic.i.i162.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit76": ; preds = %bb37
  %_6.i73 = load ptr, ptr %13, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i74 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i73, i64 %_59
  %_61 = add i64 %_0.sroa.3.0.i.i58466, -1
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 16
  %len.i84 = load i64, ptr %22, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i85 = icmp ult i64 %_61, %len.i84
  br i1 %_4.i.i85, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit90", label %panic.i.i162.invoke

bb32:                                             ; preds = %bb24
  %len.i77 = load i64, ptr %8, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i78 = icmp ugt i64 %len.i77, %_48
  br i1 %_4.i.i78, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit83", label %panic.i.i162.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit83": ; preds = %bb32
  %_6.i80 = load ptr, ptr %9, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i81 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i80, i64 %_48
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i81, i64 16
  %len.i118 = load i64, ptr %23, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i119 = icmp ugt i64 %len.i118, 8
  br i1 %_4.i.i119, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit124", label %panic.i.i162.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit90": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit76"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 8
  %_6.i87 = load ptr, ptr %24, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i88 = getelementptr inbounds nuw i32, ptr %_6.i87, i64 %_61
  %_55 = load i32, ptr %_0.i.i88, align 4, !noundef !15
  %_66 = add i64 %_0.sroa.3.0.i.i58466, 1
  %_4.i.i99 = icmp ult i64 %_66, %len.i84
  br i1 %_4.i.i99, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit104", label %panic.i.i162.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit104": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit90"
  %_0.i.i102 = getelementptr inbounds nuw i32, ptr %_6.i87, i64 %_66
  %_62 = load i32, ptr %_0.i.i102, align 4, !noundef !15
  %_4.i.i106 = icmp ugt i64 %len.i70, %_70
  br i1 %_4.i.i106, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit111", label %panic.i.i162.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit111": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit104"
  %_0.i.i109 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i73, i64 %_70
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i109, i64 16
  %len.i112 = load i64, ptr %25, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i113 = icmp ult i64 %_0.sroa.3.0.i.i58466, %len.i112
  br i1 %_4.i.i113, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit", label %panic.i.i162.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit111"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i109, i64 8
  %_6.i115 = load ptr, ptr %26, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i116 = getelementptr inbounds nuw i32, ptr %_6.i115, i64 %_0.sroa.3.0.i.i58466
  %27 = add i32 %_62, %_55
  store i32 %27, ptr %_0.i.i116, align 4
  br label %bb45

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit124": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit83"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i81, i64 8
  %_6.i121 = load ptr, ptr %28, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i122 = getelementptr inbounds nuw i8, ptr %_6.i121, i64 32
  %_44 = load i32, ptr %_0.i.i122, align 4, !noundef !15
  %_4.i.i126 = icmp ugt i64 %len.i77, %_54
  br i1 %_4.i.i126, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit131", label %panic.i.i162.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit131": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit124"
  %_0.i.i129 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i80, i64 %_54
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i129, i64 16
  %len.i132 = load i64, ptr %29, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i133 = icmp ugt i64 %len.i132, 9
  br i1 %_4.i.i133, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit138", label %panic.i.i162.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit138": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit131"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i129, i64 8
  %_6.i135 = load ptr, ptr %30, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_0.i.i136 = getelementptr inbounds nuw i8, ptr %_6.i135, i64 36
  store i32 %_44, ptr %_0.i.i136, align 4
  br label %bb45

bb45:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit138", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit159"
  %_10.i.i49 = trunc nuw i8 %iter2.sroa.7.1465 to i1
  %_0.i.not.i.i54 = icmp ugt i64 %iter2.sroa.0.1464, 9
  %or.cond176 = select i1 %_10.i.i49, i1 true, i1 %_0.i.not.i.i54
  %_0.i3.i.i56.not = icmp eq i64 %iter2.sroa.0.1464, 9
  %_0.i4.i.i61 = add nuw nsw i64 %iter2.sroa.0.1464, 1
  %spec.select172 = select i1 %_0.i3.i.i56.not, i64 9, i64 %_0.i4.i.i61
  %spec.select173 = select i1 %_0.i3.i.i56.not, i8 1, i8 %iter2.sroa.7.1465
  %iter2.sroa.0.1 = select i1 %or.cond176, i64 %iter2.sroa.0.1464, i64 %spec.select172
  %iter2.sroa.7.1 = select i1 %or.cond176, i8 %iter2.sroa.7.1465, i8 %spec.select173
  %_0.sroa.3.0.i.i58 = select i1 %_10.i.i49, i64 undef, i64 %iter2.sroa.0.1464
  br i1 %or.cond176, label %bb16.loopexit, label %bb24

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit145": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit69"
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 8
  %_6.i142 = load ptr, ptr %31, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i143 = getelementptr inbounds nuw i8, ptr %_6.i142, i64 4
  %_32 = load i32, ptr %_0.i.i143, align 4, !noundef !15
  %_4.i.i147 = icmp ugt i64 %len.i63, %_42
  br i1 %_4.i.i147, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit152", label %panic.i.i162.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit152": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit145"
  %_0.i.i150 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i66, i64 %_42
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i150, i64 16
  %len.i153 = load i64, ptr %32, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i154.not = icmp eq i64 %len.i153, 0
  br i1 %_4.i.i154.not, label %panic.i.i162.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit159"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit159": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit152"
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i150, i64 8
  %_6.i156 = load ptr, ptr %33, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  store i32 %_32, ptr %_6.i156, align 4
  br label %bb45

panic.i.i162.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit", %bb10, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit152", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit145", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit69", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit131", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit124", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit83", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit111", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit104", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit90", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit76", %bb32, %bb37, %bb26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit", %bb50
  %34 = phi i64 [ %_0.sroa.3.0.i.i32480, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit" ], [ %_5, %bb50 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit152" ], [ %_42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit145" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit69" ], [ 9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit131" ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit124" ], [ 8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit83" ], [ %_0.sroa.3.0.i.i58466, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit111" ], [ %_70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit104" ], [ %_66, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit90" ], [ %_61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit76" ], [ %_48, %bb32 ], [ %_59, %bb37 ], [ %_36, %bb26 ], [ %_0.sroa.3.0.i.i463, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit" ], [ 1, %bb10 ]
  %35 = phi i64 [ %len.i43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit" ], [ %len.i37, %bb50 ], [ %len.i153, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit152" ], [ %len.i63, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit145" ], [ %len.i139, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit69" ], [ %len.i132, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit131" ], [ %len.i77, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit124" ], [ %len.i118, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit83" ], [ %len.i112, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit111" ], [ %len.i70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit104" ], [ %len.i84, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit90" ], [ %len.i84, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit76" ], [ %len.i77, %bb32 ], [ %len.i70, %bb37 ], [ %len.i63, %bb26 ], [ %len.i160, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit" ], [ %len.i, %bb10 ]
  %36 = phi ptr [ @alloc_f762c57be3ac5fd7df9f00391c9a5aa5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit" ], [ @alloc_572d1cbf4bd6a83e0e94990f1b12c353, %bb50 ], [ @alloc_5ebc3690d0bc6662087295039269152f, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit152" ], [ @alloc_8a5a0126c115f6f2ff2b2a1cecd70135, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit145" ], [ @alloc_bafed1dfeeea59162dc9b1cf8f6d62ac, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit69" ], [ @alloc_64020b5dd5eea7be84911ab6ba526079, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit131" ], [ @alloc_394e54222eed415fc70c502808323762, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit124" ], [ @alloc_a0fe5d8a83832ba62960089d3abb56f9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit83" ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit111" ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit104" ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit90" ], [ @alloc_0778e43b00b900b737046bb117059600, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit76" ], [ @alloc_3f25a1d7bb9d51cfabbb017863e9617e, %bb32 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb37 ], [ @alloc_1d7d8de1550b39dff9b4dc3a854792f5, %bb26 ], [ @alloc_a4e825c8ab6c98c9148ac7917a39a04d, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit" ], [ @alloc_51e018f0a9df31b591101443d55f9e50, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %34, i64 noundef range(i64 0, 2305843009213693952) %35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %36) #27
          to label %panic.i.i162.cont unwind label %cleanup

panic.i.i162.cont:                                ; preds = %panic.i.i162.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit166": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit"
  %37 = getelementptr inbounds nuw i8, ptr %_6.i, i64 32
  %_6.i163 = load ptr, ptr %37, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i164 = getelementptr inbounds nuw i32, ptr %_6.i163, i64 %_0.sroa.3.0.i.i463
  store i32 1, ptr %_0.i.i164, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1461 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1462, 9
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i.not = icmp eq i64 %iter.sroa.0.1462, 9
  %_0.i4.i.i = add nuw nsw i64 %iter.sroa.0.1462, 1
  %spec.select = select i1 %_0.i3.i.i.not, i8 1, i8 %iter.sroa.7.1461
  %spec.select167 = select i1 %_0.i3.i.i.not, i64 9, i64 %_0.i4.i.i
  %iter.sroa.7.1 = select i1 %or.cond, i8 %iter.sroa.7.1461, i8 %spec.select
  %iter.sroa.0.1 = select i1 %or.cond, i64 %iter.sroa.0.1462, i64 %spec.select167
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1462
  br i1 %or.cond, label %bb16.preheader, label %bb10

terminate:                                        ; preds = %cleanup
  %38 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb58:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
