define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %num, i32 noundef %max_limit) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_6)
  %_8 = sext i32 %max_limit to i64
  %_7 = add nsw i64 %_8, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_7, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1681, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h8d341c17db0d7aefE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h8d341c17db0d7aefE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_6, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_6, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1681
  %5 = getelementptr inbounds nuw i8, ptr %_6, i64 16
  store i64 %_7, ptr %5, align 8, !alias.scope !1681
  %_9 = sext i32 %n to i64
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_6, i64 noundef %_9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_6)
  %_0.i.i.i237 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i237, label %bb11.preheader.lr.ph, label %bb63.preheader

bb11.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h8d341c17db0d7aefE.exit
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_27 = load i32, ptr %arr, align 8
  %_26 = sub i32 %num, %_27
  %_31 = add i32 %_27, %num
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %wide.trip.count = zext nneg i32 %n to i64
  %_0.i.not.i.i477 = icmp slt i32 %max_limit, 0
  %.not = icmp eq i32 %max_limit, 0
  %iter1.sroa.7.1482 = zext i1 %.not to i8
  %_0.i3.i.i478 = icmp ne i32 %max_limit, 0
  %spec.select171481 = zext i1 %_0.i3.i.i478 to i32
  br label %bb11.preheader

cleanup:                                          ; preds = %panic.i.i165.invoke, %panic
  %18 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0c5fee1ccc81c4caE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb75 unwind label %terminate

bb4.loopexit:                                     ; preds = %bb60, %bb11.preheader
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next355, %wide.trip.count
  br i1 %exitcond.not, label %bb63.preheader, label %bb11.preheader

bb11.preheader:                                   ; preds = %bb11.preheader.lr.ph, %bb4.loopexit
  %indvars.iv354 = phi i64 [ 0, %bb11.preheader.lr.ph ], [ %indvars.iv.next355, %bb4.loopexit ]
  %19 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv354
  %20 = add nsw i64 %indvars.iv354, -1
  %21 = add nsw i64 %indvars.iv354, -1
  %22 = add nsw i64 %indvars.iv354, -1
  br i1 %_0.i.not.i.i477, label %bb4.loopexit, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %bb11.preheader
  %23 = trunc nuw nsw i64 %indvars.iv354 to i32
  br label %bb13

bb63.preheader:                                   ; preds = %bb4.loopexit, %_ZN5alloc3vec9from_elem17h8d341c17db0d7aefE.exit
  %_104 = add i32 %n, -1
  %_103 = sext i32 %_104 to i64
  %24 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %24, align 8
  %_4.i.i21 = icmp ugt i64 %len.i, %_103
  %25 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %25, align 8, !nonnull !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_103
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br label %bb63

bb63:                                             ; preds = %bb63.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit"
  %iter2.sroa.5.0 = phi i32 [ %iter2.sroa.5.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit" ], [ %max_limit, %bb63.preheader ]
  %_0.i.i.i.i = icmp sgt i32 %iter2.sroa.5.0, 0
  %28 = add nsw i32 %iter2.sroa.5.0, -1
  %iter2.sroa.5.1 = select i1 %_0.i.i.i.i, i32 %28, i32 %iter2.sroa.5.0
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %28, i32 undef
  br i1 %_0.i.i.i.i, label %bb65, label %bb73

bb65:                                             ; preds = %bb63
  br i1 %_4.i.i21, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit", label %panic.i.i165.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit": ; preds = %bb65
  %_105 = sext i32 %_0.sroa.3.0.i.i.i to i64
  %len.i22 = load i64, ptr %26, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i23 = icmp ugt i64 %len.i22, %_105
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit", label %panic.i.i165.invoke

bb73:                                             ; preds = %bb63, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit"
  %val.sroa.0.0 = phi i32 [ %_0.sroa.3.0.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit" ], [ -1, %bb63 ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0c5fee1ccc81c4caE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %val.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit"
  %_6.i25 = load ptr, ptr %27, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_105
  %_99 = load i32, ptr %_0.i.i26, align 4, !noundef !15
  %_98 = icmp eq i32 %_99, 1
  br i1 %_98, label %bb73, label %bb63

bb13:                                             ; preds = %bb13.lr.ph, %bb60
  %_0.sroa.3.0.i.i485 = phi i32 [ 0, %bb13.lr.ph ], [ %_0.sroa.3.0.i.i, %bb60 ]
  %iter1.sroa.7.1484 = phi i8 [ %iter1.sroa.7.1482, %bb13.lr.ph ], [ %iter1.sroa.7.1, %bb60 ]
  %iter1.sroa.0.1483 = phi i32 [ %spec.select171481, %bb13.lr.ph ], [ %iter1.sroa.0.1, %bb60 ]
  switch i32 %23, label %panic [
    i32 0, label %bb16
    i32 1, label %bb29
  ]

bb29:                                             ; preds = %bb13
  %_42 = load i32, ptr %19, align 4, !noundef !15
  %_41 = sub i32 %_0.sroa.3.0.i.i485, %_42
  %_40 = icmp sgt i32 %_41, -1
  %_46 = add i32 %_42, %_0.sroa.3.0.i.i485
  %_45.not = icmp sgt i32 %_46, %max_limit
  br i1 %_40, label %bb31, label %bb48

panic:                                            ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv354, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a7aad532e8fc9d6b67afb0ef51807c9d) #28
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb48:                                             ; preds = %bb29
  br i1 %_45.not, label %bb55, label %bb49

bb55:                                             ; preds = %bb48
  %len.i32 = load i64, ptr %8, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i33 = icmp samesign ugt i64 %len.i32, %indvars.iv354
  br i1 %_4.i.i33, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit": ; preds = %bb55
  %_6.i35 = load ptr, ptr %9, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i35, i64 %indvars.iv354
  %_90 = sext i32 %_0.sroa.3.0.i.i485 to i64
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i36, i64 16
  %len.i45 = load i64, ptr %29, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i46 = icmp ugt i64 %len.i45, %_90
  br i1 %_4.i.i46, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit", label %panic.i.i165.invoke

bb49:                                             ; preds = %bb48
  %len.i38 = load i64, ptr %6, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i39 = icmp ugt i64 %len.i38, %20
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit44", label %panic.i.i165.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit44": ; preds = %bb49
  %_6.i41 = load ptr, ptr %7, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i42 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %20
  %_82 = sext i32 %_46 to i64
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 16
  %len.i51 = load i64, ptr %30, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i52 = icmp ugt i64 %len.i51, %_82
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit57", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit"
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i36, i64 8
  %_6.i48 = load ptr, ptr %31, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i48, i64 %_90
  store i32 0, ptr %_0.i.i49, align 4
  br label %bb60

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit57": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit44"
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 8
  %_6.i54 = load ptr, ptr %32, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i55 = getelementptr inbounds nuw i32, ptr %_6.i54, i64 %_82
  %_76 = load i32, ptr %_0.i.i55, align 4, !noundef !15
  %_4.i.i59 = icmp samesign ugt i64 %len.i38, %indvars.iv354
  br i1 %_4.i.i59, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit64", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit64": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit57"
  %_0.i.i62 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %indvars.iv354
  %_86 = sext i32 %_0.sroa.3.0.i.i485 to i64
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i62, i64 16
  %len.i65 = load i64, ptr %33, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i66 = icmp ugt i64 %len.i65, %_86
  br i1 %_4.i.i66, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit71", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit71": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit64"
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i62, i64 8
  %_6.i68 = load ptr, ptr %34, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i69 = getelementptr inbounds nuw i32, ptr %_6.i68, i64 %_86
  store i32 %_76, ptr %_0.i.i69, align 4
  br label %bb60

bb31:                                             ; preds = %bb29
  br i1 %_45.not, label %bb41, label %bb32

bb32:                                             ; preds = %bb31
  %len.i72 = load i64, ptr %10, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i73 = icmp ugt i64 %len.i72, %21
  br i1 %_4.i.i73, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit78", label %panic.i.i165.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit78": ; preds = %bb32
  %_6.i75 = load ptr, ptr %11, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i76 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i75, i64 %21
  %_53 = zext nneg i32 %_41 to i64
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i76, i64 16
  %len.i107 = load i64, ptr %35, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i108 = icmp ugt i64 %len.i107, %_53
  br i1 %_4.i.i108, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit113", label %panic.i.i165.invoke

bb41:                                             ; preds = %bb31
  %len.i79 = load i64, ptr %12, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i80 = icmp ugt i64 %len.i79, %22
  br i1 %_4.i.i80, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit85", label %panic.i.i165.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit85": ; preds = %bb41
  %_6.i82 = load ptr, ptr %13, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i83 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i82, i64 %22
  %_69 = zext nneg i32 %_41 to i64
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i83, i64 16
  %len.i86 = load i64, ptr %36, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i87 = icmp ugt i64 %len.i86, %_69
  br i1 %_4.i.i87, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit92", label %panic.i.i165.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit92": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit85"
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i83, i64 8
  %_6.i89 = load ptr, ptr %37, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i90 = getelementptr inbounds nuw i32, ptr %_6.i89, i64 %_69
  %_63 = load i32, ptr %_0.i.i90, align 4, !noundef !15
  %_4.i.i94 = icmp samesign ugt i64 %len.i79, %indvars.iv354
  br i1 %_4.i.i94, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit99", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit99": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit92"
  %_0.i.i97 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i82, i64 %indvars.iv354
  %_73 = sext i32 %_0.sroa.3.0.i.i485 to i64
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 16
  %len.i100 = load i64, ptr %38, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i101 = icmp ugt i64 %len.i100, %_73
  br i1 %_4.i.i101, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit106", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit106": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit99"
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 8
  %_6.i103 = load ptr, ptr %39, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_0.i.i104 = getelementptr inbounds nuw i32, ptr %_6.i103, i64 %_73
  store i32 %_63, ptr %_0.i.i104, align 4
  br label %bb60

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit113": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit78"
  %40 = getelementptr inbounds nuw i8, ptr %_0.i.i76, i64 8
  %_6.i110 = load ptr, ptr %40, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i111 = getelementptr inbounds nuw i32, ptr %_6.i110, i64 %_53
  %_47 = load i32, ptr %_0.i.i111, align 4, !noundef !15
  %_58 = sext i32 %_46 to i64
  %_4.i.i122 = icmp ugt i64 %len.i107, %_58
  br i1 %_4.i.i122, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit127", label %panic.i.i165.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit127": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit113"
  %_0.i.i125 = getelementptr inbounds nuw i32, ptr %_6.i110, i64 %_58
  %_54 = load i32, ptr %_0.i.i125, align 4, !noundef !15
  %_4.i.i129 = icmp samesign ugt i64 %len.i72, %indvars.iv354
  br i1 %_4.i.i129, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit134", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit134": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit127"
  %_0.i.i132 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i75, i64 %indvars.iv354
  %_62 = sext i32 %_0.sroa.3.0.i.i485 to i64
  %41 = getelementptr inbounds nuw i8, ptr %_0.i.i132, i64 16
  %len.i135 = load i64, ptr %41, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i136 = icmp ugt i64 %len.i135, %_62
  br i1 %_4.i.i136, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit141", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit141": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit134"
  %42 = getelementptr inbounds nuw i8, ptr %_0.i.i132, i64 8
  %_6.i138 = load ptr, ptr %42, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  %_0.i.i139 = getelementptr inbounds nuw i32, ptr %_6.i138, i64 %_62
  %43 = or i32 %_54, %_47
  store i32 %43, ptr %_0.i.i139, align 4
  br label %bb60

bb60:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit155", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit169", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit106", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit141", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit71", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit"
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.1484 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter1.sroa.0.1483, %max_limit
  %or.cond173 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter1.sroa.0.1483, %max_limit
  %not.or.cond173 = xor i1 %or.cond173, true
  %narrow = select i1 %not.or.cond173, i1 %_0.i3.i.i, i1 false
  %spec.select171 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1483, %spec.select171
  %44 = select i1 %or.cond173, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %44, i8 %iter1.sroa.7.1484, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter1.sroa.0.1483
  br i1 %or.cond173, label %bb4.loopexit, label %bb13

bb16:                                             ; preds = %bb13
  %_25 = icmp eq i32 %_26, %_0.sroa.3.0.i.i485
  %_30 = icmp eq i32 %_31, %_0.sroa.3.0.i.i485
  %or.cond = or i1 %_25, %_30
  br i1 %or.cond, label %bb21, label %bb24

bb24:                                             ; preds = %bb16
  %len.i142 = load i64, ptr %14, align 8, !alias.scope !1742, !noalias !1745, !noundef !15
  %_4.i.i143.not = icmp eq i64 %len.i142, 0
  br i1 %_4.i.i143.not, label %panic.i.i165.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit148"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit148": ; preds = %bb24
  %_6.i145 = load ptr, ptr %15, align 8, !alias.scope !1742, !noalias !1745, !nonnull !15, !noundef !15
  %_39 = sext i32 %_0.sroa.3.0.i.i485 to i64
  %45 = getelementptr inbounds nuw i8, ptr %_6.i145, i64 16
  %len.i149 = load i64, ptr %45, align 8, !alias.scope !1747, !noalias !1750, !noundef !15
  %_4.i.i150 = icmp ugt i64 %len.i149, %_39
  br i1 %_4.i.i150, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit155", label %panic.i.i165.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit155": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit148"
  %46 = getelementptr inbounds nuw i8, ptr %_6.i145, i64 8
  %_6.i152 = load ptr, ptr %46, align 8, !alias.scope !1747, !noalias !1750, !nonnull !15, !noundef !15
  %_0.i.i153 = getelementptr inbounds nuw i32, ptr %_6.i152, i64 %_39
  store i32 0, ptr %_0.i.i153, align 4
  br label %bb60

bb21:                                             ; preds = %bb16
  %len.i156 = load i64, ptr %16, align 8, !alias.scope !1752, !noalias !1755, !noundef !15
  %_4.i.i157.not = icmp eq i64 %len.i156, 0
  br i1 %_4.i.i157.not, label %panic.i.i165.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit162"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit162": ; preds = %bb21
  %_6.i159 = load ptr, ptr %17, align 8, !alias.scope !1752, !noalias !1755, !nonnull !15, !noundef !15
  %_35 = sext i32 %_0.sroa.3.0.i.i485 to i64
  %47 = getelementptr inbounds nuw i8, ptr %_6.i159, i64 16
  %len.i163 = load i64, ptr %47, align 8, !alias.scope !1757, !noalias !1760, !noundef !15
  %_4.i.i164 = icmp ugt i64 %len.i163, %_35
  br i1 %_4.i.i164, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit169", label %panic.i.i165.invoke

panic.i.i165.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit162", %bb21, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit148", %bb24, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit134", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit127", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit113", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit78", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit99", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit92", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit85", %bb41, %bb32, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit64", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit57", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit44", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit", %bb49, %bb55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit", %bb65
  %48 = phi i64 [ %_105, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit" ], [ %_103, %bb65 ], [ %_35, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit162" ], [ 0, %bb21 ], [ %_39, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit148" ], [ 0, %bb24 ], [ %_62, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit134" ], [ %indvars.iv354, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit127" ], [ %_58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit113" ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit78" ], [ %_73, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit99" ], [ %indvars.iv354, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit92" ], [ %_69, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit85" ], [ %22, %bb41 ], [ %21, %bb32 ], [ %_86, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit64" ], [ %indvars.iv354, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit57" ], [ %_82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit44" ], [ %_90, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit" ], [ %20, %bb49 ], [ %indvars.iv354, %bb55 ]
  %49 = phi i64 [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit" ], [ %len.i, %bb65 ], [ %len.i163, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit162" ], [ %len.i156, %bb21 ], [ %len.i149, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit148" ], [ %len.i142, %bb24 ], [ %len.i135, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit134" ], [ %len.i72, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit127" ], [ %len.i107, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit113" ], [ %len.i107, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit78" ], [ %len.i100, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit99" ], [ %len.i79, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit92" ], [ %len.i86, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit85" ], [ %len.i79, %bb41 ], [ %len.i72, %bb32 ], [ %len.i65, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit64" ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit57" ], [ %len.i51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit44" ], [ %len.i45, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit" ], [ %len.i38, %bb49 ], [ %len.i32, %bb55 ]
  %50 = phi ptr [ @alloc_386c73c30fea93eccc8a7f46f1983a1c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit" ], [ @alloc_8544bfb3c8c084936535511a119a084f, %bb65 ], [ @alloc_bdfb6b239066b77ed70793146b5c2059, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit162" ], [ @alloc_a19b72dfc79b3aa2e3715f5d662eaeb2, %bb21 ], [ @alloc_ef4fe3a8e20ba1cfc7592862c489d9a3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit148" ], [ @alloc_391f698352d90130dbb8a820f06115a9, %bb24 ], [ @alloc_ebd88c669f3567c18b09b5b480517974, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit134" ], [ @alloc_0c5d266dc036bd0c491cef68ce06f8da, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit127" ], [ @alloc_6a6f11b586cba725f4a3d3108358ec0a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit113" ], [ @alloc_bede37b29741f9bb5b0006ede25fa67b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit78" ], [ @alloc_b60d3fcbcf65782f6a0aed7bf14f322c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit99" ], [ @alloc_3ab3dc165b20ab8d6bf6358a2b823572, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit92" ], [ @alloc_643c308694e490f30a227da0e0797d5b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit85" ], [ @alloc_0fcf2a4e7696da801f5d16213760d557, %bb41 ], [ @alloc_31acd7ca53f70ac5b43620ed7982f35c, %bb32 ], [ @alloc_f72ab7cdd9f702b12365cbb604335f87, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit64" ], [ @alloc_4de28d89546c5858476c1330acb6fefc, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE.exit57" ], [ @alloc_fdc805f4c88fcdefc7ed1e1fae0f0010, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE.exit44" ], [ @alloc_18f2ded290a7e240f3c77ae1a1d18cec, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit" ], [ @alloc_e4a2a57ae5b5158db5410ca2b0fc4911, %bb49 ], [ @alloc_ca4318a3aae233dcc8d8939970596e79, %bb55 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %48, i64 noundef range(i64 0, 2305843009213693952) %49, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %50) #27
          to label %panic.i.i165.cont unwind label %cleanup

panic.i.i165.cont:                                ; preds = %panic.i.i165.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE.exit169": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE.exit162"
  %51 = getelementptr inbounds nuw i8, ptr %_6.i159, i64 8
  %_6.i166 = load ptr, ptr %51, align 8, !alias.scope !1757, !noalias !1760, !nonnull !15, !noundef !15
  %_0.i.i167 = getelementptr inbounds nuw i32, ptr %_6.i166, i64 %_35
  store i32 1, ptr %_0.i.i167, align 4
  br label %bb60

terminate:                                        ; preds = %cleanup
  %52 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb75:                                             ; preds = %cleanup
  resume { ptr, i32 } %18
}
