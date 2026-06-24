define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n, i32 noundef %W) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %wt = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 8
  store i64 %0, ptr %val, align 8
  store i64 %1, ptr %wt, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mat)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_6)
  %_8 = sext i32 %W to i64
  %_7 = add nsw i64 %_8, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_7, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1035, !noalias !1681, !noundef !15
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17he1483c634f5fba15E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17he1483c634f5fba15E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_6, align 8, !alias.scope !1681
  %5 = getelementptr inbounds nuw i8, ptr %_6, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1681
  %6 = getelementptr inbounds nuw i8, ptr %_6, i64 16
  store i64 %_7, ptr %6, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7983e883d3453fc3E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %mat, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_6, i64 noundef 2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_6)
  %_10242 = icmp sgt i32 %n, 0
  br i1 %_10242, label %bb4.lr.ph, label %bb48

bb4.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17he1483c634f5fba15E.exit
  %_16.not238 = icmp slt i32 %W, 0
  %7 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_63.not240 = icmp slt i32 %W, 0
  %11 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb4

bb48:                                             ; preds = %bb47, %_ZN5alloc3vec9from_elem17he1483c634f5fba15E.exit
  %15 = and i32 %n, 1
  %_110.not = icmp eq i32 %15, 0
  %16 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %len.i = load i64, ptr %16, align 8, !noalias !15, !noundef !15
  br i1 %_110.not, label %bb52, label %bb49

bb4:                                              ; preds = %bb4.lr.ph, %bb47
  %indvars.iv = phi i64 [ 0, %bb4.lr.ph ], [ %indvars.iv.next, %bb47 ]
  %17 = and i64 %indvars.iv, 1
  %_13.not = icmp eq i64 %17, 0
  br i1 %_13.not, label %bb27.preheader, label %bb6.preheader

bb6.preheader:                                    ; preds = %bb4
  br i1 %_16.not238, label %bb47, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb6.preheader
  %_22 = icmp samesign ult i64 %indvars.iv, 2
  %18 = getelementptr inbounds nuw i32, ptr %val, i64 %indvars.iv
  br i1 %_22, label %bb7.lr.ph.split, label %panic3.invoke

bb7.lr.ph.split:                                  ; preds = %bb7.lr.ph
  %19 = getelementptr inbounds nuw i32, ptr %wt, i64 %indvars.iv
  %_19 = load i32, ptr %19, align 4, !noundef !15
  br label %bb7

bb27.preheader:                                   ; preds = %bb4
  br i1 %_63.not240, label %bb47, label %bb28.lr.ph

bb28.lr.ph:                                       ; preds = %bb27.preheader
  %_69 = icmp samesign ult i64 %indvars.iv, 2
  %20 = getelementptr inbounds nuw i32, ptr %val, i64 %indvars.iv
  br i1 %_69, label %bb28.lr.ph.split, label %panic3.invoke

bb28.lr.ph.split:                                 ; preds = %bb28.lr.ph
  %21 = getelementptr inbounds nuw i32, ptr %wt, i64 %indvars.iv
  %_66 = load i32, ptr %21, align 4, !noundef !15
  br label %bb28

bb52:                                             ; preds = %bb48
  %_4.i.i = icmp samesign ugt i64 %len.i, 1
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit": ; preds = %bb52
  %22 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_6.i = load ptr, ptr %22, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %23 = getelementptr inbounds nuw i8, ptr %_6.i, i64 40
  %len.i38 = load i64, ptr %23, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i39 = icmp ugt i64 %len.i38, %_8
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit", label %panic.i.i185.invoke

bb49:                                             ; preds = %bb48
  %_4.i.i32.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i32.not, label %panic.i.i185.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit37"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit37": ; preds = %bb49
  %24 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_6.i34 = load ptr, ptr %24, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %25 = getelementptr inbounds nuw i8, ptr %_6.i34, i64 16
  %len.i44 = load i64, ptr %25, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i45 = icmp ugt i64 %len.i44, %_8
  br i1 %_4.i.i45, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit50", label %panic.i.i185.invoke

cleanup:                                          ; preds = %panic3.invoke, %panic.i.i185.invoke
  %26 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE"(ptr noalias noundef align 8 dereferenceable(24) %mat) #30
          to label %bb58 unwind label %terminate

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit"
  %27 = getelementptr inbounds nuw i8, ptr %_6.i, i64 32
  br label %bb55

bb55:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit50", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit"
  %_6.i41.pn.in = phi ptr [ %27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit" ], [ %28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit50" ]
  %_6.i41.pn = load ptr, ptr %_6.i41.pn.in, align 8, !noalias !15, !nonnull !15, !noundef !15
  %_0.sroa.0.0.in = getelementptr inbounds nuw i32, ptr %_6.i41.pn, i64 %_8
  %_0.sroa.0.0 = load i32, ptr %_0.sroa.0.0.in, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE"(ptr noalias noundef align 8 dereferenceable(24) %mat)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mat)
  ret i32 %_0.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit37"
  %28 = getelementptr inbounds nuw i8, ptr %_6.i34, i64 8
  br label %bb55

bb28:                                             ; preds = %bb28.lr.ph.split, %bb45
  %j.sroa.0.0241 = phi i32 [ 0, %bb28.lr.ph.split ], [ %33, %bb45 ]
  %_65.not = icmp sgt i32 %_66, %j.sroa.0.0241
  br i1 %_65.not, label %bb40, label %bb31

bb47:                                             ; preds = %bb24, %bb45, %bb6.preheader, %bb27.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb48, label %bb4

bb40:                                             ; preds = %bb28
  %len.i51 = load i64, ptr %13, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i52 = icmp samesign ugt i64 %len.i51, 1
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit57", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit57": ; preds = %bb40
  %_6.i54 = load ptr, ptr %14, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_103 = sext i32 %j.sroa.0.0241 to i64
  %29 = getelementptr inbounds nuw i8, ptr %_6.i54, i64 40
  %len.i58 = load i64, ptr %29, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i59 = icmp ugt i64 %len.i58, %_103
  br i1 %_4.i.i59, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit64", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit64": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit57"
  %30 = getelementptr inbounds nuw i8, ptr %_6.i54, i64 16
  %len.i71 = load i64, ptr %30, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i72 = icmp ugt i64 %len.i71, %_103
  br i1 %_4.i.i72, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit", label %panic.i.i185.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit64"
  %31 = getelementptr inbounds nuw i8, ptr %_6.i54, i64 32
  %_6.i61 = load ptr, ptr %31, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i62 = getelementptr inbounds nuw i32, ptr %_6.i61, i64 %_103
  %_99 = load i32, ptr %_0.i.i62, align 4, !noundef !15
  br label %bb45

bb45:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit118", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit"
  %_6.i80.sink = phi ptr [ %_6.i80, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit118" ], [ %_6.i54, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit" ]
  %_92.sink = phi i64 [ %_92, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit118" ], [ %_103, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit" ]
  %x.y.i.sink = phi i32 [ %x.y.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit118" ], [ %_99, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit" ]
  %32 = getelementptr inbounds nuw i8, ptr %_6.i80.sink, i64 8
  %_6.i115 = load ptr, ptr %32, align 8, !noalias !15, !nonnull !15, !noundef !15
  %_0.i.i116 = getelementptr inbounds nuw i32, ptr %_6.i115, i64 %_92.sink
  store i32 %x.y.i.sink, ptr %_0.i.i116, align 4
  %33 = add i32 %j.sroa.0.0241, 1
  %_63.not = icmp sgt i32 %33, %W
  br i1 %_63.not, label %bb47, label %bb28

bb31:                                             ; preds = %bb28
  %_73 = load i32, ptr %20, align 4, !noundef !15
  %len.i77 = load i64, ptr %11, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i78 = icmp samesign ugt i64 %len.i77, 1
  br i1 %_4.i.i78, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit83", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit83": ; preds = %bb31
  %_6.i80 = load ptr, ptr %12, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_82 = sub i32 %j.sroa.0.0241, %_66
  %_81 = sext i32 %_82 to i64
  %34 = getelementptr inbounds nuw i8, ptr %_6.i80, i64 40
  %len.i84 = load i64, ptr %34, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i85 = icmp ugt i64 %len.i84, %_81
  br i1 %_4.i.i85, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit90", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit90": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit83"
  %_92 = sext i32 %j.sroa.0.0241 to i64
  %_4.i.i99 = icmp ugt i64 %len.i84, %_92
  br i1 %_4.i.i99, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit104", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit104": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit90"
  %35 = getelementptr inbounds nuw i8, ptr %_6.i80, i64 16
  %len.i112 = load i64, ptr %35, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i113 = icmp ugt i64 %len.i112, %_92
  br i1 %_4.i.i113, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit118", label %panic.i.i185.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E.exit118": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit104"
  %36 = getelementptr inbounds nuw i8, ptr %_6.i80, i64 32
  %_6.i87 = load ptr, ptr %36, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i88 = getelementptr inbounds nuw i32, ptr %_6.i87, i64 %_81
  %_77 = load i32, ptr %_0.i.i88, align 4, !noundef !15
  %_72 = add i32 %_77, %_73
  %_0.i.i102 = getelementptr inbounds nuw i32, ptr %_6.i87, i64 %_92
  %_88 = load i32, ptr %_0.i.i102, align 4, !noundef !15
  %x.y.i = call noundef i32 @llvm.smax.i32(i32 %_72, i32 %_88)
  br label %bb45

bb7:                                              ; preds = %bb7.lr.ph.split, %bb24
  %j.sroa.0.1239 = phi i32 [ 0, %bb7.lr.ph.split ], [ %42, %bb24 ]
  %_18.not = icmp sgt i32 %_19, %j.sroa.0.1239
  br i1 %_18.not, label %bb19, label %bb10

panic3.invoke:                                    ; preds = %bb7.lr.ph, %bb28.lr.ph
  %37 = phi ptr [ @alloc_4fee7c83fafb72b88cd7635e0eaedf92, %bb28.lr.ph ], [ @alloc_400d3be88d0fc9f2875c9b0881d22071, %bb7.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %37) #28
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb19:                                             ; preds = %bb7
  %len.i119 = load i64, ptr %9, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i120.not = icmp eq i64 %len.i119, 0
  br i1 %_4.i.i120.not, label %panic.i.i185.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit125"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit125": ; preds = %bb19
  %_6.i122 = load ptr, ptr %10, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_56 = sext i32 %j.sroa.0.1239 to i64
  %38 = getelementptr inbounds nuw i8, ptr %_6.i122, i64 16
  %len.i126 = load i64, ptr %38, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i127 = icmp ugt i64 %len.i126, %_56
  br i1 %_4.i.i127, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit132", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit132": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit125"
  %_4.i.i134.not = icmp eq i64 %len.i119, 1
  br i1 %_4.i.i134.not, label %panic.i.i185.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit132"
  %39 = getelementptr inbounds nuw i8, ptr %_6.i122, i64 8
  %_6.i129 = load ptr, ptr %39, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  %_0.i.i130 = getelementptr inbounds nuw i32, ptr %_6.i129, i64 %_56
  %_52 = load i32, ptr %_0.i.i130, align 4, !noundef !15
  %40 = getelementptr inbounds nuw i8, ptr %_6.i122, i64 40
  %len.i140 = load i64, ptr %40, align 8, !alias.scope !1742, !noalias !1745, !noundef !15
  %_4.i.i141 = icmp ugt i64 %len.i140, %_56
  br i1 %_4.i.i141, label %bb24, label %panic.i.i185.invoke

bb24:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182"
  %_6.i150.sink = phi ptr [ %_6.i150, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182" ], [ %_6.i122, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139" ]
  %_45.sink = phi i64 [ %_45, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182" ], [ %_56, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139" ]
  %x.y.i175.sink = phi i32 [ %x.y.i175, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182" ], [ %_52, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139" ]
  %41 = getelementptr inbounds nuw i8, ptr %_6.i150.sink, i64 32
  %_6.i186 = load ptr, ptr %41, align 8, !noalias !15, !nonnull !15, !noundef !15
  %_0.i.i187 = getelementptr inbounds nuw i32, ptr %_6.i186, i64 %_45.sink
  store i32 %x.y.i175.sink, ptr %_0.i.i187, align 4
  %42 = add i32 %j.sroa.0.1239, 1
  %_16.not = icmp sgt i32 %42, %W
  br i1 %_16.not, label %bb47, label %bb7

bb10:                                             ; preds = %bb7
  %_26 = load i32, ptr %18, align 4, !noundef !15
  %len.i147 = load i64, ptr %7, align 8, !alias.scope !1747, !noalias !1750, !noundef !15
  %_4.i.i148.not = icmp eq i64 %len.i147, 0
  br i1 %_4.i.i148.not, label %panic.i.i185.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit153"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit153": ; preds = %bb10
  %_6.i150 = load ptr, ptr %8, align 8, !alias.scope !1747, !noalias !1750, !nonnull !15, !noundef !15
  %_35 = sub i32 %j.sroa.0.1239, %_19
  %_34 = sext i32 %_35 to i64
  %43 = getelementptr inbounds nuw i8, ptr %_6.i150, i64 16
  %len.i154 = load i64, ptr %43, align 8, !alias.scope !1752, !noalias !1755, !noundef !15
  %_4.i.i155 = icmp ugt i64 %len.i154, %_34
  br i1 %_4.i.i155, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit160", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit160": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit153"
  %_45 = sext i32 %j.sroa.0.1239 to i64
  %_4.i.i169 = icmp ugt i64 %len.i154, %_45
  br i1 %_4.i.i169, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit174", label %panic.i.i185.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit174": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit160"
  %_4.i.i177.not = icmp eq i64 %len.i147, 1
  br i1 %_4.i.i177.not, label %panic.i.i185.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit174"
  %44 = getelementptr inbounds nuw i8, ptr %_6.i150, i64 8
  %_6.i157 = load ptr, ptr %44, align 8, !alias.scope !1752, !noalias !1755, !nonnull !15, !noundef !15
  %_0.i.i158 = getelementptr inbounds nuw i32, ptr %_6.i157, i64 %_34
  %_30 = load i32, ptr %_0.i.i158, align 4, !noundef !15
  %_25 = add i32 %_30, %_26
  %_0.i.i172 = getelementptr inbounds nuw i32, ptr %_6.i157, i64 %_45
  %_41 = load i32, ptr %_0.i.i172, align 4, !noundef !15
  %x.y.i175 = call noundef i32 @llvm.smax.i32(i32 %_25, i32 %_41)
  %45 = getelementptr inbounds nuw i8, ptr %_6.i150, i64 40
  %len.i183 = load i64, ptr %45, align 8, !alias.scope !1757, !noalias !1760, !noundef !15
  %_4.i.i184 = icmp ugt i64 %len.i183, %_45
  br i1 %_4.i.i184, label %bb24, label %panic.i.i185.invoke

panic.i.i185.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit174", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit160", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit153", %bb10, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit132", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit125", %bb19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit104", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit90", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit83", %bb31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit64", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit57", %bb40, %bb49, %bb52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit37", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit"
  %46 = phi i64 [ %_8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit" ], [ %_8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit37" ], [ 1, %bb52 ], [ 0, %bb49 ], [ %_92, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit104" ], [ %_92, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit90" ], [ %_81, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit83" ], [ 1, %bb31 ], [ %_103, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit64" ], [ %_103, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit57" ], [ 1, %bb40 ], [ %_45, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit174" ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit160" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit153" ], [ 0, %bb10 ], [ %_56, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit132" ], [ %_56, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit125" ], [ 0, %bb19 ]
  %47 = phi i64 [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit" ], [ %len.i44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit37" ], [ %len.i, %bb52 ], [ %len.i, %bb49 ], [ %len.i112, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit104" ], [ %len.i84, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit90" ], [ %len.i84, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit83" ], [ %len.i77, %bb31 ], [ %len.i71, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit64" ], [ %len.i58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit57" ], [ %len.i51, %bb40 ], [ %len.i183, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182" ], [ %len.i147, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit174" ], [ %len.i154, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit160" ], [ %len.i154, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit153" ], [ %len.i147, %bb10 ], [ %len.i140, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139" ], [ %len.i119, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit132" ], [ %len.i126, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit125" ], [ %len.i119, %bb19 ]
  %48 = phi ptr [ @alloc_deb46f6fe7cf5cc18becf044f534f29a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit" ], [ @alloc_2d0d89a080d009968733113dc6eb3ba3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit37" ], [ @alloc_92361a1050d8d5e8888d9b108ff01520, %bb52 ], [ @alloc_4cf96f0c451272b3a3260efd73d6b98a, %bb49 ], [ @alloc_f4269b9378e35a0906f8c7af60b333aa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit104" ], [ @alloc_8b8aff5035d4e850346620e14c1b5821, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit90" ], [ @alloc_7a923da4fdde298034da3bc4e95870f9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit83" ], [ @alloc_a65238f5b425853c8c2f54ffb62190a5, %bb31 ], [ @alloc_0085ae16be34517cf0c12220c3eb1960, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit64" ], [ @alloc_33530c927815bc5a618a380289bfdeaa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit57" ], [ @alloc_81370d0993cdfb7c440dd2cfd0c40b7d, %bb40 ], [ @alloc_b7b883573d2af83879a88aa8e05367f3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit182" ], [ @alloc_639bd504a2b5e641a7a630138e0d4b7c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit174" ], [ @alloc_a88ba0ef25ec725ecb7c2e77c6e4fe75, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit160" ], [ @alloc_d67937fea68517d568e6417c5350821b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit153" ], [ @alloc_fc8cd0d0810a0b20c72fe02c6f5f10eb, %bb10 ], [ @alloc_4cf0e4c042860127977f898d53770e6b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE.exit139" ], [ @alloc_c6e1bed630d99e6d69d5fd1f463009fc, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E.exit132" ], [ @alloc_251d6476aadc86ca95efb10bf90cefc4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E.exit125" ], [ @alloc_103bc833ed564cb1fac32956c4d91155, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %46, i64 noundef range(i64 0, 2305843009213693952) %47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %48) #27
          to label %panic.i.i185.cont unwind label %cleanup

panic.i.i185.cont:                                ; preds = %panic.i.i185.invoke
  unreachable

terminate:                                        ; preds = %cleanup
  %49 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb58:                                             ; preds = %cleanup
  resume { ptr, i32 } %26
}
