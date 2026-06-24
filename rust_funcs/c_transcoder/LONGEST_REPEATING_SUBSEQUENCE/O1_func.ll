define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %str_) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str_, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1675, !noundef !15
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_5 = add nuw nsw i64 %_0.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1684
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1684, !noundef !15
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1684, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h0cb00f4ca25b6bc9E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1684
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1684
  unreachable

_ZN5alloc3vec9from_elem17h0cb00f4ca25b6bc9E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1684, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1684
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1684
  %5 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %5, align 8, !alias.scope !1684
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17head7a041ad9d8719E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %6 = getelementptr inbounds nuw i8, ptr %str_, i64 8
  %_6.i28 = load ptr, ptr %6, align 8, !nonnull !15
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i285 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i285, label %bb10, label %bb13.preheader.lr.ph

bb13.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h0cb00f4ca25b6bc9E.exit
  %.not = icmp eq i64 %_0.i, 1
  %iter.sroa.7.1291 = zext i1 %.not to i8
  %_0.i3.i.i286.not = icmp eq i64 %_0.i, 1
  %iter.sroa.0.1290 = select i1 %_0.i3.i.i286.not, i64 1, i64 2
  %_0.i3.i.i18276.not = icmp eq i64 %_0.i, 1
  %iter1.sroa.7.1281 = zext i1 %_0.i3.i.i18276.not to i8
  %iter1.sroa.0.1280 = select i1 %_0.i3.i.i18276.not, i64 1, i64 2
  br label %bb13.preheader

cleanup:                                          ; preds = %panic.i.i102.invoke
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb39 unwind label %terminate

bb6.loopexit:                                     ; preds = %bb34
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1293 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1292, %_0.i
  %or.cond110 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1292, %_0.i
  %not.or.cond110 = xor i1 %or.cond110, true
  %narrow = select i1 %not.or.cond110, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1292, %spec.select
  %12 = select i1 %or.cond110, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %12, i8 %iter.sroa.7.1293, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1292
  br i1 %or.cond110, label %bb10, label %bb13.preheader

bb13.preheader:                                   ; preds = %bb13.preheader.lr.ph, %bb6.loopexit
  %_0.sroa.3.0.i.i294 = phi i64 [ 1, %bb13.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb6.loopexit ]
  %iter.sroa.7.1293 = phi i8 [ %iter.sroa.7.1291, %bb13.preheader.lr.ph ], [ %iter.sroa.7.1, %bb6.loopexit ]
  %iter.sroa.0.1292 = phi i64 [ %iter.sroa.0.1290, %bb13.preheader.lr.ph ], [ %iter.sroa.0.1, %bb6.loopexit ]
  %_23 = add i64 %_0.sroa.3.0.i.i294, -1
  %_4.i.i26 = icmp ult i64 %_23, %_0.i
  %_0.i.i29 = getelementptr inbounds nuw i32, ptr %_6.i28, i64 %_23
  br label %bb15

bb10:                                             ; preds = %bb6.loopexit, %_ZN5alloc3vec9from_elem17h0cb00f4ca25b6bc9E.exit
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %13, align 8, !alias.scope !1685, !noalias !1688, !noundef !15
  %_4.i.i = icmp ult i64 %_0.i, %len.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit": ; preds = %bb10
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %14, align 8, !alias.scope !1685, !noalias !1688, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_0.i
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i5 = load i64, ptr %15, align 8, !alias.scope !1690, !noalias !1693, !noundef !15
  %_4.i.i6 = icmp ult i64 %_0.i, %len.i5
  br i1 %_4.i.i6, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit"
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i8 = load ptr, ptr %16, align 8, !alias.scope !1690, !noalias !1693, !nonnull !15, !noundef !15
  %_0.i.i9 = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_0.i
  %_0 = load i32, ptr %_0.i.i9, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb15:                                             ; preds = %bb13.preheader, %bb34
  %_0.sroa.3.0.i.i20284 = phi i64 [ 1, %bb13.preheader ], [ %_0.sroa.3.0.i.i20, %bb34 ]
  %iter1.sroa.7.1283 = phi i8 [ %iter1.sroa.7.1281, %bb13.preheader ], [ %iter1.sroa.7.1, %bb34 ]
  %iter1.sroa.0.1282 = phi i64 [ %iter1.sroa.0.1280, %bb13.preheader ], [ %iter1.sroa.0.1, %bb34 ]
  br i1 %_4.i.i26, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit": ; preds = %bb15
  %_26 = add i64 %_0.sroa.3.0.i.i20284, -1
  %_4.i.i32 = icmp ult i64 %_26, %_0.i
  br i1 %_4.i.i32, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit37", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit37": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit"
  %_21 = load i32, ptr %_0.i.i29, align 4, !range !1695, !noundef !15
  %_0.i.i35 = getelementptr inbounds nuw i32, ptr %_6.i28, i64 %_26
  %_24 = load i32, ptr %_0.i.i35, align 4, !range !1695, !noundef !15
  %_20 = icmp eq i32 %_21, %_24
  %_27 = icmp ne i64 %_0.sroa.3.0.i.i294, %_0.sroa.3.0.i.i20284
  %or.cond = and i1 %_27, %_20
  br i1 %or.cond, label %bb20, label %bb26

bb26:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit37"
  %len.i38 = load i64, ptr %7, align 8, !alias.scope !1696, !noalias !1699, !noundef !15
  %_4.i.i39 = icmp ult i64 %_0.sroa.3.0.i.i294, %len.i38
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit44", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit44": ; preds = %bb26
  %_6.i41 = load ptr, ptr %8, align 8, !alias.scope !1696, !noalias !1699, !nonnull !15, !noundef !15
  %_0.i.i42 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %_0.sroa.3.0.i.i294
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 16
  %len.i52 = load i64, ptr %17, align 8, !alias.scope !1701, !noalias !1704, !noundef !15
  %_4.i.i53 = icmp ult i64 %_26, %len.i52
  br i1 %_4.i.i53, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit58", label %panic.i.i102.invoke

bb20:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit37"
  %len.i45 = load i64, ptr %9, align 8, !alias.scope !1706, !noalias !1709, !noundef !15
  %_4.i.i46 = icmp ult i64 %_23, %len.i45
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit51", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit51": ; preds = %bb20
  %_6.i48 = load ptr, ptr %10, align 8, !alias.scope !1706, !noalias !1709, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i48, i64 %_23
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 16
  %len.i86 = load i64, ptr %18, align 8, !alias.scope !1711, !noalias !1714, !noundef !15
  %_4.i.i87 = icmp ult i64 %_26, %len.i86
  br i1 %_4.i.i87, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit92", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit58": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit44"
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i42, i64 8
  %_6.i55 = load ptr, ptr %19, align 8, !alias.scope !1701, !noalias !1704, !nonnull !15, !noundef !15
  %_0.i.i56 = getelementptr inbounds nuw i32, ptr %_6.i55, i64 %_26
  %_36 = load i32, ptr %_0.i.i56, align 4, !noundef !15
  %_4.i.i60 = icmp ult i64 %_23, %len.i38
  br i1 %_4.i.i60, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit65", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit65": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit58"
  %_0.i.i63 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i41, i64 %_23
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i63, i64 16
  %len.i66 = load i64, ptr %20, align 8, !alias.scope !1716, !noalias !1719, !noundef !15
  %_4.i.i67 = icmp ult i64 %_0.sroa.3.0.i.i20284, %len.i66
  br i1 %_4.i.i67, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit72", label %panic.i.i102.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit65"
  %_4.i.i81 = icmp ult i64 %_0.sroa.3.0.i.i20284, %len.i52
  br i1 %_4.i.i81, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE.exit", label %panic.i.i102.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit72"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i63, i64 8
  %_6.i69 = load ptr, ptr %21, align 8, !alias.scope !1716, !noalias !1719, !nonnull !15, !noundef !15
  %_0.i.i70 = getelementptr inbounds nuw i32, ptr %_6.i69, i64 %_0.sroa.3.0.i.i20284
  %_40 = load i32, ptr %_0.i.i70, align 4, !noundef !15
  %_0.sroa.0.0.i.i73 = call noundef i32 @llvm.smax.i32(i32 %_40, i32 %_36)
  %_0.i.i84 = getelementptr inbounds nuw i32, ptr %_6.i55, i64 %_0.sroa.3.0.i.i20284
  store i32 %_0.sroa.0.0.i.i73, ptr %_0.i.i84, align 4
  br label %bb34

bb34:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE.exit106", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE.exit"
  %_10.i.i11 = trunc nuw i8 %iter1.sroa.7.1283 to i1
  %_0.i.not.i.i16 = icmp ugt i64 %iter1.sroa.0.1282, %_0.i
  %or.cond111 = select i1 %_10.i.i11, i1 true, i1 %_0.i.not.i.i16
  %_0.i3.i.i18 = icmp ult i64 %iter1.sroa.0.1282, %_0.i
  %not.or.cond111 = xor i1 %or.cond111, true
  %narrow220 = select i1 %not.or.cond111, i1 %_0.i3.i.i18, i1 false
  %spec.select108 = zext i1 %narrow220 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1282, %spec.select108
  %22 = select i1 %or.cond111, i1 true, i1 %_0.i3.i.i18
  %iter1.sroa.7.1 = select i1 %22, i8 %iter1.sroa.7.1283, i8 1
  %_0.sroa.3.0.i.i20 = select i1 %_10.i.i11, i64 undef, i64 %iter1.sroa.0.1282
  br i1 %or.cond111, label %bb6.loopexit, label %bb15

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit92": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit51"
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 8
  %_6.i89 = load ptr, ptr %23, align 8, !alias.scope !1711, !noalias !1714, !nonnull !15, !noundef !15
  %_0.i.i90 = getelementptr inbounds nuw i32, ptr %_6.i89, i64 %_26
  %_28 = load i32, ptr %_0.i.i90, align 4, !noundef !15
  %_4.i.i94 = icmp ult i64 %_0.sroa.3.0.i.i294, %len.i45
  br i1 %_4.i.i94, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E.exit99", label %panic.i.i102.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E.exit99": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit92"
  %_0.i.i97 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i48, i64 %_0.sroa.3.0.i.i294
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 16
  %len.i100 = load i64, ptr %24, align 8, !alias.scope !1721, !noalias !1724, !noundef !15
  %_4.i.i101 = icmp ult i64 %_0.sroa.3.0.i.i20284, %len.i100
  br i1 %_4.i.i101, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE.exit106", label %panic.i.i102.invoke

panic.i.i102.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E.exit99", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit92", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit51", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit72", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit65", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit58", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit44", %bb20, %bb26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit", %bb15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit", %bb10
  %25 = phi i64 [ %_0.i, %bb10 ], [ %_0.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit" ], [ %_0.sroa.3.0.i.i20284, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E.exit99" ], [ %_0.sroa.3.0.i.i294, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit92" ], [ %_26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit51" ], [ %_0.sroa.3.0.i.i20284, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit72" ], [ %_0.sroa.3.0.i.i20284, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit65" ], [ %_23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit58" ], [ %_26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit44" ], [ %_23, %bb20 ], [ %_0.sroa.3.0.i.i294, %bb26 ], [ %_26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit" ], [ %_23, %bb15 ]
  %26 = phi i64 [ %len.i, %bb10 ], [ %len.i5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit" ], [ %len.i100, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E.exit99" ], [ %len.i45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit92" ], [ %len.i86, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit51" ], [ %len.i52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit72" ], [ %len.i66, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit65" ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit58" ], [ %len.i52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit44" ], [ %len.i45, %bb20 ], [ %len.i38, %bb26 ], [ %_0.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit" ], [ %_0.i, %bb15 ]
  %27 = phi ptr [ @alloc_f426a59bb7f8f9c896477d472baff903, %bb10 ], [ @alloc_6410eee7a61c89a4fa45b76fb723e406, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit" ], [ @alloc_b4ba81760fc4aa8ea26640062df2043e, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E.exit99" ], [ @alloc_75aa23282e3ad9f967642267f12f8ead, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit92" ], [ @alloc_3ddc9a7ebfb409884fef3dff631aef52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit51" ], [ @alloc_75fdf6047d62b91f80715c461428f7e9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit72" ], [ @alloc_986d3f6f04e557837cb5d5f6bb6acaae, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit65" ], [ @alloc_08e94209e5c1486fb73dc49530f20bb4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E.exit58" ], [ @alloc_b2d8c27fc274c365358d91e50427072a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E.exit44" ], [ @alloc_e0eb47dc8532753bf29df75f75cdbdb9, %bb20 ], [ @alloc_f1bb4435a088bf22965930d8d8be2064, %bb26 ], [ @alloc_b24eb0e109121b25dba07de1a3843243, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E.exit" ], [ @alloc_5becf3499fb476d07427170f71d2b8ac, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %25, i64 noundef range(i64 0, 2305843009213693952) %26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %27) #27
          to label %panic.i.i102.cont unwind label %cleanup

panic.i.i102.cont:                                ; preds = %panic.i.i102.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE.exit106": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E.exit99"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 8
  %_6.i103 = load ptr, ptr %28, align 8, !alias.scope !1721, !noalias !1724, !nonnull !15, !noundef !15
  %_0.i.i104 = getelementptr inbounds nuw i32, ptr %_6.i103, i64 %_0.sroa.3.0.i.i20284
  %29 = add i32 %_28, 1
  store i32 %29, ptr %_0.i.i104, align 4
  br label %bb34

terminate:                                        ; preds = %cleanup
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %11
}
