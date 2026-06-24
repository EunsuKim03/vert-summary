define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %c = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h9f72b75b321b74b3E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h9f72b75b321b74b3E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3ee7d835f8ed41a8E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_0.i.not.i.i207 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i207, label %bb31.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h9f72b75b321b74b3E.exit
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.1212 = zext i1 %.not to i8
  %_0.i3.i.i208 = icmp ne i32 %n, 0
  %spec.select211 = zext i1 %_0.i3.i.i208 to i32
  br label %bb8

cleanup:                                          ; preds = %panic.i.i90.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0bd382d93a50b415E"(ptr noalias noundef align 8 dereferenceable(24) %c) #30
          to label %bb39 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb28
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1214 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1213, %n
  %or.cond100 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1213, %n
  %not.or.cond100 = xor i1 %or.cond100, true
  %narrow = select i1 %not.or.cond100, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1213, %spec.select
  %10 = select i1 %or.cond100, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1214, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1213
  br i1 %or.cond100, label %bb31.preheader, label %bb8

bb31.preheader:                                   ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h9f72b75b321b74b3E.exit
  %11 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len.i = load i64, ptr %11, align 8
  %_4.i.i = icmp ugt i64 %len.i, %_5
  %12 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_6.i = load ptr, ptr %12, align 8, !nonnull !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_5
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br label %bb31

bb8:                                              ; preds = %bb8.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i215 = phi i32 [ 0, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1214 = phi i8 [ %iter.sroa.7.1212, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1213 = phi i32 [ %spec.select211, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %x.y.i = call noundef i32 @llvm.smin.i32(i32 %_0.sroa.3.0.i.i215, i32 %n)
  %_33 = add i32 %_0.sroa.3.0.i.i215, -1
  %_32 = sext i32 %_33 to i64
  %_44 = sext i32 %_0.sroa.3.0.i.i215 to i64
  %_26 = sext i32 %_0.sroa.3.0.i.i215 to i64
  %_0.i3.i.i35199 = icmp sgt i32 %x.y.i, 0
  %not._0.i3.i.i35199 = xor i1 %_0.i3.i.i35199, true
  %iter1.sroa.7.1203 = zext i1 %not._0.i3.i.i35199 to i8
  %spec.select98202 = zext i1 %_0.i3.i.i35199 to i32
  br label %bb15

bb31:                                             ; preds = %bb31.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit"
  %iter2.sroa.0.0 = phi i32 [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit" ], [ 0, %bb31.preheader ]
  %iter2.sroa.7.0 = phi i8 [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit" ], [ 0, %bb31.preheader ]
  %sum.sroa.0.0 = phi i32 [ %17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit" ], [ 0, %bb31.preheader ]
  %_10.i.i9 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i14 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond101 = select i1 %_10.i.i9, i1 true, i1 %_0.i.not.i.i14
  br i1 %or.cond101, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit21", label %bb2.i.i15

bb2.i.i15:                                        ; preds = %bb31
  %_0.i3.i.i16 = icmp slt i32 %iter2.sroa.0.0, %n
  %15 = zext i1 %_0.i3.i.i16 to i32
  %spec.select96 = add nsw i32 %iter2.sroa.0.0, %15
  %spec.select97 = select i1 %_0.i3.i.i16, i8 %iter2.sroa.7.0, i8 1
  %16 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit21"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit21": ; preds = %bb2.i.i15, %bb31
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb31 ], [ %spec.select96, %bb2.i.i15 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb31 ], [ %spec.select97, %bb2.i.i15 ]
  %_0.sroa.3.0.i.i18 = phi i64 [ 0, %bb31 ], [ %16, %bb2.i.i15 ]
  br i1 %or.cond101, label %bb34, label %bb33

bb33:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit21"
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit": ; preds = %bb33
  %len.i22 = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i23 = icmp ult i64 %_0.sroa.3.0.i.i18, %len.i22
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit", label %panic.i.i90.invoke

bb34:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit21"
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0bd382d93a50b415E"(ptr noalias noundef align 8 dereferenceable(24) %c)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c)
  ret i32 %sum.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit"
  %_6.i25 = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_0.sroa.3.0.i.i18
  %_52 = load i32, ptr %_0.i.i26, align 4, !noundef !15
  %17 = add i32 %_52, %sum.sroa.0.0
  br label %bb31

bb15:                                             ; preds = %bb8, %bb28
  %_0.sroa.3.0.i.i37206 = phi i32 [ 0, %bb8 ], [ %_0.sroa.3.0.i.i37, %bb28 ]
  %iter1.sroa.7.1205 = phi i8 [ %iter1.sroa.7.1203, %bb8 ], [ %iter1.sroa.7.1, %bb28 ]
  %iter1.sroa.0.1204 = phi i32 [ %spec.select98202, %bb8 ], [ %iter1.sroa.0.1, %bb28 ]
  %_21 = icmp eq i32 %_0.sroa.3.0.i.i37206, 0
  %_22 = icmp eq i32 %_0.sroa.3.0.i.i37206, %_0.sroa.3.0.i.i215
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb18, label %bb21

bb18:                                             ; preds = %bb15
  %len.i41 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i42 = icmp ugt i64 %len.i41, %_26
  br i1 %_4.i.i42, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit", label %panic.i.i90.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit": ; preds = %bb18
  %_6.i44 = load ptr, ptr %8, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i45 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i44, i64 %_26
  %_27 = sext i32 %_0.sroa.3.0.i.i37206 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i45, i64 16
  %len.i88 = load i64, ptr %18, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i89 = icmp ugt i64 %len.i88, %_27
  br i1 %_4.i.i89, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84392aefe71dcde0E.exit94", label %panic.i.i90.invoke

bb21:                                             ; preds = %bb15
  %len.i47 = load i64, ptr %5, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i48 = icmp ugt i64 %len.i47, %_32
  br i1 %_4.i.i48, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit53", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit53": ; preds = %bb21
  %_6.i50 = load ptr, ptr %6, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i51 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i50, i64 %_32
  %_35 = add i32 %_0.sroa.3.0.i.i37206, -1
  %_34 = sext i32 %_35 to i64
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i51, i64 16
  %len.i54 = load i64, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i55 = icmp ugt i64 %len.i54, %_34
  br i1 %_4.i.i55, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit60", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit60": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit53"
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i51, i64 8
  %_6.i57 = load ptr, ptr %20, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i58 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_34
  %_28 = load i32, ptr %_0.i.i58, align 4, !noundef !15
  %_40 = sext i32 %_0.sroa.3.0.i.i37206 to i64
  %_4.i.i69 = icmp ugt i64 %len.i54, %_40
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit74", label %panic.i.i90.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit60"
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_40
  %_36 = load i32, ptr %_0.i.i72, align 4, !noundef !15
  %_4.i.i76 = icmp ugt i64 %len.i47, %_44
  br i1 %_4.i.i76, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit81", label %panic.i.i90.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit74"
  %_0.i.i79 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i50, i64 %_44
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 16
  %len.i82 = load i64, ptr %21, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i83 = icmp ugt i64 %len.i82, %_40
  br i1 %_4.i.i83, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84392aefe71dcde0E.exit", label %panic.i.i90.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84392aefe71dcde0E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit81"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 8
  %_6.i85 = load ptr, ptr %22, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %_40
  %23 = add i32 %_36, %_28
  store i32 %23, ptr %_0.i.i86, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84392aefe71dcde0E.exit94", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84392aefe71dcde0E.exit"
  %_10.i.i28 = trunc nuw i8 %iter1.sroa.7.1205 to i1
  %_0.i.not.i.i33 = icmp sgt i32 %iter1.sroa.0.1204, %x.y.i
  %or.cond102 = select i1 %_10.i.i28, i1 true, i1 %_0.i.not.i.i33
  %_0.i3.i.i35 = icmp slt i32 %iter1.sroa.0.1204, %x.y.i
  %not.or.cond102 = xor i1 %or.cond102, true
  %narrow162 = select i1 %not.or.cond102, i1 %_0.i3.i.i35, i1 false
  %spec.select98 = zext i1 %narrow162 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1204, %spec.select98
  %24 = select i1 %or.cond102, i1 true, i1 %_0.i3.i.i35
  %iter1.sroa.7.1 = select i1 %24, i8 %iter1.sroa.7.1205, i8 1
  %_0.sroa.3.0.i.i37 = select i1 %_10.i.i28, i32 undef, i32 %iter1.sroa.0.1204
  br i1 %or.cond102, label %bb5.loopexit, label %bb15

panic.i.i90.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit74", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit60", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit53", %bb21, %bb18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit", %bb33
  %25 = phi i64 [ %_0.sroa.3.0.i.i18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit" ], [ %_5, %bb33 ], [ %_27, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit" ], [ %_40, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit81" ], [ %_44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit74" ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit60" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit53" ], [ %_32, %bb21 ], [ %_26, %bb18 ]
  %26 = phi i64 [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit" ], [ %len.i, %bb33 ], [ %len.i88, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit" ], [ %len.i82, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit81" ], [ %len.i47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit74" ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit60" ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit53" ], [ %len.i47, %bb21 ], [ %len.i41, %bb18 ]
  %27 = phi ptr [ @alloc_82ba62cf582965c599d47a68a4a22a60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit" ], [ @alloc_f994956b98b30cf273daa651f7a39f45, %bb33 ], [ @alloc_6cdf199c0ad3d1a4fb7697fe6271482e, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit" ], [ @alloc_39f680489dc34011b9e15822c0222096, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit81" ], [ @alloc_29583df0f7a4a74d42532ba5374d9c88, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit74" ], [ @alloc_8c04aa9765a5ab41c069afa5123fe347, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h89d1e28bc6fec35dE.exit60" ], [ @alloc_c03362f449feb359f09a5d05afef136e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b125e4a972ea1eaE.exit53" ], [ @alloc_db27be2df9645ba3834025447f52dd5a, %bb21 ], [ @alloc_36ab1a58c8462e466f24b09d0b863def, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %25, i64 noundef range(i64 0, 2305843009213693952) %26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %27) #27
          to label %panic.i.i90.cont unwind label %cleanup

panic.i.i90.cont:                                 ; preds = %panic.i.i90.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84392aefe71dcde0E.exit94": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h010920c9a7a8f0f5E.exit"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i45, i64 8
  %_6.i91 = load ptr, ptr %28, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i92 = getelementptr inbounds nuw i32, ptr %_6.i91, i64 %_27
  store i32 1, ptr %_0.i.i92, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
