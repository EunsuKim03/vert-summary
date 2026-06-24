define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %DP = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %DP)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %DP, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %DP, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %DP, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i52.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i52.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %DP, i64 noundef 4, i64 noundef 4)
          to label %bb20 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE.exit
  store i32 1, ptr %res.1.i.i, align 4
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, 1
  br i1 %_4.i.i4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit8", label %panic.i.i52.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit8": ; preds = %bb2
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i6, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, 2
  br i1 %_4.i.i10, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit15", label %panic.i.i52.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit15": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit8"
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i8, ptr %_6.i12, i64 8
  store i32 1, ptr %_0.i.i13, align 4
  %len.i16 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i17 = icmp ugt i64 %len.i16, 3
  br i1 %_4.i.i17, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit22", label %panic.i.i52.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit22": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit15"
  %_6.i19 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i20 = getelementptr inbounds nuw i8, ptr %_6.i19, i64 12
  store i32 2, ptr %_0.i.i20, align 4
  %_0.i.not.i.i85 = icmp slt i32 %n, 4
  br i1 %_0.i.not.i.i85, label %bb12, label %bb11.lr.ph

bb11.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit22"
  %.not = icmp eq i32 %n, 4
  %iter.sroa.7.191 = zext i1 %.not to i8
  %_0.i3.i.i86.not = icmp eq i32 %n, 4
  %iter.sroa.0.190 = select i1 %_0.i3.i.i86.not, i32 4, i32 5
  br label %bb11

bb11:                                             ; preds = %bb11.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit56"
  %_0.sroa.3.0.i.i94 = phi i32 [ 4, %bb11.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit56" ]
  %iter.sroa.7.193 = phi i8 [ %iter.sroa.7.191, %bb11.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit56" ]
  %iter.sroa.0.192 = phi i32 [ %iter.sroa.0.190, %bb11.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit56" ]
  %_25 = add i32 %_0.sroa.3.0.i.i94, -1
  %_24 = sext i32 %_25 to i64
  %len.i23 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i24 = icmp ugt i64 %len.i23, %_24
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit", label %panic.i.i52.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit": ; preds = %bb11
  %_6.i26 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_30 = add i32 %_0.sroa.3.0.i.i94, -3
  %_29 = sext i32 %_30 to i64
  %_4.i.i37 = icmp ugt i64 %len.i23, %_29
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit42", label %panic.i.i52.invoke

bb12:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit56", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit22"
  %len.i29 = load i64, ptr %4, align 8, !alias.scope !1665, !noalias !1668, !noundef !37
  %_4.i.i30 = icmp ugt i64 %len.i29, %_4
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit35", label %panic.i.i52.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit35": ; preds = %bb12
  %_6.i32 = load ptr, ptr %3, align 8, !alias.scope !1665, !noalias !1668, !nonnull !37, !noundef !37
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %_4
  %_0 = load i32, ptr %_0.i.i33, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %DP, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %DP)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit"
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_24
  %_21 = load i32, ptr %_0.i.i27, align 4, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_29
  %_26 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %_20 = add i32 %_26, %_21
  %_35 = add i32 %_0.sroa.3.0.i.i94, -4
  %_34 = sext i32 %_35 to i64
  %_4.i.i44 = icmp ugt i64 %len.i23, %_34
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit49", label %panic.i.i52.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit49": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit42"
  %_38 = sext i32 %_0.sroa.3.0.i.i94 to i64
  %_4.i.i51 = icmp ugt i64 %len.i23, %_38
  br i1 %_4.i.i51, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit56", label %panic.i.i52.invoke

panic.i.i52.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit49", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit42", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit", %bb11, %_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE.exit, %bb12, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit15", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit8", %bb2
  %6 = phi i64 [ 1, %bb2 ], [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit8" ], [ 3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit15" ], [ %_4, %bb12 ], [ 0, %_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE.exit ], [ %_38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit49" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit42" ], [ %_29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit" ], [ %_24, %bb11 ]
  %7 = phi i64 [ %len.i3, %bb2 ], [ %len.i9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit8" ], [ %len.i16, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit15" ], [ %len.i29, %bb12 ], [ %_3, %_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE.exit ], [ %len.i23, %bb11 ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit" ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit42" ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit49" ]
  %8 = phi ptr [ @alloc_77d9a1f6b5b17d7ac36c30f1176117b1, %bb2 ], [ @alloc_53bef81a68d4726650d245e84f663a3c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit8" ], [ @alloc_21bc07919a72c59cfcb1612af9f263c3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit15" ], [ @alloc_bce9bcae1cbd5a13268d56a1fedb2603, %bb12 ], [ @alloc_c997f2eecd8e1a0504a1a60da4f67804, %_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE.exit ], [ @alloc_409d76cbf7a5028498ccea9ee0b49a62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit49" ], [ @alloc_0f35713af3526b80b73edfedc1660bba, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit42" ], [ @alloc_e2d7efb284d25a5d0d1e4f24d887bfff, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit" ], [ @alloc_6f01d87f29057f062333a9f6b088f6f2, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i52.cont unwind label %cleanup

panic.i.i52.cont:                                 ; preds = %panic.i.i52.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE.exit56": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit49"
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_34
  %_31 = load i32, ptr %_0.i.i47, align 4, !noundef !37
  %_0.i.i54 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_38
  %9 = add i32 %_20, %_31
  store i32 %9, ptr %_0.i.i54, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.193 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.192, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.192, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.192, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.193, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.192
  br i1 %or.cond, label %bb12, label %bb11

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb20:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
