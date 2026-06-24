define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %egg_floor = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %egg_floor)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_6 = sext i32 %k to i64
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1681
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %egg_floor, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %5 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 8
  br label %bb5

cleanup:                                          ; preds = %panic.i.i175.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr noalias noundef align 8 dereferenceable(24) %egg_floor) #30
          to label %bb58 unwind label %terminate

bb5:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit179", %_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit
  %iter.sroa.7.0 = phi i8 [ 0, %_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit179" ]
  %iter.sroa.0.0 = phi i32 [ 1, %_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit179" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb5
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %spec.select = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %8 = zext i1 %_0.i3.i.i to i32
  %spec.select180 = add nsw i32 %iter.sroa.0.0, %8
  %9 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit": ; preds = %bb2.i.i, %bb5
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb5 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb5 ], [ %spec.select180, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb5 ], [ %9, %bb2.i.i ]
  br i1 %or.cond, label %bb16.preheader, label %bb8

bb16.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit"
  %10 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 8
  %_0.i.not.i.i17349 = icmp slt i32 %k, 1
  br i1 %_0.i.not.i.i17349, label %bb24.preheader, label %bb18.lr.ph

bb18.lr.ph:                                       ; preds = %bb16.preheader
  %.not = icmp eq i32 %k, 1
  %iter1.sroa.7.1355 = zext i1 %.not to i8
  %_0.i3.i.i19350.not = icmp eq i32 %k, 1
  %iter1.sroa.0.1354 = select i1 %_0.i3.i.i19350.not, i32 1, i32 2
  br label %bb18

bb8:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit"
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_0.sroa.3.0.i.i
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i159 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i160 = icmp ugt i64 %len.i159, 1
  br i1 %_4.i.i160, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165", label %panic.i.i175.invoke

bb24.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158", %bb16.preheader
  %13 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 8
  %_0.i.not.i.i62369 = icmp slt i32 %k, 2
  %.not379 = icmp eq i32 %k, 2
  %iter3.sroa.7.1375 = zext i1 %.not379 to i8
  %_0.i3.i.i64370.not = icmp eq i32 %k, 2
  %iter3.sroa.0.1374 = select i1 %_0.i3.i.i64370.not, i32 2, i32 3
  br label %bb24

bb18:                                             ; preds = %bb18.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158"
  %_0.sroa.3.0.i.i21358 = phi i32 [ 1, %bb18.lr.ph ], [ %_0.sroa.3.0.i.i21, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158" ]
  %iter1.sroa.7.1357 = phi i8 [ %iter1.sroa.7.1355, %bb18.lr.ph ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158" ]
  %iter1.sroa.0.1356 = phi i32 [ %iter1.sroa.0.1354, %bb18.lr.ph ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158" ]
  %len.i25 = load i64, ptr %10, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i26 = icmp ugt i64 %len.i25, 1
  br i1 %_4.i.i26, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31": ; preds = %bb18
  %_6.i28 = load ptr, ptr %11, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_34 = sext i32 %_0.sroa.3.0.i.i21358 to i64
  %15 = getelementptr inbounds nuw i8, ptr %_6.i28, i64 40
  %len.i152 = load i64, ptr %15, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i153 = icmp ugt i64 %len.i152, %_34
  br i1 %_4.i.i153, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158", label %panic.i.i175.invoke

bb24:                                             ; preds = %bb24.backedge, %bb24.preheader
  %iter2.sroa.0.0 = phi i32 [ 2, %bb24.preheader ], [ %iter2.sroa.0.1, %bb24.backedge ]
  %iter2.sroa.7.0 = phi i8 [ 0, %bb24.preheader ], [ %iter2.sroa.7.1, %bb24.backedge ]
  %_10.i.i32 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i37 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond190 = select i1 %_10.i.i32, i1 true, i1 %_0.i.not.i.i37
  br i1 %or.cond190, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44", label %bb2.i.i38

bb2.i.i38:                                        ; preds = %bb24
  %_0.i3.i.i39 = icmp slt i32 %iter2.sroa.0.0, %n
  %16 = zext i1 %_0.i3.i.i39 to i32
  %spec.select183 = add nsw i32 %iter2.sroa.0.0, %16
  %spec.select184 = select i1 %_0.i3.i.i39, i8 %iter2.sroa.7.0, i8 1
  %17 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44": ; preds = %bb2.i.i38, %bb24
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb24 ], [ %spec.select183, %bb2.i.i38 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb24 ], [ %spec.select184, %bb2.i.i38 ]
  %_0.sroa.3.0.i.i41 = phi i64 [ 0, %bb24 ], [ %17, %bb2.i.i38 ]
  br i1 %or.cond190, label %bb27, label %bb30.preheader

bb30.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44"
  %_66 = add nsw i64 %_0.sroa.3.0.i.i41, -1
  br i1 %_0.i.not.i.i62369, label %bb24.backedge, label %bb32

bb24.backedge:                                    ; preds = %bb30.loopexit, %bb30.preheader
  br label %bb24

bb27:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44"
  %18 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 16
  %len.i45 = load i64, ptr %18, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i46 = icmp ugt i64 %len.i45, %_8
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit": ; preds = %bb27
  %19 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 8
  %_6.i48 = load ptr, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i48, i64 %_8
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 16
  %len.i51 = load i64, ptr %20, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i52 = icmp ugt i64 %len.i51, %_6
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 8
  %_6.i54 = load ptr, ptr %21, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i55 = getelementptr inbounds nuw i32, ptr %_6.i54, i64 %_6
  %_0 = load i32, ptr %_0.i.i55, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr noalias noundef align 8 dereferenceable(24) %egg_floor)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %egg_floor)
  ret i32 %_0

bb30.loopexit:                                    ; preds = %bb53, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit"
  %_10.i.i57 = trunc nuw i8 %iter3.sroa.7.1377 to i1
  %_0.i.not.i.i62 = icmp sgt i32 %iter3.sroa.0.1376, %k
  %or.cond191 = select i1 %_10.i.i57, i1 true, i1 %_0.i.not.i.i62
  %_0.i3.i.i64 = icmp slt i32 %iter3.sroa.0.1376, %k
  %not.or.cond191 = xor i1 %or.cond191, true
  %narrow295 = select i1 %not.or.cond191, i1 %_0.i3.i.i64, i1 false
  %spec.select185 = zext i1 %narrow295 to i32
  %iter3.sroa.0.1 = add nuw nsw i32 %iter3.sroa.0.1376, %spec.select185
  %22 = select i1 %or.cond191, i1 true, i1 %_0.i3.i.i64
  %iter3.sroa.7.1 = select i1 %22, i8 %iter3.sroa.7.1377, i8 1
  %_0.sroa.3.0.i.i66 = select i1 %_10.i.i57, i32 undef, i32 %iter3.sroa.0.1376
  br i1 %or.cond191, label %bb24.backedge, label %bb32

bb32:                                             ; preds = %bb30.preheader, %bb30.loopexit
  %_0.sroa.3.0.i.i66378 = phi i32 [ %_0.sroa.3.0.i.i66, %bb30.loopexit ], [ 2, %bb30.preheader ]
  %iter3.sroa.7.1377 = phi i8 [ %iter3.sroa.7.1, %bb30.loopexit ], [ %iter3.sroa.7.1375, %bb30.preheader ]
  %iter3.sroa.0.1376 = phi i32 [ %iter3.sroa.0.1, %bb30.loopexit ], [ %iter3.sroa.0.1374, %bb30.preheader ]
  %len.i70 = load i64, ptr %13, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i71 = icmp ult i64 %_0.sroa.3.0.i.i41, %len.i70
  br i1 %_4.i.i71, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76": ; preds = %bb32
  %_6.i73 = load ptr, ptr %14, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i74 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i73, i64 %_0.sroa.3.0.i.i41
  %_53 = sext i32 %_0.sroa.3.0.i.i66378 to i64
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 16
  %len.i77 = load i64, ptr %23, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i78 = icmp ugt i64 %len.i77, %_53
  br i1 %_4.i.i78, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 8
  %_6.i80 = load ptr, ptr %24, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i81 = getelementptr inbounds nuw i32, ptr %_6.i80, i64 %_53
  store i32 2147483647, ptr %_0.i.i81, align 4
  %_0.i.not.i.i88359 = icmp slt i32 %_0.sroa.3.0.i.i66378, 1
  br i1 %_0.i.not.i.i88359, label %bb30.loopexit, label %bb40.lr.ph

bb40.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit"
  %.not380 = icmp eq i32 %_0.sroa.3.0.i.i66378, 1
  %iter4.sroa.7.1365 = zext i1 %.not380 to i8
  %_0.i3.i.i90360.not = icmp eq i32 %_0.sroa.3.0.i.i66378, 1
  %iter4.sroa.0.1364 = select i1 %_0.i3.i.i90360.not, i32 1, i32 2
  br label %bb40

bb40:                                             ; preds = %bb40.lr.ph, %bb53
  %_0.sroa.3.0.i.i92368 = phi i32 [ 1, %bb40.lr.ph ], [ %_0.sroa.3.0.i.i92, %bb53 ]
  %iter4.sroa.7.1367 = phi i8 [ %iter4.sroa.7.1365, %bb40.lr.ph ], [ %iter4.sroa.7.1, %bb53 ]
  %iter4.sroa.0.1366 = phi i32 [ %iter4.sroa.0.1364, %bb40.lr.ph ], [ %iter4.sroa.0.1, %bb53 ]
  %len.i96 = load i64, ptr %13, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i97 = icmp ult i64 %_66, %len.i96
  br i1 %_4.i.i97, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102": ; preds = %bb40
  %_6.i99 = load ptr, ptr %14, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i99, i64 %_66
  %_68 = add i32 %_0.sroa.3.0.i.i92368, -1
  %_67 = sext i32 %_68 to i64
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i100, i64 16
  %len.i103 = load i64, ptr %25, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i104 = icmp ugt i64 %len.i103, %_67
  br i1 %_4.i.i104, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i100, i64 8
  %_6.i106 = load ptr, ptr %26, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i107 = getelementptr inbounds nuw i32, ptr %_6.i106, i64 %_67
  %_62 = load i32, ptr %_0.i.i107, align 4, !noundef !15
  %_4.i.i111 = icmp ult i64 %_0.sroa.3.0.i.i41, %len.i96
  br i1 %_4.i.i111, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109"
  %_0.i.i114 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i99, i64 %_0.sroa.3.0.i.i41
  %_74 = sub i32 %_0.sroa.3.0.i.i66378, %_0.sroa.3.0.i.i92368
  %_73 = sext i32 %_74 to i64
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i114, i64 16
  %len.i117 = load i64, ptr %27, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i118 = icmp ugt i64 %len.i117, %_73
  br i1 %_4.i.i118, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i114, i64 8
  %_6.i120 = load ptr, ptr %28, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_0.i.i121 = getelementptr inbounds nuw i32, ptr %_6.i120, i64 %_73
  %_69 = load i32, ptr %_0.i.i121, align 4, !noundef !15
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %_69, i32 %_62)
  %res = add i32 %_0.sroa.0.0.i, 1
  %_4.i.i132 = icmp ugt i64 %len.i117, %_53
  br i1 %_4.i.i132, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123"
  %_0.i.i135 = getelementptr inbounds nuw i32, ptr %_6.i120, i64 %_53
  %_76 = load i32, ptr %_0.i.i135, align 4, !noundef !15
  %_75 = icmp slt i32 %res, %_76
  br i1 %_75, label %bb49, label %bb53

bb49:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137"
  store i32 %res, ptr %_0.i.i135, align 4
  br label %bb53

bb53:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137", %bb49
  %_10.i.i83 = trunc nuw i8 %iter4.sroa.7.1367 to i1
  %_0.i.not.i.i88 = icmp sgt i32 %iter4.sroa.0.1366, %_0.sroa.3.0.i.i66378
  %or.cond192 = select i1 %_10.i.i83, i1 true, i1 %_0.i.not.i.i88
  %_0.i3.i.i90 = icmp slt i32 %iter4.sroa.0.1366, %_0.sroa.3.0.i.i66378
  %not.or.cond192 = xor i1 %or.cond192, true
  %narrow296 = select i1 %not.or.cond192, i1 %_0.i3.i.i90, i1 false
  %spec.select187 = zext i1 %narrow296 to i32
  %iter4.sroa.0.1 = add nuw nsw i32 %iter4.sroa.0.1366, %spec.select187
  %29 = select i1 %or.cond192, i1 true, i1 %_0.i3.i.i90
  %iter4.sroa.7.1 = select i1 %29, i8 %iter4.sroa.7.1367, i8 1
  %_0.sroa.3.0.i.i92 = select i1 %_10.i.i83, i32 undef, i32 %iter4.sroa.0.1366
  br i1 %or.cond192, label %bb30.loopexit, label %bb40

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31"
  %30 = getelementptr inbounds nuw i8, ptr %_6.i28, i64 32
  %_6.i155 = load ptr, ptr %30, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i156 = getelementptr inbounds nuw i32, ptr %_6.i155, i64 %_34
  store i32 %_0.sroa.3.0.i.i21358, ptr %_0.i.i156, align 4
  %_10.i.i12 = trunc nuw i8 %iter1.sroa.7.1357 to i1
  %_0.i.not.i.i17 = icmp sgt i32 %iter1.sroa.0.1356, %k
  %or.cond189 = select i1 %_10.i.i12, i1 true, i1 %_0.i.not.i.i17
  %_0.i3.i.i19 = icmp slt i32 %iter1.sroa.0.1356, %k
  %not.or.cond189 = xor i1 %or.cond189, true
  %narrow = select i1 %not.or.cond189, i1 %_0.i3.i.i19, i1 false
  %spec.select181 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1356, %spec.select181
  %31 = select i1 %or.cond189, i1 true, i1 %_0.i3.i.i19
  %iter1.sroa.7.1 = select i1 %31, i8 %iter1.sroa.7.1357, i8 1
  %_0.sroa.3.0.i.i21 = select i1 %_10.i.i12, i32 undef, i32 %iter1.sroa.0.1356
  br i1 %or.cond189, label %bb24.preheader, label %bb18

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit"
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i162 = load ptr, ptr %32, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i163 = getelementptr inbounds nuw i8, ptr %_6.i162, i64 4
  store i32 1, ptr %_0.i.i163, align 4
  %len.i166 = load i64, ptr %5, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i167 = icmp ult i64 %_0.sroa.3.0.i.i, %len.i166
  br i1 %_4.i.i167, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit172", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit172": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165"
  %_6.i169 = load ptr, ptr %6, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  %_0.i.i170 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i169, i64 %_0.sroa.3.0.i.i
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i170, i64 16
  %len.i173 = load i64, ptr %33, align 8, !alias.scope !1742, !noalias !1745, !noundef !15
  %_4.i.i174.not = icmp eq i64 %len.i173, 0
  br i1 %_4.i.i174.not, label %panic.i.i175.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit179"

panic.i.i175.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit172", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit", %bb8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31", %bb18, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76", %bb32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102", %bb40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit", %bb27
  %34 = phi i64 [ %_8, %bb27 ], [ %_6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit" ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123" ], [ %_73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116" ], [ %_0.sroa.3.0.i.i41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109" ], [ %_67, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102" ], [ %_66, %bb40 ], [ %_53, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76" ], [ %_0.sroa.3.0.i.i41, %bb32 ], [ %_34, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31" ], [ 1, %bb18 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit172" ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit" ], [ %_0.sroa.3.0.i.i, %bb8 ]
  %35 = phi i64 [ %len.i45, %bb27 ], [ %len.i51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit" ], [ %len.i117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123" ], [ %len.i117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116" ], [ %len.i96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109" ], [ %len.i103, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102" ], [ %len.i96, %bb40 ], [ %len.i77, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76" ], [ %len.i70, %bb32 ], [ %len.i152, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31" ], [ %len.i25, %bb18 ], [ %len.i173, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit172" ], [ %len.i166, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165" ], [ %len.i159, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit" ], [ %len.i, %bb8 ]
  %36 = phi ptr [ @alloc_fdcf2c6d2150b2fc9bae18ecd7fcd3ba, %bb27 ], [ @alloc_2429a749cd708bad3bd715664c620beb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit" ], [ @alloc_0a3293fb90ec7a21ca3ec3f6d8e1128f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123" ], [ @alloc_eb67e84b433205304f18292273289147, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116" ], [ @alloc_2f5910b2496361c9938cbffac9cb9af1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109" ], [ @alloc_4d7b73b0c4b699d0f47426473d564737, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102" ], [ @alloc_b911eee1ed79bf2f2ab75ea1bd163924, %bb40 ], [ @alloc_2f73a3f93ea74f024ba3d3d946c0327b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76" ], [ @alloc_fc1b892186aa1294ed00c965fc9f7acd, %bb32 ], [ @alloc_13ae6f97f744c199421ef8bc95f56e8a, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31" ], [ @alloc_f4c1fc385b1e1b09c5d67512231de85e, %bb18 ], [ @alloc_2f348a379fb378620ae67469b6464b82, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit172" ], [ @alloc_b1f7b8b4bf22f3b08eab99ed4865e487, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165" ], [ @alloc_c1c7dccd1e4c49c1a9426c88282fb090, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit" ], [ @alloc_a45a3ada32d02356006c6967e63029ea, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %34, i64 noundef range(i64 0, 2305843009213693952) %35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %36) #27
          to label %panic.i.i175.cont unwind label %cleanup

panic.i.i175.cont:                                ; preds = %panic.i.i175.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit179": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit172"
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i170, i64 8
  %_6.i176 = load ptr, ptr %37, align 8, !alias.scope !1742, !noalias !1745, !nonnull !15, !noundef !15
  store i32 0, ptr %_6.i176, align 4
  br label %bb5

terminate:                                        ; preds = %cleanup
  %38 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb58:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
