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
  br i1 %_6, label %bb54, label %bb7.preheader

bb7.preheader:                                    ; preds = %_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb10

cleanup:                                          ; preds = %panic.i.i161.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb57 unwind label %terminate

bb16.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit165"
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i16466 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i16466, label %bb48.preheader, label %bb22.preheader.lr.ph

bb22.preheader.lr.ph:                             ; preds = %bb16.preheader
  %.not = icmp eq i32 %n, 2
  %iter1.sroa.7.1472 = zext i1 %.not to i8
  %_0.i3.i.i18467.not = icmp eq i32 %n, 2
  %iter1.sroa.0.1471 = select i1 %_0.i3.i.i18467.not, i32 2, i32 3
  br label %bb22.preheader

bb10:                                             ; preds = %bb7.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit165"
  %_0.sroa.3.0.i.i462 = phi i64 [ 0, %bb7.preheader ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit165" ]
  %iter.sroa.0.1461 = phi i64 [ 1, %bb7.preheader ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit165" ]
  %iter.sroa.7.1460 = phi i8 [ 0, %bb7.preheader ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit165" ]
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, 1
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit": ; preds = %bb10
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %14 = getelementptr inbounds nuw i8, ptr %_6.i, i64 40
  %len.i159 = load i64, ptr %14, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i160 = icmp ult i64 %_0.sroa.3.0.i.i462, %len.i159
  br i1 %_4.i.i160, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit165", label %panic.i.i161.invoke

bb16.loopexit:                                    ; preds = %bb45
  %_10.i.i11 = trunc nuw i8 %iter1.sroa.7.1475 to i1
  %_0.i.not.i.i16 = icmp sgt i32 %iter1.sroa.0.1474, %n
  %or.cond173 = select i1 %_10.i.i11, i1 true, i1 %_0.i.not.i.i16
  %_0.i3.i.i18 = icmp slt i32 %iter1.sroa.0.1474, %n
  %not.or.cond173 = xor i1 %or.cond173, true
  %narrow = select i1 %not.or.cond173, i1 %_0.i3.i.i18, i1 false
  %spec.select167 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1474, %spec.select167
  %15 = select i1 %or.cond173, i1 true, i1 %_0.i3.i.i18
  %iter1.sroa.7.1 = select i1 %15, i8 %iter1.sroa.7.1475, i8 1
  br i1 %or.cond173, label %bb48.preheader, label %bb22.preheader

bb22.preheader:                                   ; preds = %bb22.preheader.lr.ph, %bb16.loopexit
  %iter1.sroa.7.1475 = phi i8 [ %iter1.sroa.7.1472, %bb22.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb16.loopexit ]
  %iter1.sroa.0.1474 = phi i32 [ %iter1.sroa.0.1471, %bb22.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb16.loopexit ]
  %iter1.sroa.0.0473 = phi i32 [ 2, %bb22.preheader.lr.ph ], [ %iter1.sroa.0.1474, %bb16.loopexit ]
  %_49 = add nsw i32 %iter1.sroa.0.0473, -1
  %_48 = sext i32 %_49 to i64
  %_54 = zext nneg i32 %iter1.sroa.0.0473 to i64
  %_37 = add nsw i32 %iter1.sroa.0.0473, -1
  %_36 = sext i32 %_37 to i64
  %_42 = zext nneg i32 %iter1.sroa.0.0473 to i64
  %_60 = add nsw i32 %iter1.sroa.0.0473, -1
  %_59 = sext i32 %_60 to i64
  %_70 = zext nneg i32 %iter1.sroa.0.0473 to i64
  br label %bb24

bb48.preheader:                                   ; preds = %bb16.loopexit, %bb16.preheader
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i36 = load i64, ptr %16, align 8
  %_4.i.i37 = icmp ugt i64 %len.i36, %_5
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i39 = load ptr, ptr %17, align 8, !nonnull !15
  %_0.i.i40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i39, i64 %_5
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i40, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i40, i64 8
  br label %bb48

bb48:                                             ; preds = %bb48.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit"
  %iter3.sroa.0.0 = phi i32 [ %iter3.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ], [ 1, %bb48.preheader ]
  %iter3.sroa.7.0 = phi i8 [ %iter3.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ], [ 0, %bb48.preheader ]
  %sum.sroa.0.0 = phi i32 [ %22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit" ], [ 0, %bb48.preheader ]
  %_10.i.i23 = trunc nuw i8 %iter3.sroa.7.0 to i1
  %_0.i.not.i.i28 = icmp sgt i32 %iter3.sroa.0.0, 9
  %or.cond174 = select i1 %_10.i.i23, i1 true, i1 %_0.i.not.i.i28
  br i1 %or.cond174, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E.exit35", label %bb2.i.i29

bb2.i.i29:                                        ; preds = %bb48
  %_0.i3.i.i30.not = icmp eq i32 %iter3.sroa.0.0, 9
  %20 = add nsw i32 %iter3.sroa.0.0, 1
  %spec.select169 = select i1 %_0.i3.i.i30.not, i32 9, i32 %20
  %spec.select170 = select i1 %_0.i3.i.i30.not, i8 1, i8 %iter3.sroa.7.0
  %21 = sext i32 %iter3.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E.exit35"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E.exit35": ; preds = %bb2.i.i29, %bb48
  %iter3.sroa.0.1 = phi i32 [ %iter3.sroa.0.0, %bb48 ], [ %spec.select169, %bb2.i.i29 ]
  %iter3.sroa.7.1 = phi i8 [ %iter3.sroa.7.0, %bb48 ], [ %spec.select170, %bb2.i.i29 ]
  %_0.sroa.3.0.i.i32 = phi i64 [ 0, %bb48 ], [ %21, %bb2.i.i29 ]
  br i1 %or.cond174, label %bb54, label %bb50

bb50:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E.exit35"
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit": ; preds = %bb50
  %len.i42 = load i64, ptr %18, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i43 = icmp ult i64 %_0.sroa.3.0.i.i32, %len.i42
  br i1 %_4.i.i43, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit", label %panic.i.i161.invoke

bb54:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E.exit35", %_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit
  %sum.sroa.0.1 = phi i32 [ 10, %_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE.exit ], [ %sum.sroa.0.0, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E.exit35" ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %sum.sroa.0.1

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit"
  %_6.i45 = load ptr, ptr %19, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw i32, ptr %_6.i45, i64 %_0.sroa.3.0.i.i32
  %_78 = load i32, ptr %_0.i.i46, align 4, !noundef !15
  %22 = add i32 %_78, %sum.sroa.0.0
  br label %bb48

bb24:                                             ; preds = %bb22.preheader, %bb45
  %_0.sroa.3.0.i.i57465 = phi i64 [ 0, %bb22.preheader ], [ %_0.sroa.3.0.i.i57, %bb45 ]
  %iter2.sroa.7.1464 = phi i8 [ 0, %bb22.preheader ], [ %iter2.sroa.7.1, %bb45 ]
  %iter2.sroa.0.1463 = phi i64 [ 1, %bb22.preheader ], [ %iter2.sroa.0.1, %bb45 ]
  switch i64 %_0.sroa.3.0.i.i57465, label %bb37 [
    i64 0, label %bb26
    i64 9, label %bb32
  ]

bb26:                                             ; preds = %bb24
  %len.i62 = load i64, ptr %10, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i63 = icmp ugt i64 %len.i62, %_36
  br i1 %_4.i.i63, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit68", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit68": ; preds = %bb26
  %_6.i65 = load ptr, ptr %11, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i66 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %_36
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 16
  %len.i138 = load i64, ptr %23, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i139 = icmp ugt i64 %len.i138, 1
  br i1 %_4.i.i139, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit144", label %panic.i.i161.invoke

bb37:                                             ; preds = %bb24
  %len.i69 = load i64, ptr %12, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i70 = icmp ugt i64 %len.i69, %_59
  br i1 %_4.i.i70, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit75", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit75": ; preds = %bb37
  %_6.i72 = load ptr, ptr %13, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i73 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i72, i64 %_59
  %_61 = add i64 %_0.sroa.3.0.i.i57465, -1
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i73, i64 16
  %len.i83 = load i64, ptr %24, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i84 = icmp ult i64 %_61, %len.i83
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit89", label %panic.i.i161.invoke

bb32:                                             ; preds = %bb24
  %len.i76 = load i64, ptr %8, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i77 = icmp ugt i64 %len.i76, %_48
  br i1 %_4.i.i77, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit82", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit82": ; preds = %bb32
  %_6.i79 = load ptr, ptr %9, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i79, i64 %_48
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i117 = load i64, ptr %25, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i118 = icmp ugt i64 %len.i117, 8
  br i1 %_4.i.i118, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit123", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit89": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit75"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i73, i64 8
  %_6.i86 = load ptr, ptr %26, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_61
  %_55 = load i32, ptr %_0.i.i87, align 4, !noundef !15
  %_66 = add i64 %_0.sroa.3.0.i.i57465, 1
  %_4.i.i98 = icmp ult i64 %_66, %len.i83
  br i1 %_4.i.i98, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit103", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit103": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit89"
  %_0.i.i101 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_66
  %_62 = load i32, ptr %_0.i.i101, align 4, !noundef !15
  %_4.i.i105 = icmp ugt i64 %len.i69, %_70
  br i1 %_4.i.i105, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit110", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit110": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit103"
  %_0.i.i108 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i72, i64 %_70
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i108, i64 16
  %len.i111 = load i64, ptr %27, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i112 = icmp ult i64 %_0.sroa.3.0.i.i57465, %len.i111
  br i1 %_4.i.i112, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit110"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i108, i64 8
  %_6.i114 = load ptr, ptr %28, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i115 = getelementptr inbounds nuw i32, ptr %_6.i114, i64 %_0.sroa.3.0.i.i57465
  %29 = add i32 %_62, %_55
  store i32 %29, ptr %_0.i.i115, align 4
  br label %bb45

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit123": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit82"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i120 = load ptr, ptr %30, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i121 = getelementptr inbounds nuw i8, ptr %_6.i120, i64 32
  %_44 = load i32, ptr %_0.i.i121, align 4, !noundef !15
  %_4.i.i125 = icmp ugt i64 %len.i76, %_54
  br i1 %_4.i.i125, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit130", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit130": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit123"
  %_0.i.i128 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i79, i64 %_54
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i128, i64 16
  %len.i131 = load i64, ptr %31, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i132 = icmp ugt i64 %len.i131, 9
  br i1 %_4.i.i132, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit137", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit137": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit130"
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i128, i64 8
  %_6.i134 = load ptr, ptr %32, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_0.i.i135 = getelementptr inbounds nuw i8, ptr %_6.i134, i64 36
  store i32 %_44, ptr %_0.i.i135, align 4
  br label %bb45

bb45:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit137", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit158"
  %_10.i.i48 = trunc nuw i8 %iter2.sroa.7.1464 to i1
  %_0.i.not.i.i53 = icmp ugt i64 %iter2.sroa.0.1463, 9
  %or.cond175 = select i1 %_10.i.i48, i1 true, i1 %_0.i.not.i.i53
  %_0.i3.i.i55.not = icmp eq i64 %iter2.sroa.0.1463, 9
  %_0.i4.i.i60 = add nuw nsw i64 %iter2.sroa.0.1463, 1
  %spec.select171 = select i1 %_0.i3.i.i55.not, i64 9, i64 %_0.i4.i.i60
  %spec.select172 = select i1 %_0.i3.i.i55.not, i8 1, i8 %iter2.sroa.7.1464
  %iter2.sroa.0.1 = select i1 %or.cond175, i64 %iter2.sroa.0.1463, i64 %spec.select171
  %iter2.sroa.7.1 = select i1 %or.cond175, i8 %iter2.sroa.7.1464, i8 %spec.select172
  %_0.sroa.3.0.i.i57 = select i1 %_10.i.i48, i64 undef, i64 %iter2.sroa.0.1463
  br i1 %or.cond175, label %bb16.loopexit, label %bb24

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit144": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit68"
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 8
  %_6.i141 = load ptr, ptr %33, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i142 = getelementptr inbounds nuw i8, ptr %_6.i141, i64 4
  %_32 = load i32, ptr %_0.i.i142, align 4, !noundef !15
  %_4.i.i146 = icmp ugt i64 %len.i62, %_42
  br i1 %_4.i.i146, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit151", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit151": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit144"
  %_0.i.i149 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %_42
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i149, i64 16
  %len.i152 = load i64, ptr %34, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i153.not = icmp eq i64 %len.i152, 0
  br i1 %_4.i.i153.not, label %panic.i.i161.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit158"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit158": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit151"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i149, i64 8
  %_6.i155 = load ptr, ptr %35, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  store i32 %_32, ptr %_6.i155, align 4
  br label %bb45

panic.i.i161.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit", %bb10, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit151", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit144", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit68", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit130", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit123", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit82", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit110", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit103", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit89", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit75", %bb32, %bb37, %bb26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit", %bb50
  %36 = phi i64 [ %_0.sroa.3.0.i.i32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit" ], [ %_5, %bb50 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit151" ], [ %_42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit144" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit68" ], [ 9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit130" ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit123" ], [ 8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit82" ], [ %_0.sroa.3.0.i.i57465, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit110" ], [ %_70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit103" ], [ %_66, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit89" ], [ %_61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit75" ], [ %_48, %bb32 ], [ %_59, %bb37 ], [ %_36, %bb26 ], [ %_0.sroa.3.0.i.i462, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit" ], [ 1, %bb10 ]
  %37 = phi i64 [ %len.i42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit" ], [ %len.i36, %bb50 ], [ %len.i152, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit151" ], [ %len.i62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit144" ], [ %len.i138, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit68" ], [ %len.i131, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit130" ], [ %len.i76, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit123" ], [ %len.i117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit82" ], [ %len.i111, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit110" ], [ %len.i69, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit103" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit89" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit75" ], [ %len.i76, %bb32 ], [ %len.i69, %bb37 ], [ %len.i62, %bb26 ], [ %len.i159, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit" ], [ %len.i, %bb10 ]
  %38 = phi ptr [ @alloc_530490e34fb011f13f1f5621b51b3418, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit" ], [ @alloc_f03cd92664b51039c91525c5e8959c65, %bb50 ], [ @alloc_6df30d5534b44e6b3854ca9c3571d54c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit151" ], [ @alloc_2a4ef6b7d0558cc6888f2353d0a84baa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit144" ], [ @alloc_94f09ad24bf1baf03b88bc4564ae5f8e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit68" ], [ @alloc_538882bfaf147ec94619242a84db67bc, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit130" ], [ @alloc_50dad301657deaf751678c1435222d49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit123" ], [ @alloc_6888d7607a9c5a68b1f07ad43b416d5f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit82" ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit110" ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit103" ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE.exit89" ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE.exit75" ], [ @alloc_195bc6716cbaa7f5cf11ba50192f2255, %bb32 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb37 ], [ @alloc_18df04020dbb408023baa4fb892d4c53, %bb26 ], [ @alloc_32d3d7b2ec74aa472095090785c9cb93, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit" ], [ @alloc_5c433a824e669530951056dd03df0465, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef range(i64 0, 2305843009213693952) %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #27
          to label %panic.i.i161.cont unwind label %cleanup

panic.i.i161.cont:                                ; preds = %panic.i.i161.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE.exit165": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE.exit"
  %39 = getelementptr inbounds nuw i8, ptr %_6.i, i64 32
  %_6.i162 = load ptr, ptr %39, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i163 = getelementptr inbounds nuw i32, ptr %_6.i162, i64 %_0.sroa.3.0.i.i462
  store i32 1, ptr %_0.i.i163, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1460 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1461, 9
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i.not = icmp eq i64 %iter.sroa.0.1461, 9
  %_0.i4.i.i = add nuw nsw i64 %iter.sroa.0.1461, 1
  %spec.select = select i1 %_0.i3.i.i.not, i8 1, i8 %iter.sroa.7.1460
  %spec.select166 = select i1 %_0.i3.i.i.not, i64 9, i64 %_0.i4.i.i
  %iter.sroa.7.1 = select i1 %or.cond, i8 %iter.sroa.7.1460, i8 %spec.select
  %iter.sroa.0.1 = select i1 %or.cond, i64 %iter.sroa.0.1461, i64 %spec.select166
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1461
  br i1 %or.cond, label %bb16.preheader, label %bb10

terminate:                                        ; preds = %cleanup
  %40 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb57:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
