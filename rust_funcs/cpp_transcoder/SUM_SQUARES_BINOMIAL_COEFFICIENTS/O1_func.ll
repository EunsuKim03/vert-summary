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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h82a1d596f831a14dE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h82a1d596f831a14dE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_0.i.not.i.i222 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i222, label %bb31.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h82a1d596f831a14dE.exit
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.1227 = zext i1 %.not to i8
  %_0.i3.i.i223 = icmp ne i32 %n, 0
  %spec.select226 = zext i1 %_0.i3.i.i223 to i32
  br label %bb8

cleanup:                                          ; preds = %panic.i.i105.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E"(ptr noalias noundef align 8 dereferenceable(24) %c) #30
          to label %bb41 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb28
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1229 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1228, %n
  %or.cond115 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1228, %n
  %not.or.cond115 = xor i1 %or.cond115, true
  %narrow = select i1 %not.or.cond115, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1228, %spec.select
  %10 = select i1 %or.cond115, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1229, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1228
  br i1 %or.cond115, label %bb31.preheader, label %bb8

bb31.preheader:                                   ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h82a1d596f831a14dE.exit
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
  %_0.sroa.3.0.i.i230 = phi i32 [ 0, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1229 = phi i8 [ %iter.sroa.7.1227, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1228 = phi i32 [ %spec.select226, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %_0.sroa.0.0.i.i9 = call noundef i32 @llvm.smin.i32(i32 %n, i32 %_0.sroa.3.0.i.i230)
  %_33 = add i32 %_0.sroa.3.0.i.i230, -1
  %_32 = sext i32 %_33 to i64
  %_44 = sext i32 %_0.sroa.3.0.i.i230 to i64
  %_26 = sext i32 %_0.sroa.3.0.i.i230 to i64
  %_0.i3.i.i50214 = icmp sgt i32 %_0.sroa.0.0.i.i9, 0
  %not._0.i3.i.i50214 = xor i1 %_0.i3.i.i50214, true
  %iter1.sroa.7.1218 = zext i1 %not._0.i3.i.i50214 to i8
  %spec.select113217 = zext i1 %_0.i3.i.i50214 to i32
  br label %bb15

bb31:                                             ; preds = %bb31.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit"
  %iter2.sroa.0.0 = phi i32 [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit" ], [ 0, %bb31.preheader ]
  %iter2.sroa.7.0 = phi i8 [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit" ], [ 0, %bb31.preheader ]
  %sum.sroa.0.0 = phi i32 [ %17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit" ], [ 0, %bb31.preheader ]
  %_10.i.i10 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i15 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond116 = select i1 %_10.i.i10, i1 true, i1 %_0.i.not.i.i15
  br i1 %or.cond116, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE.exit22", label %bb2.i.i16

bb2.i.i16:                                        ; preds = %bb31
  %_0.i3.i.i17 = icmp slt i32 %iter2.sroa.0.0, %n
  %15 = zext i1 %_0.i3.i.i17 to i32
  %spec.select111 = add nsw i32 %iter2.sroa.0.0, %15
  %spec.select112 = select i1 %_0.i3.i.i17, i8 %iter2.sroa.7.0, i8 1
  %16 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE.exit22"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE.exit22": ; preds = %bb2.i.i16, %bb31
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb31 ], [ %spec.select111, %bb2.i.i16 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb31 ], [ %spec.select112, %bb2.i.i16 ]
  %_0.sroa.3.0.i.i19 = phi i64 [ 0, %bb31 ], [ %16, %bb2.i.i16 ]
  br i1 %or.cond116, label %bb34, label %bb33

bb33:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE.exit22"
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit", label %panic.i.i105.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit": ; preds = %bb33
  %len.i23 = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i24 = icmp ult i64 %_0.sroa.3.0.i.i19, %len.i23
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit", label %panic.i.i105.invoke

bb34:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE.exit22"
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E"(ptr noalias noundef align 8 dereferenceable(24) %c)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c)
  ret i32 %sum.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit"
  %_6.i26 = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_0.sroa.3.0.i.i19
  %_53 = load i32, ptr %_0.i.i27, align 4, !noundef !15
  %_52 = mul i32 %_53, %_53
  %17 = add i32 %_52, %sum.sroa.0.0
  br label %bb31

bb15:                                             ; preds = %bb8, %bb28
  %_0.sroa.3.0.i.i52221 = phi i32 [ 0, %bb8 ], [ %_0.sroa.3.0.i.i52, %bb28 ]
  %iter1.sroa.7.1220 = phi i8 [ %iter1.sroa.7.1218, %bb8 ], [ %iter1.sroa.7.1, %bb28 ]
  %iter1.sroa.0.1219 = phi i32 [ %spec.select113217, %bb8 ], [ %iter1.sroa.0.1, %bb28 ]
  %_21 = icmp eq i32 %_0.sroa.3.0.i.i52221, 0
  %_22 = icmp eq i32 %_0.sroa.3.0.i.i52221, %_0.sroa.3.0.i.i230
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb18, label %bb21

bb18:                                             ; preds = %bb15
  %len.i56 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i57 = icmp ugt i64 %len.i56, %_26
  br i1 %_4.i.i57, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit", label %panic.i.i105.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit": ; preds = %bb18
  %_6.i59 = load ptr, ptr %8, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i60 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i59, i64 %_26
  %_27 = sext i32 %_0.sroa.3.0.i.i52221 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i60, i64 16
  %len.i103 = load i64, ptr %18, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i104 = icmp ugt i64 %len.i103, %_27
  br i1 %_4.i.i104, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E.exit109", label %panic.i.i105.invoke

bb21:                                             ; preds = %bb15
  %len.i62 = load i64, ptr %5, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i63 = icmp ugt i64 %len.i62, %_32
  br i1 %_4.i.i63, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit68", label %panic.i.i105.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit68": ; preds = %bb21
  %_6.i65 = load ptr, ptr %6, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i66 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %_32
  %_35 = add i32 %_0.sroa.3.0.i.i52221, -1
  %_34 = sext i32 %_35 to i64
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 16
  %len.i69 = load i64, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i70 = icmp ugt i64 %len.i69, %_34
  br i1 %_4.i.i70, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit75", label %panic.i.i105.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit75": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit68"
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 8
  %_6.i72 = load ptr, ptr %20, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i73 = getelementptr inbounds nuw i32, ptr %_6.i72, i64 %_34
  %_28 = load i32, ptr %_0.i.i73, align 4, !noundef !15
  %_40 = sext i32 %_0.sroa.3.0.i.i52221 to i64
  %_4.i.i84 = icmp ugt i64 %len.i69, %_40
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit89", label %panic.i.i105.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit89": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit75"
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i72, i64 %_40
  %_36 = load i32, ptr %_0.i.i87, align 4, !noundef !15
  %_4.i.i91 = icmp ugt i64 %len.i62, %_44
  br i1 %_4.i.i91, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit96", label %panic.i.i105.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit96": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit89"
  %_0.i.i94 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %_44
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i94, i64 16
  %len.i97 = load i64, ptr %21, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i98 = icmp ugt i64 %len.i97, %_40
  br i1 %_4.i.i98, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E.exit", label %panic.i.i105.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit96"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i94, i64 8
  %_6.i100 = load ptr, ptr %22, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i101 = getelementptr inbounds nuw i32, ptr %_6.i100, i64 %_40
  %23 = add i32 %_36, %_28
  store i32 %23, ptr %_0.i.i101, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E.exit109", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E.exit"
  %_10.i.i43 = trunc nuw i8 %iter1.sroa.7.1220 to i1
  %_0.i.not.i.i48 = icmp sgt i32 %iter1.sroa.0.1219, %_0.sroa.0.0.i.i9
  %or.cond117 = select i1 %_10.i.i43, i1 true, i1 %_0.i.not.i.i48
  %_0.i3.i.i50 = icmp slt i32 %iter1.sroa.0.1219, %_0.sroa.0.0.i.i9
  %not.or.cond117 = xor i1 %or.cond117, true
  %narrow177 = select i1 %not.or.cond117, i1 %_0.i3.i.i50, i1 false
  %spec.select113 = zext i1 %narrow177 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1219, %spec.select113
  %24 = select i1 %or.cond117, i1 true, i1 %_0.i3.i.i50
  %iter1.sroa.7.1 = select i1 %24, i8 %iter1.sroa.7.1220, i8 1
  %_0.sroa.3.0.i.i52 = select i1 %_10.i.i43, i32 undef, i32 %iter1.sroa.0.1219
  br i1 %or.cond117, label %bb5.loopexit, label %bb15

panic.i.i105.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit96", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit89", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit75", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit68", %bb21, %bb18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit", %bb33
  %25 = phi i64 [ %_0.sroa.3.0.i.i19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit" ], [ %_5, %bb33 ], [ %_27, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit" ], [ %_40, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit96" ], [ %_44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit89" ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit75" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit68" ], [ %_32, %bb21 ], [ %_26, %bb18 ]
  %26 = phi i64 [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit" ], [ %len.i, %bb33 ], [ %len.i103, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit" ], [ %len.i97, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit96" ], [ %len.i62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit89" ], [ %len.i69, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit75" ], [ %len.i69, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit68" ], [ %len.i62, %bb21 ], [ %len.i56, %bb18 ]
  %27 = phi ptr [ @alloc_75b77bf4d82a3197ac565277b4501be7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit" ], [ @alloc_f60c4b2e60e80971a490f1ce11a68149, %bb33 ], [ @alloc_78b86cbfd90e58360ec2c6121cda7145, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit" ], [ @alloc_6af50af0265387360a4cdeff7e0b4749, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit96" ], [ @alloc_48b793b41ffdd5632a7a328e7fa164b5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit89" ], [ @alloc_b0588d3afc5c9f014f1e3fb860303bc8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E.exit75" ], [ @alloc_ff26e5897ec887d1a02e9907e95ea632, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE.exit68" ], [ @alloc_7ab2fa246ce1ba3ec5654f4a88457b5e, %bb21 ], [ @alloc_3b91f6ea792fe4bea6667a6697f11ba2, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %25, i64 noundef range(i64 0, 2305843009213693952) %26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %27) #27
          to label %panic.i.i105.cont unwind label %cleanup

panic.i.i105.cont:                                ; preds = %panic.i.i105.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E.exit109": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE.exit"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i60, i64 8
  %_6.i106 = load ptr, ptr %28, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i107 = getelementptr inbounds nuw i32, ptr %_6.i106, i64 %_27
  store i32 1, ptr %_0.i.i107, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb41:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
