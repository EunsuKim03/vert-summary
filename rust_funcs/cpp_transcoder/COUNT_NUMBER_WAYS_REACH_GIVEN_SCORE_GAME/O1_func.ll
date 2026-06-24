define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_3, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17he5770a421193be59E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17he5770a421193be59E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %table, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %table, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %table, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i77.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i77.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb31 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17he5770a421193be59E.exit
  store i32 1, ptr %res.1.i.i, align 4
  %_0.i.not.i.i109 = icmp slt i32 %n, 3
  br i1 %_0.i.not.i.i109, label %bb14.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb2
  %.not = icmp eq i32 %n, 3
  %iter.sroa.7.1115 = zext i1 %.not to i8
  %_0.i3.i.i110.not = icmp eq i32 %n, 3
  %iter.sroa.0.1114 = select i1 %_0.i3.i.i110.not, i32 3, i32 4
  br label %bb8

bb14.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit81", %bb2
  %_0.i.not.i.i19119 = icmp slt i32 %n, 5
  br i1 %_0.i.not.i.i19119, label %bb22.preheader, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb14.preheader
  %.not139 = icmp eq i32 %n, 5
  %iter1.sroa.7.1125 = zext i1 %.not139 to i8
  %_0.i3.i.i21120.not = icmp eq i32 %n, 5
  %iter1.sroa.0.1124 = select i1 %_0.i3.i.i21120.not, i32 5, i32 6
  br label %bb16

bb8:                                              ; preds = %bb8.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit81"
  %_0.sroa.3.0.i.i118 = phi i32 [ 3, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit81" ]
  %iter.sroa.7.1117 = phi i8 [ %iter.sroa.7.1115, %bb8.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit81" ]
  %iter.sroa.0.1116 = phi i32 [ %iter.sroa.0.1114, %bb8.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit81" ]
  %_18 = add i32 %_0.sroa.3.0.i.i118, -3
  %_17 = sext i32 %_18 to i64
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_17
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit": ; preds = %bb8
  %_21 = sext i32 %_0.sroa.3.0.i.i118 to i64
  %_4.i.i76 = icmp ugt i64 %len.i9, %_21
  br i1 %_4.i.i76, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit81", label %panic.i.i77.invoke

bb22.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit74", %bb14.preheader
  %_0.i.not.i.i39129 = icmp slt i32 %n, 10
  br i1 %_0.i.not.i.i39129, label %bb25, label %bb24.lr.ph

bb24.lr.ph:                                       ; preds = %bb22.preheader
  %.not140 = icmp eq i32 %n, 10
  %iter2.sroa.7.1135 = zext i1 %.not140 to i8
  %_0.i3.i.i41130.not = icmp eq i32 %n, 10
  %iter2.sroa.0.1134 = select i1 %_0.i3.i.i41130.not, i32 10, i32 11
  br label %bb24

bb16:                                             ; preds = %bb16.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit74"
  %_0.sroa.3.0.i.i23128 = phi i32 [ 5, %bb16.lr.ph ], [ %_0.sroa.3.0.i.i23, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit74" ]
  %iter1.sroa.7.1127 = phi i8 [ %iter1.sroa.7.1125, %bb16.lr.ph ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit74" ]
  %iter1.sroa.0.1126 = phi i32 [ %iter1.sroa.0.1124, %bb16.lr.ph ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit74" ]
  %_33 = add i32 %_0.sroa.3.0.i.i23128, -5
  %_32 = sext i32 %_33 to i64
  %len.i27 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i28 = icmp ugt i64 %len.i27, %_32
  br i1 %_4.i.i28, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit33", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit33": ; preds = %bb16
  %_36 = sext i32 %_0.sroa.3.0.i.i23128 to i64
  %_4.i.i69 = icmp ugt i64 %len.i27, %_36
  br i1 %_4.i.i69, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit74", label %panic.i.i77.invoke

bb24:                                             ; preds = %bb24.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit67"
  %_0.sroa.3.0.i.i43138 = phi i32 [ 10, %bb24.lr.ph ], [ %_0.sroa.3.0.i.i43, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit67" ]
  %iter2.sroa.7.1137 = phi i8 [ %iter2.sroa.7.1135, %bb24.lr.ph ], [ %iter2.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit67" ]
  %iter2.sroa.0.1136 = phi i32 [ %iter2.sroa.0.1134, %bb24.lr.ph ], [ %iter2.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit67" ]
  %_48 = add i32 %_0.sroa.3.0.i.i43138, -10
  %_47 = sext i32 %_48 to i64
  %len.i47 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i48 = icmp ugt i64 %len.i47, %_47
  br i1 %_4.i.i48, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit53", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit53": ; preds = %bb24
  %_51 = sext i32 %_0.sroa.3.0.i.i43138 to i64
  %_4.i.i62 = icmp ugt i64 %len.i47, %_51
  br i1 %_4.i.i62, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit67", label %panic.i.i77.invoke

bb25:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit67", %bb22.preheader
  %len.i54 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i55 = icmp ugt i64 %len.i54, %_4
  br i1 %_4.i.i55, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit60", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit60": ; preds = %bb25
  %_6.i57 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i58 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_4
  %_0 = load i32, ptr %_0.i.i58, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit67": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit53"
  %_6.i50 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i51 = getelementptr inbounds nuw i32, ptr %_6.i50, i64 %_47
  %_44 = load i32, ptr %_0.i.i51, align 4, !noundef !37
  %_0.i.i65 = getelementptr inbounds nuw i32, ptr %_6.i50, i64 %_51
  %6 = load i32, ptr %_0.i.i65, align 4, !noundef !37
  %7 = add i32 %6, %_44
  store i32 %7, ptr %_0.i.i65, align 4
  %_10.i.i34 = trunc nuw i8 %iter2.sroa.7.1137 to i1
  %_0.i.not.i.i39 = icmp sgt i32 %iter2.sroa.0.1136, %n
  %or.cond88 = select i1 %_10.i.i34, i1 true, i1 %_0.i.not.i.i39
  %_0.i3.i.i41 = icmp slt i32 %iter2.sroa.0.1136, %n
  %not.or.cond88 = xor i1 %or.cond88, true
  %narrow102 = select i1 %not.or.cond88, i1 %_0.i3.i.i41, i1 false
  %spec.select85 = zext i1 %narrow102 to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.1136, %spec.select85
  %8 = select i1 %or.cond88, i1 true, i1 %_0.i3.i.i41
  %iter2.sroa.7.1 = select i1 %8, i8 %iter2.sroa.7.1137, i8 1
  %_0.sroa.3.0.i.i43 = select i1 %_10.i.i34, i32 undef, i32 %iter2.sroa.0.1136
  br i1 %or.cond88, label %bb25, label %bb24

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit33"
  %_6.i30 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i31 = getelementptr inbounds nuw i32, ptr %_6.i30, i64 %_32
  %_29 = load i32, ptr %_0.i.i31, align 4, !noundef !37
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i30, i64 %_36
  %9 = load i32, ptr %_0.i.i72, align 4, !noundef !37
  %10 = add i32 %9, %_29
  store i32 %10, ptr %_0.i.i72, align 4
  %_10.i.i14 = trunc nuw i8 %iter1.sroa.7.1127 to i1
  %_0.i.not.i.i19 = icmp sgt i32 %iter1.sroa.0.1126, %n
  %or.cond87 = select i1 %_10.i.i14, i1 true, i1 %_0.i.not.i.i19
  %_0.i3.i.i21 = icmp slt i32 %iter1.sroa.0.1126, %n
  %not.or.cond87 = xor i1 %or.cond87, true
  %narrow101 = select i1 %not.or.cond87, i1 %_0.i3.i.i21, i1 false
  %spec.select83 = zext i1 %narrow101 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1126, %spec.select83
  %11 = select i1 %or.cond87, i1 true, i1 %_0.i3.i.i21
  %iter1.sroa.7.1 = select i1 %11, i8 %iter1.sroa.7.1127, i8 1
  %_0.sroa.3.0.i.i23 = select i1 %_10.i.i14, i32 undef, i32 %iter1.sroa.0.1126
  br i1 %or.cond87, label %bb22.preheader, label %bb16

panic.i.i77.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit", %bb8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit33", %bb16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit53", %bb24, %_ZN5alloc3vec9from_elem17he5770a421193be59E.exit, %bb25
  %12 = phi i64 [ %_4, %bb25 ], [ 0, %_ZN5alloc3vec9from_elem17he5770a421193be59E.exit ], [ %_51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit53" ], [ %_47, %bb24 ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit33" ], [ %_32, %bb16 ], [ %_21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit" ], [ %_17, %bb8 ]
  %13 = phi i64 [ %len.i54, %bb25 ], [ %_3, %_ZN5alloc3vec9from_elem17he5770a421193be59E.exit ], [ %len.i47, %bb24 ], [ %len.i47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit53" ], [ %len.i27, %bb16 ], [ %len.i27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit33" ], [ %len.i9, %bb8 ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit" ]
  %14 = phi ptr [ @alloc_9df50d42266ca12a412f9545b2e6c984, %bb25 ], [ @alloc_e90db8135743fc5b7df1af64499a131a, %_ZN5alloc3vec9from_elem17he5770a421193be59E.exit ], [ @alloc_d1bd61ffbf079e1b31c4cc6cc25b3ce5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit53" ], [ @alloc_96fd91a620c064d09f2065683642ef40, %bb24 ], [ @alloc_f8d9f537ecb25ab233a0e41e62bb2bed, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit33" ], [ @alloc_96e6ec45c3bdd064ebeed140c25a3fa7, %bb16 ], [ @alloc_6f8c8f2e5dd8c6641d0bf2f8696a2bbb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit" ], [ @alloc_f396a2256b2d9fb1e05756b947fa4361, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %12, i64 noundef range(i64 0, 2305843009213693952) %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #25
          to label %panic.i.i77.cont unwind label %cleanup

panic.i.i77.cont:                                 ; preds = %panic.i.i77.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E.exit"
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_17
  %_14 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_0.i.i79 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_21
  %15 = load i32, ptr %_0.i.i79, align 4, !noundef !37
  %16 = add i32 %15, %_14
  store i32 %16, ptr %_0.i.i79, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1117 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1116, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1116, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1116, %spec.select
  %17 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %17, i8 %iter.sroa.7.1117, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1116
  br i1 %or.cond, label %bb14.preheader, label %bb8

terminate:                                        ; preds = %cleanup
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb31:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
