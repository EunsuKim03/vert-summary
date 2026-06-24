define noundef range(i32 0, -2147483648) i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %C = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %C)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h34e7ec5e134c1d43E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %C, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_0.i.not.i.i208 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i208, label %bb31.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.1213 = zext i1 %.not to i8
  %_0.i3.i.i209 = icmp ne i32 %n, 0
  %spec.select212 = zext i1 %_0.i3.i.i209 to i32
  br label %bb8

cleanup:                                          ; preds = %panic.i.i91.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr noalias noundef align 8 dereferenceable(24) %C) #30
          to label %bb40 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb28
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1215 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1214, %n
  %or.cond101 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1214, %n
  %not.or.cond101 = xor i1 %or.cond101, true
  %narrow = select i1 %not.or.cond101, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1214, %spec.select
  %10 = select i1 %or.cond101, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1215, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1214
  br i1 %or.cond101, label %bb31.preheader, label %bb8

bb31.preheader:                                   ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit
  %11 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %len.i = load i64, ptr %11, align 8
  %_4.i.i = icmp ugt i64 %len.i, %_5
  %12 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_6.i = load ptr, ptr %12, align 8, !nonnull !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_5
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br label %bb31

bb8:                                              ; preds = %bb8.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i216 = phi i32 [ 0, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1215 = phi i8 [ %iter.sroa.7.1213, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1214 = phi i32 [ %spec.select212, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %x.y.i = call noundef i32 @llvm.smin.i32(i32 %_0.sroa.3.0.i.i216, i32 %n)
  %_33 = add i32 %_0.sroa.3.0.i.i216, -1
  %_32 = sext i32 %_33 to i64
  %_44 = sext i32 %_0.sroa.3.0.i.i216 to i64
  %_26 = sext i32 %_0.sroa.3.0.i.i216 to i64
  %_0.i3.i.i36200 = icmp sgt i32 %x.y.i, 0
  %not._0.i3.i.i36200 = xor i1 %_0.i3.i.i36200, true
  %iter1.sroa.7.1204 = zext i1 %not._0.i3.i.i36200 to i8
  %spec.select99203 = zext i1 %_0.i3.i.i36200 to i32
  br label %bb15

bb31:                                             ; preds = %bb31.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit"
  %iter2.sroa.0.0 = phi i32 [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit" ], [ 0, %bb31.preheader ]
  %iter2.sroa.7.0 = phi i8 [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit" ], [ 0, %bb31.preheader ]
  %maxvalue.sroa.0.0 = phi i32 [ %x.y.i28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit" ], [ 0, %bb31.preheader ]
  %_10.i.i9 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i14 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond102 = select i1 %_10.i.i9, i1 true, i1 %_0.i.not.i.i14
  br i1 %or.cond102, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21", label %bb2.i.i15

bb2.i.i15:                                        ; preds = %bb31
  %_0.i3.i.i16 = icmp slt i32 %iter2.sroa.0.0, %n
  %15 = zext i1 %_0.i3.i.i16 to i32
  %spec.select97 = add nsw i32 %iter2.sroa.0.0, %15
  %spec.select98 = select i1 %_0.i3.i.i16, i8 %iter2.sroa.7.0, i8 1
  %16 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21": ; preds = %bb2.i.i15, %bb31
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb31 ], [ %spec.select97, %bb2.i.i15 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb31 ], [ %spec.select98, %bb2.i.i15 ]
  %_0.sroa.3.0.i.i18 = phi i64 [ 0, %bb31 ], [ %16, %bb2.i.i15 ]
  br i1 %or.cond102, label %bb34, label %bb33

bb33:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21"
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit": ; preds = %bb33
  %len.i22 = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i23 = icmp ult i64 %_0.sroa.3.0.i.i18, %len.i22
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit", label %panic.i.i91.invoke

bb34:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21"
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr noalias noundef align 8 dereferenceable(24) %C)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %C)
  ret i32 %maxvalue.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit"
  %_6.i25 = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_0.sroa.3.0.i.i18
  %_53 = load i32, ptr %_0.i.i26, align 4, !noundef !15
  %x.y.i28 = call noundef i32 @llvm.smax.i32(i32 %maxvalue.sroa.0.0, i32 %_53)
  br label %bb31

bb15:                                             ; preds = %bb8, %bb28
  %_0.sroa.3.0.i.i38207 = phi i32 [ 0, %bb8 ], [ %_0.sroa.3.0.i.i38, %bb28 ]
  %iter1.sroa.7.1206 = phi i8 [ %iter1.sroa.7.1204, %bb8 ], [ %iter1.sroa.7.1, %bb28 ]
  %iter1.sroa.0.1205 = phi i32 [ %spec.select99203, %bb8 ], [ %iter1.sroa.0.1, %bb28 ]
  %_21 = icmp eq i32 %_0.sroa.3.0.i.i38207, 0
  %_22 = icmp eq i32 %_0.sroa.3.0.i.i38207, %_0.sroa.3.0.i.i216
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb18, label %bb21

bb18:                                             ; preds = %bb15
  %len.i42 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i43 = icmp ugt i64 %len.i42, %_26
  br i1 %_4.i.i43, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit": ; preds = %bb18
  %_6.i45 = load ptr, ptr %8, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i45, i64 %_26
  %_27 = sext i32 %_0.sroa.3.0.i.i38207 to i64
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 16
  %len.i89 = load i64, ptr %17, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i90 = icmp ugt i64 %len.i89, %_27
  br i1 %_4.i.i90, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit95", label %panic.i.i91.invoke

bb21:                                             ; preds = %bb15
  %len.i48 = load i64, ptr %5, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i49 = icmp ugt i64 %len.i48, %_32
  br i1 %_4.i.i49, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54": ; preds = %bb21
  %_6.i51 = load ptr, ptr %6, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i52 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i51, i64 %_32
  %_35 = add i32 %_0.sroa.3.0.i.i38207, -1
  %_34 = sext i32 %_35 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 16
  %len.i55 = load i64, ptr %18, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i56 = icmp ugt i64 %len.i55, %_34
  br i1 %_4.i.i56, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54"
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 8
  %_6.i58 = load ptr, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw i32, ptr %_6.i58, i64 %_34
  %_28 = load i32, ptr %_0.i.i59, align 4, !noundef !15
  %_40 = sext i32 %_0.sroa.3.0.i.i38207 to i64
  %_4.i.i70 = icmp ugt i64 %len.i55, %_40
  br i1 %_4.i.i70, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61"
  %_0.i.i73 = getelementptr inbounds nuw i32, ptr %_6.i58, i64 %_40
  %_36 = load i32, ptr %_0.i.i73, align 4, !noundef !15
  %_4.i.i77 = icmp ugt i64 %len.i48, %_44
  br i1 %_4.i.i77, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75"
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i51, i64 %_44
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i83 = load i64, ptr %20, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i84 = icmp ugt i64 %len.i83, %_40
  br i1 %_4.i.i84, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i86 = load ptr, ptr %21, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_40
  %22 = add i32 %_36, %_28
  store i32 %22, ptr %_0.i.i87, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit95", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit"
  %_10.i.i29 = trunc nuw i8 %iter1.sroa.7.1206 to i1
  %_0.i.not.i.i34 = icmp sgt i32 %iter1.sroa.0.1205, %x.y.i
  %or.cond103 = select i1 %_10.i.i29, i1 true, i1 %_0.i.not.i.i34
  %_0.i3.i.i36 = icmp slt i32 %iter1.sroa.0.1205, %x.y.i
  %not.or.cond103 = xor i1 %or.cond103, true
  %narrow163 = select i1 %not.or.cond103, i1 %_0.i3.i.i36, i1 false
  %spec.select99 = zext i1 %narrow163 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1205, %spec.select99
  %23 = select i1 %or.cond103, i1 true, i1 %_0.i3.i.i36
  %iter1.sroa.7.1 = select i1 %23, i8 %iter1.sroa.7.1206, i8 1
  %_0.sroa.3.0.i.i38 = select i1 %_10.i.i29, i32 undef, i32 %iter1.sroa.0.1205
  br i1 %or.cond103, label %bb5.loopexit, label %bb15

panic.i.i91.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54", %bb21, %bb18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit", %bb33
  %24 = phi i64 [ %_0.sroa.3.0.i.i18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit" ], [ %_5, %bb33 ], [ %_27, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit" ], [ %_40, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82" ], [ %_44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75" ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54" ], [ %_32, %bb21 ], [ %_26, %bb18 ]
  %25 = phi i64 [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit" ], [ %len.i, %bb33 ], [ %len.i89, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit" ], [ %len.i83, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82" ], [ %len.i48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54" ], [ %len.i48, %bb21 ], [ %len.i42, %bb18 ]
  %26 = phi ptr [ @alloc_aeecd04a1901008ef5ccf7ee9bc426e8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit" ], [ @alloc_0719b1c62200dc3665368639074463f3, %bb33 ], [ @alloc_550008955f21cf3613134874f82b69a1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit" ], [ @alloc_0d8d279fa383d0d8f4bf02ad84ee6c69, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82" ], [ @alloc_81dc4e09111c5797f703c9cc4fdd680e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75" ], [ @alloc_63bf37bd3bc104a7726a017abdd6371a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61" ], [ @alloc_d24f4b462a2f0308d1a0604a477cea3d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54" ], [ @alloc_034bdef11666e215401f166f0a0cf654, %bb21 ], [ @alloc_e8cd1cd65325ec205ce03b837f733cbf, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %24, i64 noundef range(i64 0, 2305843009213693952) %25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #27
          to label %panic.i.i91.cont unwind label %cleanup

panic.i.i91.cont:                                 ; preds = %panic.i.i91.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit95": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit"
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 8
  %_6.i92 = load ptr, ptr %27, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw i32, ptr %_6.i92, i64 %_27
  store i32 1, ptr %_0.i.i93, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb40:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
