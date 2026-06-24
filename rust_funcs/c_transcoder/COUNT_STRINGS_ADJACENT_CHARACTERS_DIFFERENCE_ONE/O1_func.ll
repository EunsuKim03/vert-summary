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
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef 27, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h0378bdea375ce31bE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h0378bdea375ce31bE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 27, ptr %4, align 8, !alias.scope !1681
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb8

cleanup:                                          ; preds = %panic.i.i134.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb47 unwind label %terminate

bb14.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit138"
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i16328 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i16328, label %bb39.preheader, label %bb20.preheader.lr.ph

bb20.preheader.lr.ph:                             ; preds = %bb14.preheader
  %.not = icmp eq i32 %n, 2
  %iter1.sroa.7.1334 = zext i1 %.not to i8
  %_0.i3.i.i18329.not = icmp eq i32 %n, 2
  %iter1.sroa.0.1333 = select i1 %_0.i3.i.i18329.not, i32 2, i32 3
  br label %bb20.preheader

bb8:                                              ; preds = %_ZN5alloc3vec9from_elem17h0378bdea375ce31bE.exit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit138"
  %_0.sroa.3.0.i.i324 = phi i64 [ 0, %_ZN5alloc3vec9from_elem17h0378bdea375ce31bE.exit ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit138" ]
  %iter.sroa.0.1323 = phi i64 [ 1, %_ZN5alloc3vec9from_elem17h0378bdea375ce31bE.exit ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit138" ]
  %iter.sroa.7.1322 = phi i8 [ 0, %_ZN5alloc3vec9from_elem17h0378bdea375ce31bE.exit ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit138" ]
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, 1
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit", label %panic.i.i134.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %12 = getelementptr inbounds nuw i8, ptr %_6.i, i64 40
  %len.i132 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i133 = icmp ult i64 %_0.sroa.3.0.i.i324, %len.i132
  br i1 %_4.i.i133, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit138", label %panic.i.i134.invoke

bb14.loopexit:                                    ; preds = %bb36
  %_10.i.i11 = trunc nuw i8 %iter1.sroa.7.1337 to i1
  %_0.i.not.i.i16 = icmp sgt i32 %iter1.sroa.0.1336, %n
  %or.cond146 = select i1 %_10.i.i11, i1 true, i1 %_0.i.not.i.i16
  %_0.i3.i.i18 = icmp slt i32 %iter1.sroa.0.1336, %n
  %not.or.cond146 = xor i1 %or.cond146, true
  %narrow = select i1 %not.or.cond146, i1 %_0.i3.i.i18, i1 false
  %spec.select140 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1336, %spec.select140
  %13 = select i1 %or.cond146, i1 true, i1 %_0.i3.i.i18
  %iter1.sroa.7.1 = select i1 %13, i8 %iter1.sroa.7.1337, i8 1
  br i1 %or.cond146, label %bb39.preheader, label %bb20.preheader

bb20.preheader:                                   ; preds = %bb20.preheader.lr.ph, %bb14.loopexit
  %iter1.sroa.7.1337 = phi i8 [ %iter1.sroa.7.1334, %bb20.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb14.loopexit ]
  %iter1.sroa.0.1336 = phi i32 [ %iter1.sroa.0.1333, %bb20.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb14.loopexit ]
  %iter1.sroa.0.0335 = phi i32 [ 2, %bb20.preheader.lr.ph ], [ %iter1.sroa.0.1336, %bb14.loopexit ]
  %_47 = add nsw i32 %iter1.sroa.0.0335, -1
  %_46 = sext i32 %_47 to i64
  %_57 = zext nneg i32 %iter1.sroa.0.0335 to i64
  %_36 = add nsw i32 %iter1.sroa.0.0335, -1
  %_35 = sext i32 %_36 to i64
  %_41 = zext nneg i32 %iter1.sroa.0.0335 to i64
  br label %bb22

bb39.preheader:                                   ; preds = %bb14.loopexit, %bb14.preheader
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i37 = load i64, ptr %14, align 8
  %_4.i.i38 = icmp ugt i64 %len.i37, %_5
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i40 = load ptr, ptr %15, align 8, !nonnull !15
  %_0.i.i41 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i40, i64 %_5
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i41, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i41, i64 8
  br label %bb41

bb41:                                             ; preds = %bb39.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit"
  %_0.sroa.3.0.i.i32341 = phi i64 [ 0, %bb39.preheader ], [ %_0.sroa.3.0.i.i32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit" ]
  %iter3.sroa.7.1340 = phi i8 [ 0, %bb39.preheader ], [ %iter3.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit" ]
  %iter3.sroa.0.1339 = phi i64 [ 1, %bb39.preheader ], [ %iter3.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit" ]
  %sum.sroa.0.0338 = phi i32 [ 0, %bb39.preheader ], [ %18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit" ]
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit", label %panic.i.i134.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit": ; preds = %bb41
  %len.i43 = load i64, ptr %16, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i44 = icmp ult i64 %_0.sroa.3.0.i.i32341, %len.i43
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit", label %panic.i.i134.invoke

bb42:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit"
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %18

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit"
  %_6.i46 = load ptr, ptr %17, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i46, i64 %_0.sroa.3.0.i.i32341
  %_65 = load i32, ptr %_0.i.i47, align 4, !noundef !15
  %18 = add i32 %_65, %sum.sroa.0.0338
  %_10.i.i23 = trunc nuw i8 %iter3.sroa.7.1340 to i1
  %_0.i.not.i.i28 = icmp ugt i64 %iter3.sroa.0.1339, 25
  %or.cond147 = select i1 %_10.i.i23, i1 true, i1 %_0.i.not.i.i28
  %_0.i3.i.i30.not = icmp eq i64 %iter3.sroa.0.1339, 25
  %_0.i4.i.i35 = add nuw nsw i64 %iter3.sroa.0.1339, 1
  %spec.select142 = select i1 %_0.i3.i.i30.not, i64 25, i64 %_0.i4.i.i35
  %spec.select143 = select i1 %_0.i3.i.i30.not, i8 1, i8 %iter3.sroa.7.1340
  %iter3.sroa.0.1 = select i1 %or.cond147, i64 %iter3.sroa.0.1339, i64 %spec.select142
  %iter3.sroa.7.1 = select i1 %or.cond147, i8 %iter3.sroa.7.1340, i8 %spec.select143
  %_0.sroa.3.0.i.i32 = select i1 %_10.i.i23, i64 undef, i64 %iter3.sroa.0.1339
  br i1 %or.cond147, label %bb42, label %bb41

bb22:                                             ; preds = %bb20.preheader, %bb36
  %_0.sroa.3.0.i.i58327 = phi i64 [ 0, %bb20.preheader ], [ %_0.sroa.3.0.i.i58, %bb36 ]
  %iter2.sroa.7.1326 = phi i8 [ 0, %bb20.preheader ], [ %iter2.sroa.7.1, %bb36 ]
  %iter2.sroa.0.1325 = phi i64 [ 1, %bb20.preheader ], [ %iter2.sroa.0.1, %bb36 ]
  %_30 = icmp eq i64 %_0.sroa.3.0.i.i58327, 0
  br i1 %_30, label %bb24, label %bb29

bb29:                                             ; preds = %bb22
  %len.i63 = load i64, ptr %8, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i64 = icmp ugt i64 %len.i63, %_46
  br i1 %_4.i.i64, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit69", label %panic.i.i134.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit69": ; preds = %bb29
  %_6.i66 = load ptr, ptr %9, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i67 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i66, i64 %_46
  %_48 = add i64 %_0.sroa.3.0.i.i58327, -1
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 16
  %len.i77 = load i64, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i78 = icmp ult i64 %_48, %len.i77
  br i1 %_4.i.i78, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit83", label %panic.i.i134.invoke

bb24:                                             ; preds = %bb22
  %len.i70 = load i64, ptr %10, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i71 = icmp ugt i64 %len.i70, %_35
  br i1 %_4.i.i71, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit76", label %panic.i.i134.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit76": ; preds = %bb24
  %_6.i73 = load ptr, ptr %11, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i74 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i73, i64 %_35
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 16
  %len.i111 = load i64, ptr %20, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i112 = icmp ugt i64 %len.i111, 1
  br i1 %_4.i.i112, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit117", label %panic.i.i134.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit83": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit69"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 8
  %_6.i80 = load ptr, ptr %21, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i81 = getelementptr inbounds nuw i32, ptr %_6.i80, i64 %_48
  %_42 = load i32, ptr %_0.i.i81, align 4, !noundef !15
  %_53 = add i64 %_0.sroa.3.0.i.i58327, 1
  %_4.i.i92 = icmp ult i64 %_53, %len.i77
  br i1 %_4.i.i92, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit97", label %panic.i.i134.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit97": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit83"
  %_0.i.i95 = getelementptr inbounds nuw i32, ptr %_6.i80, i64 %_53
  %_49 = load i32, ptr %_0.i.i95, align 4, !noundef !15
  %_4.i.i99 = icmp ugt i64 %len.i63, %_57
  br i1 %_4.i.i99, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit104", label %panic.i.i134.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit104": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit97"
  %_0.i.i102 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i66, i64 %_57
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i102, i64 16
  %len.i105 = load i64, ptr %22, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i106 = icmp ult i64 %_0.sroa.3.0.i.i58327, %len.i105
  br i1 %_4.i.i106, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit", label %panic.i.i134.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit104"
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i102, i64 8
  %_6.i108 = load ptr, ptr %23, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i109 = getelementptr inbounds nuw i32, ptr %_6.i108, i64 %_0.sroa.3.0.i.i58327
  %24 = add i32 %_49, %_42
  store i32 %24, ptr %_0.i.i109, align 4
  br label %bb36

bb36:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit131", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit"
  %_10.i.i49 = trunc nuw i8 %iter2.sroa.7.1326 to i1
  %_0.i.not.i.i54 = icmp ugt i64 %iter2.sroa.0.1325, 25
  %or.cond148 = select i1 %_10.i.i49, i1 true, i1 %_0.i.not.i.i54
  %_0.i3.i.i56.not = icmp eq i64 %iter2.sroa.0.1325, 25
  %_0.i4.i.i61 = add nuw nsw i64 %iter2.sroa.0.1325, 1
  %spec.select144 = select i1 %_0.i3.i.i56.not, i64 25, i64 %_0.i4.i.i61
  %spec.select145 = select i1 %_0.i3.i.i56.not, i8 1, i8 %iter2.sroa.7.1326
  %iter2.sroa.0.1 = select i1 %or.cond148, i64 %iter2.sroa.0.1325, i64 %spec.select144
  %iter2.sroa.7.1 = select i1 %or.cond148, i8 %iter2.sroa.7.1326, i8 %spec.select145
  %_0.sroa.3.0.i.i58 = select i1 %_10.i.i49, i64 undef, i64 %iter2.sroa.0.1325
  br i1 %or.cond148, label %bb14.loopexit, label %bb22

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit117": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit76"
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 8
  %_6.i114 = load ptr, ptr %25, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i115 = getelementptr inbounds nuw i8, ptr %_6.i114, i64 4
  %_31 = load i32, ptr %_0.i.i115, align 4, !noundef !15
  %_4.i.i119 = icmp ugt i64 %len.i70, %_41
  br i1 %_4.i.i119, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit124", label %panic.i.i134.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit124": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit117"
  %_0.i.i122 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i73, i64 %_41
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i122, i64 16
  %len.i125 = load i64, ptr %26, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i126.not = icmp eq i64 %len.i125, 0
  br i1 %_4.i.i126.not, label %panic.i.i134.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit131"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit131": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit124"
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i122, i64 8
  %_6.i128 = load ptr, ptr %27, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  store i32 %_31, ptr %_6.i128, align 4
  br label %bb36

panic.i.i134.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit", %bb8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit124", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit117", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit76", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit104", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit97", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit83", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit69", %bb24, %bb29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit", %bb41
  %28 = phi i64 [ %_0.sroa.3.0.i.i32341, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit" ], [ %_5, %bb41 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit124" ], [ %_41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit117" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit76" ], [ %_0.sroa.3.0.i.i58327, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit104" ], [ %_57, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit97" ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit83" ], [ %_48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit69" ], [ %_35, %bb24 ], [ %_46, %bb29 ], [ %_0.sroa.3.0.i.i324, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit" ], [ 1, %bb8 ]
  %29 = phi i64 [ %len.i43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit" ], [ %len.i37, %bb41 ], [ %len.i125, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit124" ], [ %len.i70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit117" ], [ %len.i111, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit76" ], [ %len.i105, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit104" ], [ %len.i63, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit97" ], [ %len.i77, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit83" ], [ %len.i77, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit69" ], [ %len.i70, %bb24 ], [ %len.i63, %bb29 ], [ %len.i132, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit" ], [ %len.i, %bb8 ]
  %30 = phi ptr [ @alloc_ea1b003d79af6d3a64e76cc2eaf3ed83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit" ], [ @alloc_2a17113741e559c14bd197440bb931ac, %bb41 ], [ @alloc_d8edd249abdc4ab744aa96ee5d8675a1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit124" ], [ @alloc_6fda34c5a5ccd26f8bff72bcf3f477b1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit117" ], [ @alloc_b3241f28fb12000b5e3620f99e6ab699, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit76" ], [ @alloc_2948f482fd36f0406bb7f8be30e31e90, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit104" ], [ @alloc_9a9a2e37add18c176c5cb61462e29301, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit97" ], [ @alloc_ef0571cc6380bb258db4973dd4d13008, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE.exit83" ], [ @alloc_97f8fab629096b38d7d723d3fcc7ee46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E.exit69" ], [ @alloc_6a4bdd0b393bf7a44aa5a825822e0e00, %bb24 ], [ @alloc_2508536e22c130ed9045f6b520249db6, %bb29 ], [ @alloc_1083bbc45c68588113d031ebfefc2405, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit" ], [ @alloc_22ab2c56e287a287214a1e1a8b6785ab, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %28, i64 noundef range(i64 0, 2305843009213693952) %29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %30) #27
          to label %panic.i.i134.cont unwind label %cleanup

panic.i.i134.cont:                                ; preds = %panic.i.i134.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E.exit138": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E.exit"
  %31 = getelementptr inbounds nuw i8, ptr %_6.i, i64 32
  %_6.i135 = load ptr, ptr %31, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i136 = getelementptr inbounds nuw i32, ptr %_6.i135, i64 %_0.sroa.3.0.i.i324
  store i32 1, ptr %_0.i.i136, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1322 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1323, 25
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i.not = icmp eq i64 %iter.sroa.0.1323, 25
  %_0.i4.i.i = add nuw nsw i64 %iter.sroa.0.1323, 1
  %spec.select = select i1 %_0.i3.i.i.not, i8 1, i8 %iter.sroa.7.1322
  %spec.select139 = select i1 %_0.i3.i.i.not, i64 25, i64 %_0.i4.i.i
  %iter.sroa.7.1 = select i1 %or.cond, i8 %iter.sroa.7.1322, i8 %spec.select
  %iter.sroa.0.1 = select i1 %or.cond, i64 %iter.sroa.0.1323, i64 %spec.select139
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1323
  br i1 %or.cond, label %bb14.preheader, label %bb8

terminate:                                        ; preds = %cleanup
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb47:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
