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

cleanup:                                          ; preds = %panic.i.i161.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr noalias noundef align 8 dereferenceable(24) %egg_floor) #30
          to label %bb56 unwind label %terminate

bb5:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165", %_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit
  %iter.sroa.7.0 = phi i8 [ 0, %_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165" ]
  %iter.sroa.0.0 = phi i32 [ 1, %_ZN5alloc3vec9from_elem17h74544d21271e6d10E.exit ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb5
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %spec.select = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %8 = zext i1 %_0.i3.i.i to i32
  %spec.select166 = add nsw i32 %iter.sroa.0.0, %8
  %9 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit": ; preds = %bb2.i.i, %bb5
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb5 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb5 ], [ %spec.select166, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb5 ], [ %9, %bb2.i.i ]
  br i1 %or.cond, label %bb14.preheader, label %bb8

bb14.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit"
  %10 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 8
  %_0.i.not.i.i17314 = icmp slt i32 %k, 1
  br i1 %_0.i.not.i.i17314, label %bb22.preheader, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb14.preheader
  %.not = icmp eq i32 %k, 1
  %iter1.sroa.7.1320 = zext i1 %.not to i8
  %_0.i3.i.i19315.not = icmp eq i32 %k, 1
  %iter1.sroa.0.1319 = select i1 %_0.i3.i.i19315.not, i32 1, i32 2
  br label %bb16

bb8:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit"
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_0.sroa.3.0.i.i
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i159 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i160 = icmp ugt i64 %len.i159, 1
  br i1 %_4.i.i160, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165", label %panic.i.i161.invoke

bb22.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158", %bb14.preheader
  %13 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 8
  %_0.i.not.i.i62334 = icmp slt i32 %k, 2
  %.not344 = icmp eq i32 %k, 2
  %iter3.sroa.7.1340 = zext i1 %.not344 to i8
  %_0.i3.i.i64335.not = icmp eq i32 %k, 2
  %iter3.sroa.0.1339 = select i1 %_0.i3.i.i64335.not, i32 2, i32 3
  br label %bb22

bb16:                                             ; preds = %bb16.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158"
  %_0.sroa.3.0.i.i21323 = phi i32 [ 1, %bb16.lr.ph ], [ %_0.sroa.3.0.i.i21, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158" ]
  %iter1.sroa.7.1322 = phi i8 [ %iter1.sroa.7.1320, %bb16.lr.ph ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158" ]
  %iter1.sroa.0.1321 = phi i32 [ %iter1.sroa.0.1319, %bb16.lr.ph ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158" ]
  %len.i25 = load i64, ptr %10, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i26 = icmp ugt i64 %len.i25, 1
  br i1 %_4.i.i26, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31": ; preds = %bb16
  %_6.i28 = load ptr, ptr %11, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_31 = sext i32 %_0.sroa.3.0.i.i21323 to i64
  %15 = getelementptr inbounds nuw i8, ptr %_6.i28, i64 40
  %len.i152 = load i64, ptr %15, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i153 = icmp ugt i64 %len.i152, %_31
  br i1 %_4.i.i153, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158", label %panic.i.i161.invoke

bb22:                                             ; preds = %bb22.backedge, %bb22.preheader
  %iter2.sroa.0.0 = phi i32 [ 2, %bb22.preheader ], [ %iter2.sroa.0.1, %bb22.backedge ]
  %iter2.sroa.7.0 = phi i8 [ 0, %bb22.preheader ], [ %iter2.sroa.7.1, %bb22.backedge ]
  %_10.i.i32 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i37 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond176 = select i1 %_10.i.i32, i1 true, i1 %_0.i.not.i.i37
  br i1 %or.cond176, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44", label %bb2.i.i38

bb2.i.i38:                                        ; preds = %bb22
  %_0.i3.i.i39 = icmp slt i32 %iter2.sroa.0.0, %n
  %16 = zext i1 %_0.i3.i.i39 to i32
  %spec.select169 = add nsw i32 %iter2.sroa.0.0, %16
  %spec.select170 = select i1 %_0.i3.i.i39, i8 %iter2.sroa.7.0, i8 1
  %17 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44": ; preds = %bb2.i.i38, %bb22
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb22 ], [ %spec.select169, %bb2.i.i38 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb22 ], [ %spec.select170, %bb2.i.i38 ]
  %_0.sroa.3.0.i.i41 = phi i64 [ 0, %bb22 ], [ %17, %bb2.i.i38 ]
  br i1 %or.cond176, label %bb25, label %bb28.preheader

bb28.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44"
  %_63 = add nsw i64 %_0.sroa.3.0.i.i41, -1
  br i1 %_0.i.not.i.i62334, label %bb22.backedge, label %bb30

bb22.backedge:                                    ; preds = %bb28.loopexit, %bb28.preheader
  br label %bb22

bb25:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E.exit44"
  %18 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 16
  %len.i45 = load i64, ptr %18, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i46 = icmp ugt i64 %len.i45, %_8
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit": ; preds = %bb25
  %19 = getelementptr inbounds nuw i8, ptr %egg_floor, i64 8
  %_6.i48 = load ptr, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i48, i64 %_8
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 16
  %len.i51 = load i64, ptr %20, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i52 = icmp ugt i64 %len.i51, %_6
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 8
  %_6.i54 = load ptr, ptr %21, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i55 = getelementptr inbounds nuw i32, ptr %_6.i54, i64 %_6
  %_0 = load i32, ptr %_0.i.i55, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr noalias noundef align 8 dereferenceable(24) %egg_floor)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %egg_floor)
  ret i32 %_0

bb28.loopexit:                                    ; preds = %bb51, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit"
  %_10.i.i57 = trunc nuw i8 %iter3.sroa.7.1342 to i1
  %_0.i.not.i.i62 = icmp sgt i32 %iter3.sroa.0.1341, %k
  %or.cond177 = select i1 %_10.i.i57, i1 true, i1 %_0.i.not.i.i62
  %_0.i3.i.i64 = icmp slt i32 %iter3.sroa.0.1341, %k
  %not.or.cond177 = xor i1 %or.cond177, true
  %narrow267 = select i1 %not.or.cond177, i1 %_0.i3.i.i64, i1 false
  %spec.select171 = zext i1 %narrow267 to i32
  %iter3.sroa.0.1 = add nuw nsw i32 %iter3.sroa.0.1341, %spec.select171
  %22 = select i1 %or.cond177, i1 true, i1 %_0.i3.i.i64
  %iter3.sroa.7.1 = select i1 %22, i8 %iter3.sroa.7.1342, i8 1
  %_0.sroa.3.0.i.i66 = select i1 %_10.i.i57, i32 undef, i32 %iter3.sroa.0.1341
  br i1 %or.cond177, label %bb22.backedge, label %bb30

bb30:                                             ; preds = %bb28.preheader, %bb28.loopexit
  %_0.sroa.3.0.i.i66343 = phi i32 [ %_0.sroa.3.0.i.i66, %bb28.loopexit ], [ 2, %bb28.preheader ]
  %iter3.sroa.7.1342 = phi i8 [ %iter3.sroa.7.1, %bb28.loopexit ], [ %iter3.sroa.7.1340, %bb28.preheader ]
  %iter3.sroa.0.1341 = phi i32 [ %iter3.sroa.0.1, %bb28.loopexit ], [ %iter3.sroa.0.1339, %bb28.preheader ]
  %len.i70 = load i64, ptr %13, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i71 = icmp ult i64 %_0.sroa.3.0.i.i41, %len.i70
  br i1 %_4.i.i71, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76": ; preds = %bb30
  %_6.i73 = load ptr, ptr %14, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i74 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i73, i64 %_0.sroa.3.0.i.i41
  %_50 = sext i32 %_0.sroa.3.0.i.i66343 to i64
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 16
  %len.i77 = load i64, ptr %23, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i78 = icmp ugt i64 %len.i77, %_50
  br i1 %_4.i.i78, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit", label %panic.i.i161.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i74, i64 8
  %_6.i80 = load ptr, ptr %24, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i81 = getelementptr inbounds nuw i32, ptr %_6.i80, i64 %_50
  store i32 2147483647, ptr %_0.i.i81, align 4
  %_0.i.not.i.i88324 = icmp slt i32 %_0.sroa.3.0.i.i66343, 1
  br i1 %_0.i.not.i.i88324, label %bb28.loopexit, label %bb38.lr.ph

bb38.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit"
  %.not345 = icmp eq i32 %_0.sroa.3.0.i.i66343, 1
  %iter4.sroa.7.1330 = zext i1 %.not345 to i8
  %_0.i3.i.i90325.not = icmp eq i32 %_0.sroa.3.0.i.i66343, 1
  %iter4.sroa.0.1329 = select i1 %_0.i3.i.i90325.not, i32 1, i32 2
  br label %bb38

bb38:                                             ; preds = %bb38.lr.ph, %bb51
  %_0.sroa.3.0.i.i92333 = phi i32 [ 1, %bb38.lr.ph ], [ %_0.sroa.3.0.i.i92, %bb51 ]
  %iter4.sroa.7.1332 = phi i8 [ %iter4.sroa.7.1330, %bb38.lr.ph ], [ %iter4.sroa.7.1, %bb51 ]
  %iter4.sroa.0.1331 = phi i32 [ %iter4.sroa.0.1329, %bb38.lr.ph ], [ %iter4.sroa.0.1, %bb51 ]
  %len.i96 = load i64, ptr %13, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i97 = icmp ult i64 %_63, %len.i96
  br i1 %_4.i.i97, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102": ; preds = %bb38
  %_6.i99 = load ptr, ptr %14, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i99, i64 %_63
  %_65 = add i32 %_0.sroa.3.0.i.i92333, -1
  %_64 = sext i32 %_65 to i64
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i100, i64 16
  %len.i103 = load i64, ptr %25, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i104 = icmp ugt i64 %len.i103, %_64
  br i1 %_4.i.i104, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i100, i64 8
  %_6.i106 = load ptr, ptr %26, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i107 = getelementptr inbounds nuw i32, ptr %_6.i106, i64 %_64
  %_59 = load i32, ptr %_0.i.i107, align 4, !noundef !15
  %_4.i.i111 = icmp ult i64 %_0.sroa.3.0.i.i41, %len.i96
  br i1 %_4.i.i111, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109"
  %_0.i.i114 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i99, i64 %_0.sroa.3.0.i.i41
  %_71 = sub i32 %_0.sroa.3.0.i.i66343, %_0.sroa.3.0.i.i92333
  %_70 = sext i32 %_71 to i64
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i114, i64 16
  %len.i117 = load i64, ptr %27, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i118 = icmp ugt i64 %len.i117, %_70
  br i1 %_4.i.i118, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i114, i64 8
  %_6.i120 = load ptr, ptr %28, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_0.i.i121 = getelementptr inbounds nuw i32, ptr %_6.i120, i64 %_70
  %_66 = load i32, ptr %_0.i.i121, align 4, !noundef !15
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %_66, i32 %_59)
  %res = add i32 %_0.sroa.0.0.i, 1
  %_4.i.i132 = icmp ugt i64 %len.i117, %_50
  br i1 %_4.i.i132, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137", label %panic.i.i161.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123"
  %_0.i.i135 = getelementptr inbounds nuw i32, ptr %_6.i120, i64 %_50
  %_73 = load i32, ptr %_0.i.i135, align 4, !noundef !15
  %_72 = icmp slt i32 %res, %_73
  br i1 %_72, label %bb47, label %bb51

bb47:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137"
  store i32 %res, ptr %_0.i.i135, align 4
  br label %bb51

bb51:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit137", %bb47
  %_10.i.i83 = trunc nuw i8 %iter4.sroa.7.1332 to i1
  %_0.i.not.i.i88 = icmp sgt i32 %iter4.sroa.0.1331, %_0.sroa.3.0.i.i66343
  %or.cond178 = select i1 %_10.i.i83, i1 true, i1 %_0.i.not.i.i88
  %_0.i3.i.i90 = icmp slt i32 %iter4.sroa.0.1331, %_0.sroa.3.0.i.i66343
  %not.or.cond178 = xor i1 %or.cond178, true
  %narrow268 = select i1 %not.or.cond178, i1 %_0.i3.i.i90, i1 false
  %spec.select173 = zext i1 %narrow268 to i32
  %iter4.sroa.0.1 = add nuw nsw i32 %iter4.sroa.0.1331, %spec.select173
  %29 = select i1 %or.cond178, i1 true, i1 %_0.i3.i.i90
  %iter4.sroa.7.1 = select i1 %29, i8 %iter4.sroa.7.1332, i8 1
  %_0.sroa.3.0.i.i92 = select i1 %_10.i.i83, i32 undef, i32 %iter4.sroa.0.1331
  br i1 %or.cond178, label %bb28.loopexit, label %bb38

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit158": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31"
  %30 = getelementptr inbounds nuw i8, ptr %_6.i28, i64 32
  %_6.i155 = load ptr, ptr %30, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i156 = getelementptr inbounds nuw i32, ptr %_6.i155, i64 %_31
  store i32 %_0.sroa.3.0.i.i21323, ptr %_0.i.i156, align 4
  %_10.i.i12 = trunc nuw i8 %iter1.sroa.7.1322 to i1
  %_0.i.not.i.i17 = icmp sgt i32 %iter1.sroa.0.1321, %k
  %or.cond175 = select i1 %_10.i.i12, i1 true, i1 %_0.i.not.i.i17
  %_0.i3.i.i19 = icmp slt i32 %iter1.sroa.0.1321, %k
  %not.or.cond175 = xor i1 %or.cond175, true
  %narrow = select i1 %not.or.cond175, i1 %_0.i3.i.i19, i1 false
  %spec.select167 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1321, %spec.select167
  %31 = select i1 %or.cond175, i1 true, i1 %_0.i3.i.i19
  %iter1.sroa.7.1 = select i1 %31, i8 %iter1.sroa.7.1322, i8 1
  %_0.sroa.3.0.i.i21 = select i1 %_10.i.i12, i32 undef, i32 %iter1.sroa.0.1321
  br i1 %or.cond175, label %bb22.preheader, label %bb16

panic.i.i161.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit", %bb8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31", %bb16, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76", %bb30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102", %bb38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit", %bb25
  %32 = phi i64 [ %_8, %bb25 ], [ %_6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123" ], [ %_70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116" ], [ %_0.sroa.3.0.i.i41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109" ], [ %_64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102" ], [ %_63, %bb38 ], [ %_50, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76" ], [ %_0.sroa.3.0.i.i41, %bb30 ], [ %_31, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31" ], [ 1, %bb16 ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit" ], [ %_0.sroa.3.0.i.i, %bb8 ]
  %33 = phi i64 [ %len.i45, %bb25 ], [ %len.i51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit" ], [ %len.i117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123" ], [ %len.i117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116" ], [ %len.i96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109" ], [ %len.i103, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102" ], [ %len.i96, %bb38 ], [ %len.i77, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76" ], [ %len.i70, %bb30 ], [ %len.i152, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31" ], [ %len.i25, %bb16 ], [ %len.i159, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit" ], [ %len.i, %bb8 ]
  %34 = phi ptr [ @alloc_979425176b9e4e936d365fbedae723fa, %bb25 ], [ @alloc_e7bb9824e3ee364bf45d0b902cc723c3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit" ], [ @alloc_32c73f12a7be86413eb87fc0861dcc27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit123" ], [ @alloc_0c31d2bfb1bb6ba7b3f17241e4a35ddd, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit116" ], [ @alloc_451929a80a7726c5067af1877cafc252, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E.exit109" ], [ @alloc_94aaeeae065667cd5c793bdc0798a67c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE.exit102" ], [ @alloc_657f197df126bcf32c674d9d668e890c, %bb38 ], [ @alloc_922e797aeef720d763533eb4ab0d8a96, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit76" ], [ @alloc_6a0aa63816c39acff13056d09d596af5, %bb30 ], [ @alloc_0e229f4cc200af877ee383e1d6d6508c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit31" ], [ @alloc_bfa1fe9798ef53d444f653cd4902de1e, %bb16 ], [ @alloc_e141c136a3b1e0d8b8320110c912c63b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit" ], [ @alloc_5703a26db8bc9ce61e1f1ea4fc9d51b8, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %32, i64 noundef range(i64 0, 2305843009213693952) %33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #27
          to label %panic.i.i161.cont unwind label %cleanup

panic.i.i161.cont:                                ; preds = %panic.i.i161.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE.exit165": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E.exit"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i162 = load ptr, ptr %35, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i163 = getelementptr inbounds nuw i8, ptr %_6.i162, i64 4
  store i32 1, ptr %_0.i.i163, align 4
  br label %bb5

terminate:                                        ; preds = %cleanup
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb56:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
