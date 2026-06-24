define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %count, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %count, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %count, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_4, 0
  br i1 %_4.i.i.not, label %panic.i.i38.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i38.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %count, i64 noundef 4, i64 noundef 4)
          to label %bb24 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E.exit
  store i32 0, ptr %res.1.i.i, align 4
  %_0.i.not.i.i59 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i59, label %bb9, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb2
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.165 = zext i1 %.not to i8
  %_0.i3.i.i60.not = icmp eq i32 %n, 1
  %iter.sroa.0.164 = select i1 %_0.i3.i.i60.not, i32 1, i32 2
  br label %bb8

bb8:                                              ; preds = %bb8.lr.ph, %bb20
  %_0.sroa.3.0.i.i68 = phi i32 [ 1, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb20 ]
  %iter.sroa.7.167 = phi i8 [ %iter.sroa.7.165, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb20 ]
  %iter.sroa.0.166 = phi i32 [ %iter.sroa.0.164, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb20 ]
  %_15 = icmp sgt i32 %_0.sroa.3.0.i.i68, %m
  %len.i8 = load i64, ptr %4, align 8, !noalias !37, !noundef !37
  br i1 %_15, label %bb10, label %bb14

bb9:                                              ; preds = %bb20, %bb2
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, %_5
  br i1 %_4.i.i4, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit": ; preds = %bb9
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i6, i64 %_5
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %count, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count)
  ret i32 %_0

bb14:                                             ; preds = %bb8
  %_29 = icmp slt i32 %_0.sroa.3.0.i.i68, %m
  %_32 = sext i32 %_0.sroa.3.0.i.i68 to i64
  %_4.i.i23 = icmp ugt i64 %len.i8, %_32
  br i1 %_29, label %bb15, label %bb17

bb10:                                             ; preds = %bb8
  %_20 = add i32 %_0.sroa.3.0.i.i68, -1
  %_19 = sext i32 %_20 to i64
  %_4.i.i9 = icmp ugt i64 %len.i8, %_19
  br i1 %_4.i.i9, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit14", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit14": ; preds = %bb10
  %_6.i11 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i12 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_19
  %_16 = load i32, ptr %_0.i.i12, align 4, !noundef !37
  %_25 = sub i32 %_0.sroa.3.0.i.i68, %m
  %_24 = sext i32 %_25 to i64
  %_4.i.i30 = icmp ugt i64 %len.i8, %_24
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit35", label %panic.i.i38.invoke

bb17:                                             ; preds = %bb14
  br i1 %_4.i.i23, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit21", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit21": ; preds = %bb17
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_32
  store i32 2, ptr %_0.i.i19, align 4
  br label %bb20

bb15:                                             ; preds = %bb14
  br i1 %_4.i.i23, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit28", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit28": ; preds = %bb15
  %_6.i25 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_32
  store i32 1, ptr %_0.i.i26, align 4
  br label %bb20

bb20:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit21", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit28", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit42"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.167 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.166, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.166, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.166, %spec.select
  %6 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %6, i8 %iter.sroa.7.167, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.166
  br i1 %or.cond, label %bb9, label %bb8

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit14"
  %_28 = sext i32 %_0.sroa.3.0.i.i68 to i64
  %_4.i.i37 = icmp ugt i64 %len.i8, %_28
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit42", label %panic.i.i38.invoke

panic.i.i38.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit14", %bb15, %bb17, %bb10, %_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E.exit, %bb9
  %7 = phi i64 [ %_5, %bb9 ], [ 0, %_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E.exit ], [ %_28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit35" ], [ %_24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit14" ], [ %_32, %bb15 ], [ %_32, %bb17 ], [ %_19, %bb10 ]
  %8 = phi i64 [ %len.i3, %bb9 ], [ %_4, %_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E.exit ], [ %len.i8, %bb10 ], [ %len.i8, %bb17 ], [ %len.i8, %bb15 ], [ %len.i8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit14" ], [ %len.i8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit35" ]
  %9 = phi ptr [ @alloc_e18aae0091d832da94693ec54f2b2acc, %bb9 ], [ @alloc_17feba9e5c747866877ddf209c3b1bf8, %_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E.exit ], [ @alloc_edcff0fcfa69f0d44ee48e539d23354d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit35" ], [ @alloc_3f88f3858a8318a73712c8a3c19ebe21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit14" ], [ @alloc_c5a5ed330c6d020bd4ec74d680b601b0, %bb15 ], [ @alloc_adfbe15e800a6b24977f68575484c4ab, %bb17 ], [ @alloc_5cfb1e4cd9c0d545e06049de1e5db50b, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %panic.i.i38.cont unwind label %cleanup

panic.i.i38.cont:                                 ; preds = %panic.i.i38.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE.exit35"
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_24
  %_21 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_28
  %10 = add i32 %_21, %_16
  store i32 %10, ptr %_0.i.i40, align 4
  br label %bb20

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb24:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
