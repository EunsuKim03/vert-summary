define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i12 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %close = alloca [24 x i8], align 8
  %open = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %open)
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1638, !noundef !37
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i)
  %_3 = add nuw nsw i64 %_0.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1647
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_3, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1647
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1647, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1647, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1647
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1647
  unreachable

_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1647, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1647
  store i64 %err.0.i.i, ptr %open, align 8, !alias.scope !1647
  %4 = getelementptr inbounds nuw i8, ptr %open, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1647
  %5 = getelementptr inbounds nuw i8, ptr %open, i64 16
  store i64 %_3, ptr %5, align 8, !alias.scope !1647
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %close)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i12), !noalias !1654
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i12, i64 noundef %_3, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb76:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %6, %cleanup ], [ %12, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %open, i64 noundef 4, i64 noundef 4)
          to label %bb77 unwind label %terminate

cleanup:                                          ; preds = %bb71, %bb68, %bb14.i.i16, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb76

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit
  %_17.i.i13 = load i64, ptr %_16.i.i12, align 8, !range !1031, !noalias !1654, !noundef !37
  %7 = trunc nuw i64 %_17.i.i13 to i1
  %8 = getelementptr inbounds nuw i8, ptr %_16.i.i12, i64 8
  %err.0.i.i17 = load i64, ptr %8, align 8, !range !1032, !noalias !1654, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %_16.i.i12, i64 16
  br i1 %7, label %bb14.i.i16, label %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit20, !prof !1033

bb14.i.i16:                                       ; preds = %.noexc
  %err.1.i.i18 = load i64, ptr %9, align 8, !noalias !1654
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i17, i64 %err.1.i.i18) #26
          to label %.noexc19 unwind label %cleanup

.noexc19:                                         ; preds = %bb14.i.i16
  unreachable

_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit20: ; preds = %.noexc
  %res.1.i.i15 = load ptr, ptr %9, align 8, !noalias !1654, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i12), !noalias !1654
  store i64 %err.0.i.i17, ptr %close, align 8, !alias.scope !1654
  %10 = getelementptr inbounds nuw i8, ptr %close, i64 8
  store ptr %res.1.i.i15, ptr %10, align 8, !alias.scope !1654
  %11 = getelementptr inbounds nuw i8, ptr %close, i64 16
  store i64 %_3, ptr %11, align 8, !alias.scope !1654
  %len.i = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i175.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit": ; preds = %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit20
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  store i32 0, ptr %_6.i, align 4
  %len.i26 = load i64, ptr %11, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i27 = icmp ult i64 %_0.i, %len.i26
  br i1 %_4.i.i27, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit31", label %panic.i.i175.invoke

cleanup3:                                         ; preds = %panic.i.i175.invoke
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %close, i64 noundef 4, i64 noundef 4)
          to label %bb76 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit31": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit"
  %_6.i29 = load ptr, ptr %10, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i29, i64 %_0.i
  store i32 0, ptr %_0.i.i, align 4
  %_4.i.i33.not = icmp eq i64 %_0.i, 0
  br i1 %_4.i.i33.not, label %panic.i.i175.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit31"
  %13 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i35 = load ptr, ptr %13, align 8, !alias.scope !1665, !noalias !1668, !nonnull !37, !noundef !37
  %_14 = load i32, ptr %_6.i35, align 4, !range !1670, !noundef !37
  %_13 = icmp eq i32 %_14, 40
  br i1 %_13, label %bb9, label %bb12

bb9:                                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit"
  %len.i38 = load i64, ptr %5, align 8, !alias.scope !1671, !noalias !1674, !noundef !37
  %_4.i.i39 = icmp ugt i64 %len.i38, 1
  br i1 %_4.i.i39, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit44", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit44": ; preds = %bb9
  %_6.i41 = load ptr, ptr %4, align 8, !alias.scope !1671, !noalias !1674, !nonnull !37, !noundef !37
  %_0.i.i42 = getelementptr inbounds nuw i8, ptr %_6.i41, i64 4
  store i32 1, ptr %_0.i.i42, align 4
  br label %bb12

bb12:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit44"
  %_21 = add nsw i64 %_0.i, -1
  %_0.i.i51 = getelementptr inbounds nuw i32, ptr %_6.i35, i64 %_21
  %_19 = load i32, ptr %_0.i.i51, align 4, !range !1670, !noundef !37
  %_18 = icmp eq i32 %_19, 41
  br i1 %_18, label %bb15, label %bb19

bb15:                                             ; preds = %bb12
  %len.i58 = load i64, ptr %11, align 8, !alias.scope !1676, !noalias !1679, !noundef !37
  %_4.i.i59 = icmp ult i64 %_21, %len.i58
  br i1 %_4.i.i59, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit64", label %panic.i.i175.invoke

bb19:                                             ; preds = %bb12, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit64"
  %_0.i.i.i204.not = icmp eq i64 %_0.i, 1
  br i1 %_0.i.i.i204.not, label %bb38.preheader, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit72"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit64": ; preds = %bb15
  %_6.i61 = load ptr, ptr %10, align 8, !alias.scope !1676, !noalias !1679, !nonnull !37, !noundef !37
  %_0.i.i62 = getelementptr inbounds nuw i32, ptr %_6.i61, i64 %_21
  store i32 1, ptr %_0.i.i62, align 4
  br label %bb19

bb38.preheader:                                   ; preds = %bb34, %bb19
  %_0.i.i.i.i.not.not209 = icmp eq i64 %_21, 0
  br i1 %_0.i.i.i.i.not.not209, label %bb41, label %bb40.preheader

bb40.preheader:                                   ; preds = %bb38.preheader
  %iter1.sroa.4.1211 = add nsw i64 %_0.i, -2
  %_0.i1.i.i.i210 = add nsw i64 %_0.i, -2
  br label %bb40

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit72": ; preds = %bb19, %bb34
  %spec.select208 = phi i64 [ %spec.select, %bb34 ], [ 2, %bb19 ]
  %iter.sroa.0.0207 = phi i64 [ %spec.select208, %bb34 ], [ 1, %bb19 ]
  %_0.i.i70 = getelementptr inbounds nuw i32, ptr %_6.i35, i64 %iter.sroa.0.0207
  %_36 = load i32, ptr %_0.i.i70, align 4, !range !1670, !noundef !37
  %_35 = icmp eq i32 %_36, 40
  %len.i159 = load i64, ptr %5, align 8, !noalias !37, !noundef !37
  %_4.i.i160 = icmp ult i64 %iter.sroa.0.0207, %len.i159
  br i1 %_35, label %bb28, label %bb31

bb40:                                             ; preds = %bb40.preheader, %bb49
  %iter1.sroa.4.1214 = phi i64 [ %iter1.sroa.4.1, %bb49 ], [ %iter1.sroa.4.1211, %bb40.preheader ]
  %_0.i1.i.i.i213 = phi i64 [ %_0.i1.i.i.i, %bb49 ], [ %_0.i1.i.i.i210, %bb40.preheader ]
  %iter1.sroa.4.0212 = phi i64 [ %iter1.sroa.4.1214, %bb49 ], [ %_21, %bb40.preheader ]
  %_4.i.i77 = icmp ult i64 %_0.i1.i.i.i213, %_0.i
  br i1 %_4.i.i77, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit82", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit82": ; preds = %bb40
  %_0.i.i80 = getelementptr inbounds nuw i32, ptr %_6.i35, i64 %_0.i1.i.i.i213
  %_61 = load i32, ptr %_0.i.i80, align 4, !range !1670, !noundef !37
  %_60 = icmp eq i32 %_61, 41
  %len.i131 = load i64, ptr %11, align 8, !noalias !37, !noundef !37
  %_4.i.i132 = icmp ult i64 %iter1.sroa.4.0212, %len.i131
  br i1 %_60, label %bb43, label %bb46

bb41:                                             ; preds = %bb49, %bb38.preheader
  %len.i85 = load i64, ptr %5, align 8, !alias.scope !1681, !noalias !1684, !noundef !37
  %_4.i.i86 = icmp ult i64 %_0.i, %len.i85
  br i1 %_4.i.i86, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit": ; preds = %bb41
  %_6.i88 = load ptr, ptr %4, align 8, !alias.scope !1681, !noalias !1684, !nonnull !37, !noundef !37
  %_0.i.i89 = getelementptr inbounds nuw i32, ptr %_6.i88, i64 %_0.i
  %_76 = load i32, ptr %_0.i.i89, align 4, !noundef !37
  %_75 = icmp eq i32 %_76, 0
  br i1 %_75, label %bb52, label %bb54

bb54:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit"
  %len.i91 = load i64, ptr %11, align 8, !alias.scope !1686, !noalias !1689, !noundef !37
  %_4.i.i92.not = icmp eq i64 %len.i91, 0
  br i1 %_4.i.i92.not, label %panic.i.i175.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97": ; preds = %bb54
  %_6.i94 = load ptr, ptr %10, align 8, !alias.scope !1686, !noalias !1689, !nonnull !37, !noundef !37
  %_82 = load i32, ptr %_6.i94, align 4, !noundef !37
  %_81 = icmp eq i32 %_82, 0
  br i1 %_81, label %bb71, label %bb61

bb52:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit"
  %14 = trunc i64 %_0.i to i32
  br label %bb71

bb61:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121"
  %iter2.sroa.0.0 = phi i64 [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97" ]
  %iter2.sroa.7.0 = phi i8 [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97" ]
  %_10.i.i = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter2.sroa.0.0, %_0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter2.sroa.0.0, %_0.i
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select181 = zext i1 %narrow to i64
  %iter2.sroa.0.1 = add nuw i64 %iter2.sroa.0.0, %spec.select181
  %15 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter2.sroa.7.1 = select i1 %15, i8 %iter2.sroa.7.0, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter2.sroa.0.0
  br i1 %or.cond, label %bb68, label %bb63

bb63:                                             ; preds = %bb61
  %_4.i.i107 = icmp ult i64 %_0.sroa.3.0.i.i, %len.i85
  br i1 %_4.i.i107, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit112", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit112": ; preds = %bb63
  %_4.i.i116 = icmp ult i64 %_0.sroa.3.0.i.i, %len.i91
  br i1 %_4.i.i116, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121", label %panic.i.i175.invoke

bb68:                                             ; preds = %bb61, %bb66
  %index.sroa.0.0 = phi i32 [ %16, %bb66 ], [ -1, %bb61 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %close, i64 noundef 4, i64 noundef 4)
          to label %bb74 unwind label %cleanup

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit112"
  %_0.i.i110 = getelementptr inbounds nuw i32, ptr %_6.i88, i64 %_0.sroa.3.0.i.i
  %_94 = load i32, ptr %_0.i.i110, align 4, !noundef !37
  %_0.i.i119 = getelementptr inbounds nuw i32, ptr %_6.i94, i64 %_0.sroa.3.0.i.i
  %_97 = load i32, ptr %_0.i.i119, align 4, !noundef !37
  %_93 = icmp eq i32 %_94, %_97
  br i1 %_93, label %bb66, label %bb61

bb66:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121"
  %16 = trunc i64 %_0.sroa.3.0.i.i to i32
  br label %bb68

bb74:                                             ; preds = %bb68, %bb71
  %index.sroa.0.1 = phi i32 [ %index.sroa.0.2, %bb71 ], [ %index.sroa.0.0, %bb68 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %close)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %open, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %open)
  ret i32 %index.sroa.0.1

bb71:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97", %bb52
  %index.sroa.0.2 = phi i32 [ %14, %bb52 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97" ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %close, i64 noundef 4, i64 noundef 4)
          to label %bb74 unwind label %cleanup

bb46:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit82"
  br i1 %_4.i.i132, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit130", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit130": ; preds = %bb46
  %_4.i.i139 = icmp ult i64 %_0.i1.i.i.i213, %len.i131
  br i1 %_4.i.i139, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit144", label %panic.i.i175.invoke

bb43:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit82"
  br i1 %_4.i.i132, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit137", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit137": ; preds = %bb43
  %_4.i.i146 = icmp ult i64 %_0.i1.i.i.i213, %len.i131
  br i1 %_4.i.i146, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit151", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit144": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit130"
  %_6.i127 = load ptr, ptr %10, align 8, !alias.scope !1691, !noalias !1694, !nonnull !37, !noundef !37
  %_0.i.i128 = getelementptr inbounds nuw i32, ptr %_6.i127, i64 %iter1.sroa.4.0212
  %_69 = load i32, ptr %_0.i.i128, align 4, !noundef !37
  %_0.i.i142 = getelementptr inbounds nuw i32, ptr %_6.i127, i64 %_0.i1.i.i.i213
  store i32 %_69, ptr %_0.i.i142, align 4
  br label %bb49

bb49:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit151", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit144"
  %_0.i.i.i.i.not.not = icmp eq i64 %iter1.sroa.4.1214, 0
  %_0.i1.i.i.i = add i64 %iter1.sroa.4.1214, -1
  %iter1.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter1.sroa.4.1214, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb41, label %bb40

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit151": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit137"
  %_6.i134 = load ptr, ptr %10, align 8, !alias.scope !1696, !noalias !1699, !nonnull !37, !noundef !37
  %_0.i.i135 = getelementptr inbounds nuw i32, ptr %_6.i134, i64 %iter1.sroa.4.0212
  %_63 = load i32, ptr %_0.i.i135, align 4, !noundef !37
  %_0.i.i149 = getelementptr inbounds nuw i32, ptr %_6.i134, i64 %_0.i1.i.i.i213
  %17 = add i32 %_63, 1
  store i32 %17, ptr %_0.i.i149, align 4
  br label %bb49

bb31:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit72"
  br i1 %_4.i.i160, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit158", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit158": ; preds = %bb31
  %_49 = add nuw nsw i64 %iter.sroa.0.0207, 1
  %_4.i.i167 = icmp ult i64 %_49, %len.i159
  br i1 %_4.i.i167, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit172", label %panic.i.i175.invoke

bb28:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit72"
  br i1 %_4.i.i160, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit165", label %panic.i.i175.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit165": ; preds = %bb28
  %_43 = add nuw nsw i64 %iter.sroa.0.0207, 1
  %_4.i.i174 = icmp ult i64 %_43, %len.i159
  br i1 %_4.i.i174, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit179", label %panic.i.i175.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit172": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit158"
  %_6.i155 = load ptr, ptr %4, align 8, !alias.scope !1701, !noalias !1704, !nonnull !37, !noundef !37
  %_0.i.i156 = getelementptr inbounds nuw i32, ptr %_6.i155, i64 %iter.sroa.0.0207
  %_44 = load i32, ptr %_0.i.i156, align 4, !noundef !37
  %_0.i.i170 = getelementptr inbounds nuw i32, ptr %_6.i155, i64 %_49
  store i32 %_44, ptr %_0.i.i170, align 4
  br label %bb34

bb34:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit179", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit172"
  %_0.i.i.i = icmp ult i64 %spec.select208, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select208, %_0.i1.i.i
  br i1 %_0.i.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE.exit72", label %bb38.preheader

panic.i.i175.invoke:                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit165", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit158", %bb28, %bb31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit137", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit130", %bb43, %bb46, %bb40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit112", %bb63, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit20, %bb54, %bb41, %bb15, %bb9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit31", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit"
  %18 = phi i64 [ %_0.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit31" ], [ 1, %bb9 ], [ %_21, %bb15 ], [ %_0.i, %bb41 ], [ 0, %bb54 ], [ 0, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit20 ], [ %_0.sroa.3.0.i.i, %bb63 ], [ %_0.sroa.3.0.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit112" ], [ %_0.i1.i.i.i213, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit137" ], [ %_0.i1.i.i.i213, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit130" ], [ %iter1.sroa.4.0212, %bb43 ], [ %iter1.sroa.4.0212, %bb46 ], [ %_0.i1.i.i.i213, %bb40 ], [ %_43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit165" ], [ %_49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit158" ], [ %iter.sroa.0.0207, %bb28 ], [ %iter.sroa.0.0207, %bb31 ]
  %19 = phi i64 [ %len.i26, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit" ], [ %_0.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit31" ], [ %len.i38, %bb9 ], [ %len.i58, %bb15 ], [ %len.i85, %bb41 ], [ %len.i91, %bb54 ], [ %len.i, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit20 ], [ %len.i91, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit112" ], [ %len.i85, %bb63 ], [ %len.i131, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit137" ], [ %len.i131, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit130" ], [ %len.i131, %bb43 ], [ %len.i131, %bb46 ], [ %_0.i, %bb40 ], [ %len.i159, %bb31 ], [ %len.i159, %bb28 ], [ %len.i159, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit158" ], [ %len.i159, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit165" ]
  %20 = phi ptr [ @alloc_5912d6e4ba8931d7d2077b2cddd8a183, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit" ], [ @alloc_7e970dd81f62319fed255317e74a2708, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit31" ], [ @alloc_ca1a38a460c1dd020d239d0fd21e3e34, %bb9 ], [ @alloc_f73222c7f25623f074564b767bd09308, %bb15 ], [ @alloc_c095594a9ab3d5a8e8d4e052eb81011a, %bb41 ], [ @alloc_11b3c827a4ae72af30a1f0f6669558ce, %bb54 ], [ @alloc_dbac7b577c2c8f447791777aaeb9527d, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit20 ], [ @alloc_3079e8a73ff5c64e0020f177c9531994, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit112" ], [ @alloc_069ff1f6edefec90d513d0dc5a75eddf, %bb63 ], [ @alloc_eba6bc72ce887dbf38f54ae765a0af12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit137" ], [ @alloc_e10dba8f8a969d264cc905b737559afd, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit130" ], [ @alloc_b250a9124a49e207fe64c3c258b4817a, %bb43 ], [ @alloc_8131848b3bacb7a80d59a6d9c8e4d242, %bb46 ], [ @alloc_978090ae14aa3bd11d92521130c9960b, %bb40 ], [ @alloc_c9fceaaa78c29c5e74788d0d6f240185, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit165" ], [ @alloc_0d5fa6f788c1f95d44e37783c68ccb98, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit158" ], [ @alloc_603c2b75e00903c23e63922f1769616c, %bb28 ], [ @alloc_995fca70dafe92d6dbfae404296de00b, %bb31 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %18, i64 noundef range(i64 0, 2305843009213693952) %19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #25
          to label %panic.i.i175.cont unwind label %cleanup3

panic.i.i175.cont:                                ; preds = %panic.i.i175.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit179": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit165"
  %_6.i162 = load ptr, ptr %4, align 8, !alias.scope !1706, !noalias !1709, !nonnull !37, !noundef !37
  %_0.i.i163 = getelementptr inbounds nuw i32, ptr %_6.i162, i64 %iter.sroa.0.0207
  %_38 = load i32, ptr %_0.i.i163, align 4, !noundef !37
  %_0.i.i177 = getelementptr inbounds nuw i32, ptr %_6.i162, i64 %_43
  %21 = add i32 %_38, 1
  store i32 %21, ptr %_0.i.i177, align 4
  br label %bb34

terminate:                                        ; preds = %cleanup3, %bb76
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb77:                                             ; preds = %bb76
  resume { ptr, i32 } %.pn
}
