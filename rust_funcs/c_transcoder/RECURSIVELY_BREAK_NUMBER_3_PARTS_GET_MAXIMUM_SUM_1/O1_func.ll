define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h595e90c836f88ff4E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h595e90c836f88ff4E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i38.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i38.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb19 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h595e90c836f88ff4E.exit
  store i32 0, ptr %res.1.i.i, align 4
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, 1
  br i1 %_4.i.i4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit8", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit8": ; preds = %bb2
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i6, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %_0.i.not.i.i71 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i71, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit8"
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.177 = zext i1 %.not to i8
  %_0.i3.i.i72.not = icmp eq i32 %n, 2
  %iter.sroa.0.176 = select i1 %_0.i3.i.i72.not, i32 2, i32 3
  br label %bb9

bb9:                                              ; preds = %bb9.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit42"
  %_0.sroa.3.0.i.i80 = phi i32 [ 2, %bb9.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit42" ]
  %iter.sroa.7.179 = phi i8 [ %iter.sroa.7.177, %bb9.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit42" ]
  %iter.sroa.0.178 = phi i32 [ %iter.sroa.0.176, %bb9.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit42" ]
  %_21 = sdiv i32 %_0.sroa.3.0.i.i80, 2
  %_20 = sext i32 %_21 to i64
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_20
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit": ; preds = %bb9
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_26 = sdiv i32 %_0.sroa.3.0.i.i80, 3
  %_25 = sext i32 %_26 to i64
  %_4.i.i23 = icmp ugt i64 %len.i9, %_25
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit28", label %panic.i.i38.invoke

bb10:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit42", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit8"
  %len.i15 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i16 = icmp ugt i64 %len.i15, %_4
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit21", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit21": ; preds = %bb10
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_4
  %_0 = load i32, ptr %_0.i.i19, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit28": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit"
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_20
  %_17 = load i32, ptr %_0.i.i13, align 4, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_25
  %_22 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %_16 = add i32 %_22, %_17
  %_32 = sdiv i32 %_0.sroa.3.0.i.i80, 4
  %_31 = sext i32 %_32 to i64
  %_4.i.i30 = icmp ugt i64 %len.i9, %_31
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit35", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit28"
  %_35 = sext i32 %_0.sroa.3.0.i.i80 to i64
  %_4.i.i37 = icmp ugt i64 %len.i9, %_35
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit42", label %panic.i.i38.invoke

panic.i.i38.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit28", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit", %bb9, %_ZN5alloc3vec9from_elem17h595e90c836f88ff4E.exit, %bb10, %bb2
  %6 = phi i64 [ 1, %bb2 ], [ %_4, %bb10 ], [ 0, %_ZN5alloc3vec9from_elem17h595e90c836f88ff4E.exit ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit35" ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit28" ], [ %_25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit" ], [ %_20, %bb9 ]
  %7 = phi i64 [ %len.i3, %bb2 ], [ %len.i15, %bb10 ], [ %_3, %_ZN5alloc3vec9from_elem17h595e90c836f88ff4E.exit ], [ %len.i9, %bb9 ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit28" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit35" ]
  %8 = phi ptr [ @alloc_fa7e27c0b0a399256f6b186f7c8f367c, %bb2 ], [ @alloc_deefcaa8e3985f2e125012c63042975b, %bb10 ], [ @alloc_9223545f54aadf0f6105a8a79f123363, %_ZN5alloc3vec9from_elem17h595e90c836f88ff4E.exit ], [ @alloc_8dd35b268850f0934cf864e75e425e00, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit35" ], [ @alloc_e24f4835243839a3c68864c798e1ea14, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit28" ], [ @alloc_58f6ab914e688dd90307c923a8d80088, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit" ], [ @alloc_357b067c4d3bd77a239201a3a7e3f979, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i38.cont unwind label %cleanup

panic.i.i38.cont:                                 ; preds = %panic.i.i38.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE.exit35"
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_31
  %_28 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_0.sroa.3.0.i.i80, i32 %_28)
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_35
  %9 = add i32 %_16, %_0.sroa.0.0.i
  store i32 %9, ptr %_0.i.i40, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.179 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.178, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.178, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.178, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.179, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.178
  br i1 %or.cond, label %bb10, label %bb9

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb19:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
