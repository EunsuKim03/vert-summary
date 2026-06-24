define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n, i32 noundef %x) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %_7 = sext i32 %x to i64
  %_6 = add nsw i64 %_7, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h1c155b4a36a96c24E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h1c155b4a36a96c24E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %4, align 8, !alias.scope !1681
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h033e1a4fd3315264E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %table, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %_0.sroa.0.0.i = call noundef i32 @llvm.smin.i32(i32 %x, i32 %m)
  %5 = getelementptr inbounds nuw i8, ptr %table, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %table, i64 8
  br label %bb6

cleanup:                                          ; preds = %panic.i.i90.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17he03508af9ca7e7dbE"(ptr noalias noundef align 8 dereferenceable(24) %table) #30
          to label %bb40 unwind label %terminate

bb6:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit94", %_ZN5alloc3vec9from_elem17h1c155b4a36a96c24E.exit
  %iter.sroa.7.0 = phi i8 [ 0, %_ZN5alloc3vec9from_elem17h1c155b4a36a96c24E.exit ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit94" ]
  %iter.sroa.0.0 = phi i32 [ 1, %_ZN5alloc3vec9from_elem17h1c155b4a36a96c24E.exit ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit94" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %_0.sroa.0.0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb6
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %_0.sroa.0.0.i
  %spec.select = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %8 = zext i1 %_0.i3.i.i to i32
  %spec.select95 = add nsw i32 %iter.sroa.0.0, %8
  %9 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E.exit": ; preds = %bb2.i.i, %bb6
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb6 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb6 ], [ %spec.select95, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb6 ], [ %9, %bb2.i.i ]
  br i1 %or.cond, label %bb15.preheader, label %bb9

bb15.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E.exit"
  %10 = getelementptr inbounds nuw i8, ptr %table, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %table, i64 8
  %_0.i.not.i.i14179 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i14179, label %bb18, label %bb21.preheader.lr.ph

bb21.preheader.lr.ph:                             ; preds = %bb15.preheader
  %.not = icmp eq i32 %n, 2
  %iter1.sroa.7.1185 = zext i1 %.not to i8
  %_0.i3.i.i16180.not = icmp eq i32 %n, 2
  %iter1.sroa.0.1184 = select i1 %_0.i3.i.i16180.not, i32 2, i32 3
  %_0.i.not.i.i39169 = icmp slt i32 %x, 1
  %.not189 = icmp eq i32 %x, 1
  %iter2.sroa.7.1175 = zext i1 %.not189 to i8
  %_0.i3.i.i41170.not = icmp eq i32 %x, 1
  %iter2.sroa.0.1174 = select i1 %_0.i3.i.i41170.not, i32 1, i32 2
  br label %bb21.preheader

bb9:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E.exit"
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, 1
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit", label %panic.i.i90.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit": ; preds = %bb9
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %12 = getelementptr inbounds nuw i8, ptr %_6.i, i64 40
  %len.i88 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i89 = icmp ult i64 %_0.sroa.3.0.i.i, %len.i88
  br i1 %_4.i.i89, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit94", label %panic.i.i90.invoke

bb15.loopexit:                                    ; preds = %bb21.loopexit, %bb21.preheader
  %_10.i.i9 = trunc nuw i8 %iter1.sroa.7.1188 to i1
  %_0.i.not.i.i14 = icmp sgt i32 %iter1.sroa.0.1187, %n
  %or.cond102 = select i1 %_10.i.i9, i1 true, i1 %_0.i.not.i.i14
  %_0.i3.i.i16 = icmp slt i32 %iter1.sroa.0.1187, %n
  %not.or.cond102 = xor i1 %or.cond102, true
  %narrow = select i1 %not.or.cond102, i1 %_0.i3.i.i16, i1 false
  %spec.select96 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1187, %spec.select96
  %13 = select i1 %or.cond102, i1 true, i1 %_0.i3.i.i16
  %iter1.sroa.7.1 = select i1 %13, i8 %iter1.sroa.7.1188, i8 1
  br i1 %or.cond102, label %bb18, label %bb21.preheader

bb21.preheader:                                   ; preds = %bb21.preheader.lr.ph, %bb15.loopexit
  %iter1.sroa.7.1188 = phi i8 [ %iter1.sroa.7.1185, %bb21.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb15.loopexit ]
  %iter1.sroa.0.1187 = phi i32 [ %iter1.sroa.0.1184, %bb21.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb15.loopexit ]
  %iter1.sroa.0.0186 = phi i32 [ 2, %bb21.preheader.lr.ph ], [ %iter1.sroa.0.1187, %bb15.loopexit ]
  %_49 = add nsw i32 %iter1.sroa.0.0186, -1
  %_48 = sext i32 %_49 to i64
  %_55 = zext nneg i32 %iter1.sroa.0.0186 to i64
  br i1 %_0.i.not.i.i39169, label %bb15.loopexit, label %bb23

bb18:                                             ; preds = %bb15.loopexit, %bb15.preheader
  %14 = getelementptr inbounds nuw i8, ptr %table, i64 16
  %len.i22 = load i64, ptr %14, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i23 = icmp ugt i64 %len.i22, %_9
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit": ; preds = %bb18
  %15 = getelementptr inbounds nuw i8, ptr %table, i64 8
  %_6.i25 = load ptr, ptr %15, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i26 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i25, i64 %_9
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i26, i64 16
  %len.i28 = load i64, ptr %16, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i29 = icmp ugt i64 %len.i28, %_7
  br i1 %_4.i.i29, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit"
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i26, i64 8
  %_6.i31 = load ptr, ptr %17, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i32 = getelementptr inbounds nuw i32, ptr %_6.i31, i64 %_7
  %_0 = load i32, ptr %_0.i.i32, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17he03508af9ca7e7dbE"(ptr noalias noundef align 8 dereferenceable(24) %table)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

bb21.loopexit:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit", %bb23
  %_10.i.i34 = trunc nuw i8 %iter2.sroa.7.1177 to i1
  %_0.i.not.i.i39 = icmp sgt i32 %iter2.sroa.0.1176, %x
  %or.cond103 = select i1 %_10.i.i34, i1 true, i1 %_0.i.not.i.i39
  %_0.i3.i.i41 = icmp slt i32 %iter2.sroa.0.1176, %x
  %not.or.cond103 = xor i1 %or.cond103, true
  %narrow138 = select i1 %not.or.cond103, i1 %_0.i3.i.i41, i1 false
  %spec.select98 = zext i1 %narrow138 to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.1176, %spec.select98
  %18 = select i1 %or.cond103, i1 true, i1 %_0.i3.i.i41
  %iter2.sroa.7.1 = select i1 %18, i8 %iter2.sroa.7.1177, i8 1
  %_0.sroa.3.0.i.i43 = select i1 %_10.i.i34, i32 undef, i32 %iter2.sroa.0.1176
  br i1 %or.cond103, label %bb15.loopexit, label %bb23

bb23:                                             ; preds = %bb21.preheader, %bb21.loopexit
  %_0.sroa.3.0.i.i43178 = phi i32 [ %_0.sroa.3.0.i.i43, %bb21.loopexit ], [ 1, %bb21.preheader ]
  %iter2.sroa.7.1177 = phi i8 [ %iter2.sroa.7.1, %bb21.loopexit ], [ %iter2.sroa.7.1175, %bb21.preheader ]
  %iter2.sroa.0.1176 = phi i32 [ %iter2.sroa.0.1, %bb21.loopexit ], [ %iter2.sroa.0.1174, %bb21.preheader ]
  %_0.sroa.0.0.i47 = call noundef i32 @llvm.smin.i32(i32 %_0.sroa.3.0.i.i43178, i32 %m)
  %_56 = sext i32 %_0.sroa.3.0.i.i43178 to i64
  %_0.i.not.i.i53159 = icmp slt i32 %_0.sroa.0.0.i47, 1
  br i1 %_0.i.not.i.i53159, label %bb21.loopexit, label %bb30.lr.ph

bb30.lr.ph:                                       ; preds = %bb23
  %.not190 = icmp eq i32 %_0.sroa.0.0.i47, 1
  %iter3.sroa.7.1165 = zext i1 %.not190 to i8
  %_0.i3.i.i55160.not = icmp eq i32 %_0.sroa.0.0.i47, 1
  %iter3.sroa.0.1164 = select i1 %_0.i3.i.i55160.not, i32 1, i32 2
  br label %bb30

bb30:                                             ; preds = %bb30.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit"
  %_0.sroa.3.0.i.i57168 = phi i32 [ 1, %bb30.lr.ph ], [ %_0.sroa.3.0.i.i57, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit" ]
  %iter3.sroa.7.1167 = phi i8 [ %iter3.sroa.7.1165, %bb30.lr.ph ], [ %iter3.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit" ]
  %iter3.sroa.0.1166 = phi i32 [ %iter3.sroa.0.1164, %bb30.lr.ph ], [ %iter3.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit" ]
  %len.i61 = load i64, ptr %10, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i62 = icmp ugt i64 %len.i61, %_48
  br i1 %_4.i.i62, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit67", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit67": ; preds = %bb30
  %_6.i64 = load ptr, ptr %11, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i65 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i64, i64 %_48
  %_51 = sub i32 %_0.sroa.3.0.i.i43178, %_0.sroa.3.0.i.i57168
  %_50 = sext i32 %_51 to i64
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i65, i64 16
  %len.i68 = load i64, ptr %19, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i69 = icmp ugt i64 %len.i68, %_50
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit74", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit67"
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i65, i64 8
  %_6.i71 = load ptr, ptr %20, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i71, i64 %_50
  %_44 = load i32, ptr %_0.i.i72, align 4, !noundef !15
  %_4.i.i76 = icmp ugt i64 %len.i61, %_55
  br i1 %_4.i.i76, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit81", label %panic.i.i90.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit74"
  %_0.i.i79 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i64, i64 %_55
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 16
  %len.i82 = load i64, ptr %21, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i83 = icmp ugt i64 %len.i82, %_56
  br i1 %_4.i.i83, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit", label %panic.i.i90.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit81"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 8
  %_6.i85 = load ptr, ptr %22, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %_56
  %23 = load i32, ptr %_0.i.i86, align 4, !noundef !15
  %24 = add i32 %23, %_44
  store i32 %24, ptr %_0.i.i86, align 4
  %_10.i.i48 = trunc nuw i8 %iter3.sroa.7.1167 to i1
  %_0.i.not.i.i53 = icmp sgt i32 %iter3.sroa.0.1166, %_0.sroa.0.0.i47
  %or.cond104 = select i1 %_10.i.i48, i1 true, i1 %_0.i.not.i.i53
  %_0.i3.i.i55 = icmp slt i32 %iter3.sroa.0.1166, %_0.sroa.0.0.i47
  %not.or.cond104 = xor i1 %or.cond104, true
  %narrow139 = select i1 %not.or.cond104, i1 %_0.i3.i.i55, i1 false
  %spec.select100 = zext i1 %narrow139 to i32
  %iter3.sroa.0.1 = add nuw nsw i32 %iter3.sroa.0.1166, %spec.select100
  %25 = select i1 %or.cond104, i1 true, i1 %_0.i3.i.i55
  %iter3.sroa.7.1 = select i1 %25, i8 %iter3.sroa.7.1167, i8 1
  %_0.sroa.3.0.i.i57 = select i1 %_10.i.i48, i32 undef, i32 %iter3.sroa.0.1166
  br i1 %or.cond104, label %bb21.loopexit, label %bb30

panic.i.i90.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit", %bb9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit74", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit67", %bb30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit", %bb18
  %26 = phi i64 [ %_9, %bb18 ], [ %_7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit" ], [ %_56, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit81" ], [ %_55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit74" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit67" ], [ %_48, %bb30 ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit" ], [ 1, %bb9 ]
  %27 = phi i64 [ %len.i22, %bb18 ], [ %len.i28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit" ], [ %len.i82, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit81" ], [ %len.i61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit74" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit67" ], [ %len.i61, %bb30 ], [ %len.i88, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit" ], [ %len.i, %bb9 ]
  %28 = phi ptr [ @alloc_f00ede298b14ec2fa76120a253f5c6ae, %bb18 ], [ @alloc_7d3f8aaa6ac2cc957194a3e93ab0a652, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit" ], [ @alloc_8d7541b78a625eb802b56d2455e50ddc, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit81" ], [ @alloc_88d8d7569224b96d495d6268f741c6fe, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E.exit74" ], [ @alloc_05421d283e5940d0ff933c7ad09a3f0d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE.exit67" ], [ @alloc_f8fbe59ce21ef3c9574e12d12f23d9c8, %bb30 ], [ @alloc_c3ea006f633000c9cf551385f8cf170e, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit" ], [ @alloc_e3d21401c6aa205a88e651e9b1ed0d4b, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %26, i64 noundef range(i64 0, 2305843009213693952) %27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %28) #27
          to label %panic.i.i90.cont unwind label %cleanup

panic.i.i90.cont:                                 ; preds = %panic.i.i90.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE.exit94": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E.exit"
  %29 = getelementptr inbounds nuw i8, ptr %_6.i, i64 32
  %_6.i91 = load ptr, ptr %29, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i92 = getelementptr inbounds nuw i32, ptr %_6.i91, i64 %_0.sroa.3.0.i.i
  store i32 1, ptr %_0.i.i92, align 4
  br label %bb6

terminate:                                        ; preds = %cleanup
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb40:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
