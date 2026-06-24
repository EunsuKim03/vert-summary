define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_6 = sext i32 %m to i64
  %_5 = add nsw i64 %_6, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17he90c0d0a673e26c1E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17he90c0d0a673e26c1E.exit: ; preds = %start
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
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h17bf0eb3a55d6083E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb5

cleanup:                                          ; preds = %panic.i.i118.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f64>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h360516edc807ed42E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb42 unwind label %terminate

bb5:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit122", %_ZN5alloc3vec9from_elem17he90c0d0a673e26c1E.exit
  %iter.sroa.7.0 = phi i8 [ 0, %_ZN5alloc3vec9from_elem17he90c0d0a673e26c1E.exit ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit122" ]
  %iter.sroa.0.0 = phi i32 [ 0, %_ZN5alloc3vec9from_elem17he90c0d0a673e26c1E.exit ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit122" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb5
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %spec.select = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %8 = zext i1 %_0.i3.i.i to i32
  %spec.select123 = add nsw i32 %iter.sroa.0.0, %8
  %9 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit": ; preds = %bb2.i.i, %bb5
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb5 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb5 ], [ %spec.select123, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb5 ], [ %9, %bb2.i.i ]
  br i1 %or.cond, label %bb14.preheader, label %bb8

bb14.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit"
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb14

bb8:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit"
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit", label %panic.i.i118.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<f64>", ptr %_6.i, i64 %_0.sroa.3.0.i.i
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i116 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i117.not = icmp eq i64 %len.i116, 0
  br i1 %_4.i.i117.not, label %panic.i.i118.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit122"

bb14:                                             ; preds = %bb14.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit115"
  %iter1.sroa.0.0 = phi i32 [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit115" ], [ 0, %bb14.preheader ]
  %iter1.sroa.7.0 = phi i8 [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit115" ], [ 0, %bb14.preheader ]
  %_10.i.i10 = trunc nuw i8 %iter1.sroa.7.0 to i1
  %_0.i.not.i.i15 = icmp sgt i32 %iter1.sroa.0.0, %m
  %or.cond130 = select i1 %_10.i.i10, i1 true, i1 %_0.i.not.i.i15
  br i1 %or.cond130, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit22", label %bb2.i.i16

bb2.i.i16:                                        ; preds = %bb14
  %_0.i3.i.i17 = icmp slt i32 %iter1.sroa.0.0, %m
  %13 = zext i1 %_0.i3.i.i17 to i32
  %spec.select124 = add nsw i32 %iter1.sroa.0.0, %13
  %spec.select125 = select i1 %_0.i3.i.i17, i8 %iter1.sroa.7.0, i8 1
  %14 = sext i32 %iter1.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit22"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit22": ; preds = %bb2.i.i16, %bb14
  %iter1.sroa.0.1 = phi i32 [ %iter1.sroa.0.0, %bb14 ], [ %spec.select124, %bb2.i.i16 ]
  %iter1.sroa.7.1 = phi i8 [ %iter1.sroa.7.0, %bb14 ], [ %spec.select125, %bb2.i.i16 ]
  %_0.sroa.3.0.i.i19 = phi i64 [ 0, %bb14 ], [ %14, %bb2.i.i16 ]
  br i1 %or.cond130, label %bb22.preheader, label %bb16

bb22.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit22"
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb22

bb16:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit22"
  %len.i23 = load i64, ptr %10, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i24.not = icmp eq i64 %len.i23, 0
  br i1 %_4.i.i24.not, label %panic.i.i118.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit29"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit29": ; preds = %bb16
  %_6.i26 = load ptr, ptr %11, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %17 = getelementptr inbounds nuw i8, ptr %_6.i26, i64 16
  %len.i109 = load i64, ptr %17, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i110 = icmp ult i64 %_0.sroa.3.0.i.i19, %len.i109
  br i1 %_4.i.i110, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit115", label %panic.i.i118.invoke

bb22:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit67", %bb22.preheader
  %iter2.sroa.0.0 = phi i32 [ 1, %bb22.preheader ], [ %iter2.sroa.0.1, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit67" ]
  %iter2.sroa.7.0 = phi i8 [ 0, %bb22.preheader ], [ %iter2.sroa.7.1, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit67" ]
  %_10.i.i30 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i35 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond131 = select i1 %_10.i.i30, i1 true, i1 %_0.i.not.i.i35
  br i1 %or.cond131, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit42", label %bb2.i.i36

bb2.i.i36:                                        ; preds = %bb22
  %_0.i3.i.i37 = icmp slt i32 %iter2.sroa.0.0, %n
  %18 = zext i1 %_0.i3.i.i37 to i32
  %spec.select126 = add nsw i32 %iter2.sroa.0.0, %18
  %spec.select127 = select i1 %_0.i3.i.i37, i8 %iter2.sroa.7.0, i8 1
  %19 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit42"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit42": ; preds = %bb2.i.i36, %bb22
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb22 ], [ %spec.select126, %bb2.i.i36 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb22 ], [ %spec.select127, %bb2.i.i36 ]
  %_0.sroa.3.0.i.i39 = phi i64 [ 0, %bb22 ], [ %19, %bb2.i.i36 ]
  br i1 %or.cond131, label %bb25, label %bb28.preheader

bb28.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit42"
  %_49 = add nsw i64 %_0.sroa.3.0.i.i39, -1
  br label %bb28

bb25:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit42"
  %20 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i43 = load i64, ptr %20, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i44 = icmp ugt i64 %len.i43, %_8
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit", label %panic.i.i118.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit": ; preds = %bb25
  %21 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i46 = load ptr, ptr %21, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i47 = getelementptr inbounds nuw %"alloc::vec::Vec<f64>", ptr %_6.i46, i64 %_8
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i47, i64 16
  %len.i49 = load i64, ptr %22, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i50 = icmp ugt i64 %len.i49, %_6
  br i1 %_4.i.i50, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit", label %panic.i.i118.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit"
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i47, i64 8
  %_6.i52 = load ptr, ptr %23, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i53 = getelementptr inbounds nuw double, ptr %_6.i52, i64 %_6
  %_60 = load double, ptr %_0.i.i53, align 8, !noundef !15
  %_0 = call i32 @llvm.fptosi.sat.i32.f64(double %_60)
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f64>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h360516edc807ed42E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb28:                                             ; preds = %bb28.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit"
  %iter3.sroa.0.0 = phi i32 [ %iter3.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit" ], [ 1, %bb28.preheader ]
  %iter3.sroa.7.0 = phi i8 [ %iter3.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit" ], [ 0, %bb28.preheader ]
  %_10.i.i55 = trunc nuw i8 %iter3.sroa.7.0 to i1
  %_0.i.not.i.i60 = icmp sgt i32 %iter3.sroa.0.0, %m
  %or.cond132 = select i1 %_10.i.i55, i1 true, i1 %_0.i.not.i.i60
  br i1 %or.cond132, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit67", label %bb2.i.i61

bb2.i.i61:                                        ; preds = %bb28
  %_0.i3.i.i62 = icmp slt i32 %iter3.sroa.0.0, %m
  %24 = zext i1 %_0.i3.i.i62 to i32
  %spec.select128 = add nsw i32 %iter3.sroa.0.0, %24
  %spec.select129 = select i1 %_0.i3.i.i62, i8 %iter3.sroa.7.0, i8 1
  %25 = sext i32 %iter3.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit67"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit67": ; preds = %bb2.i.i61, %bb28
  %iter3.sroa.0.1 = phi i32 [ %iter3.sroa.0.0, %bb28 ], [ %spec.select128, %bb2.i.i61 ]
  %iter3.sroa.7.1 = phi i8 [ %iter3.sroa.7.0, %bb28 ], [ %spec.select129, %bb2.i.i61 ]
  %_0.sroa.3.0.i.i64 = phi i64 [ 0, %bb28 ], [ %25, %bb2.i.i61 ]
  br i1 %or.cond132, label %bb22, label %bb30

bb30:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE.exit67"
  %len.i68 = load i64, ptr %15, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i69 = icmp ult i64 %_49, %len.i68
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit74", label %panic.i.i118.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit74": ; preds = %bb30
  %_6.i71 = load ptr, ptr %16, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw %"alloc::vec::Vec<f64>", ptr %_6.i71, i64 %_49
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i72, i64 16
  %len.i75 = load i64, ptr %26, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i76 = icmp ult i64 %_0.sroa.3.0.i.i64, %len.i75
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit81", label %panic.i.i118.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit74"
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i72, i64 8
  %_6.i78 = load ptr, ptr %27, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i79 = getelementptr inbounds nuw double, ptr %_6.i78, i64 %_0.sroa.3.0.i.i64
  %_45 = load double, ptr %_0.i.i79, align 8, !noundef !15
  %_4.i.i83 = icmp ult i64 %_0.sroa.3.0.i.i39, %len.i68
  br i1 %_4.i.i83, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit88", label %panic.i.i118.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit88": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit81"
  %_0.i.i86 = getelementptr inbounds nuw %"alloc::vec::Vec<f64>", ptr %_6.i71, i64 %_0.sroa.3.0.i.i39
  %_56 = add nsw i64 %_0.sroa.3.0.i.i64, -1
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i86, i64 16
  %len.i89 = load i64, ptr %28, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i90 = icmp ult i64 %_56, %len.i89
  br i1 %_4.i.i90, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit95", label %panic.i.i118.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit95": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit88"
  %_4.i.i104 = icmp ult i64 %_0.sroa.3.0.i.i64, %len.i89
  br i1 %_4.i.i104, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit", label %panic.i.i118.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit95"
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i86, i64 8
  %_6.i92 = load ptr, ptr %29, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw double, ptr %_6.i92, i64 %_56
  %_52 = load double, ptr %_0.i.i93, align 8, !noundef !15
  %_0.i.i107 = getelementptr inbounds nuw double, ptr %_6.i92, i64 %_0.sroa.3.0.i.i64
  %30 = fadd double %_45, %_52
  store double %30, ptr %_0.i.i107, align 8
  br label %bb28

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit115": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit29"
  %31 = getelementptr inbounds nuw i8, ptr %_6.i26, i64 8
  %_6.i112 = load ptr, ptr %31, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i113 = getelementptr inbounds nuw double, ptr %_6.i112, i64 %_0.sroa.3.0.i.i19
  store double 1.000000e+00, ptr %_0.i.i113, align 8
  br label %bb14

panic.i.i118.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit", %bb8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit29", %bb16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit95", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit88", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit74", %bb30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit", %bb25
  %32 = phi i64 [ %_8, %bb25 ], [ %_6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit" ], [ %_0.sroa.3.0.i.i64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit95" ], [ %_56, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit88" ], [ %_0.sroa.3.0.i.i39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit81" ], [ %_0.sroa.3.0.i.i64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit74" ], [ %_49, %bb30 ], [ %_0.sroa.3.0.i.i19, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit29" ], [ 0, %bb16 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit" ], [ %_0.sroa.3.0.i.i, %bb8 ]
  %33 = phi i64 [ %len.i43, %bb25 ], [ %len.i49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit" ], [ %len.i89, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit95" ], [ %len.i89, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit88" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit81" ], [ %len.i75, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit74" ], [ %len.i68, %bb30 ], [ %len.i109, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit29" ], [ %len.i23, %bb16 ], [ %len.i116, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit" ], [ %len.i, %bb8 ]
  %34 = phi ptr [ @alloc_e8d2553384f66e9009ffe4e0c6c79b10, %bb25 ], [ @alloc_b8bd6d75dd1d310329514329d9c51729, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit" ], [ @alloc_093fc96d90a09c9701a19ee99aea4fd2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit95" ], [ @alloc_0cc12e91005e744fc4e24979d39cc5bd, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit88" ], [ @alloc_95356865a2521acbe274d3967a8b31de, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E.exit81" ], [ @alloc_494d9eba73f073515411569989896aee, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E.exit74" ], [ @alloc_8e02316a0a01f4c82ff9b65accedcddb, %bb30 ], [ @alloc_4800952808f9e1ab7c7f06bdf2247dff, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit29" ], [ @alloc_d6019bc6f82ec36056508699450c7af5, %bb16 ], [ @alloc_b4a954efb211b910ec851d0418bc910b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit" ], [ @alloc_1dde452738c2c089050cf8479c361b0f, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %32, i64 noundef range(i64 0, 1152921504606846976) %33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #27
          to label %panic.i.i118.cont unwind label %cleanup

panic.i.i118.cont:                                ; preds = %panic.i.i118.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE.exit122": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E.exit"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i119 = load ptr, ptr %35, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  store double 1.000000e+00, ptr %_6.i119, align 8
  br label %bb5

terminate:                                        ; preds = %cleanup
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb42:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
