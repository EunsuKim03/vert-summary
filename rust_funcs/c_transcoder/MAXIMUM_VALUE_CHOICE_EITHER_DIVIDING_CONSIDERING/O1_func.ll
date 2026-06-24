define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %res = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %res, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i46.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i46.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef 4, i64 noundef 4)
          to label %bb20 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit
  store i32 0, ptr %res.1.i.i, align 4
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, 1
  br i1 %_4.i.i4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit8", label %panic.i.i46.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit8": ; preds = %bb2
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i6, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %_0.i.not.i.i94 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i94, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit8"
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.1100 = zext i1 %.not to i8
  %_0.i3.i.i95.not = icmp eq i32 %n, 2
  %iter.sroa.0.199 = select i1 %_0.i3.i.i95.not, i32 2, i32 3
  br label %bb9

bb9:                                              ; preds = %bb9.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit50"
  %_0.sroa.3.0.i.i103 = phi i32 [ 2, %bb9.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit50" ]
  %iter.sroa.7.1102 = phi i8 [ %iter.sroa.7.1100, %bb9.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit50" ]
  %iter.sroa.0.1101 = phi i32 [ %iter.sroa.0.199, %bb9.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit50" ]
  %_24 = sdiv i32 %_0.sroa.3.0.i.i103, 2
  %_23 = sext i32 %_24 to i64
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_23
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit": ; preds = %bb9
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_23
  %_20 = load i32, ptr %_0.i.i13, align 4, !noundef !37
  %_29 = sdiv i32 %_0.sroa.3.0.i.i103, 3
  %_28 = sext i32 %_29 to i64
  %_4.i.i23 = icmp ugt i64 %len.i9, %_28
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit28", label %panic.i.i46.invoke

bb10:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit50", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit8"
  %len.i15 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i16 = icmp ugt i64 %len.i15, %_4
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit21", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit21": ; preds = %bb10
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_4
  %_0 = load i32, ptr %_0.i.i19, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit28": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit"
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_28
  %_25 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %_34 = sdiv i32 %_0.sroa.3.0.i.i103, 4
  %_33 = sext i32 %_34 to i64
  %_4.i.i30 = icmp ugt i64 %len.i9, %_33
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit35", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit28"
  %_39 = sdiv i32 %_0.sroa.3.0.i.i103, 5
  %_38 = sext i32 %_39 to i64
  %_4.i.i37 = icmp ugt i64 %len.i9, %_38
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit42", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit35"
  %_42 = sext i32 %_0.sroa.3.0.i.i103 to i64
  %_4.i.i45 = icmp ugt i64 %len.i9, %_42
  br i1 %_4.i.i45, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit50", label %panic.i.i46.invoke

panic.i.i46.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit42", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit28", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit", %bb9, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit, %bb10, %bb2
  %6 = phi i64 [ 1, %bb2 ], [ %_4, %bb10 ], [ 0, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit ], [ %_42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit42" ], [ %_38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit35" ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit28" ], [ %_28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit" ], [ %_23, %bb9 ]
  %7 = phi i64 [ %len.i3, %bb2 ], [ %len.i15, %bb10 ], [ %_3, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit ], [ %len.i9, %bb9 ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit28" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit35" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit42" ]
  %8 = phi ptr [ @alloc_a5689cd88f5fccdaf2e2d8a638544e02, %bb2 ], [ @alloc_922d3e5dd449da4004e4c265f404d79b, %bb10 ], [ @alloc_856d0050389957213856bf4110369f9b, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit ], [ @alloc_c6131cda3da35b7101277a1d2443691e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit42" ], [ @alloc_cdf144296feb38428557865e2f326cf2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit35" ], [ @alloc_6c521137228d9fe891010eda7fa4d56c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit28" ], [ @alloc_935d792ba2260ee0c5a716a042b48504, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit" ], [ @alloc_a0dd2f1b59cc390a0791f197661fee9a, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i46.cont unwind label %cleanup

panic.i.i46.cont:                                 ; preds = %panic.i.i46.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit42"
  %_19 = add i32 %_25, %_20
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_33
  %_30 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_18 = add i32 %_19, %_30
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_38
  %_35 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %_17 = add i32 %_18, %_35
  %_0.sroa.0.0.i.i43 = tail call noundef i32 @llvm.smax.i32(i32 %_17, i32 %_0.sroa.3.0.i.i103)
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_42
  store i32 %_0.sroa.0.0.i.i43, ptr %_0.i.i48, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1102 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1101, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1101, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1101, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.1102, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1101
  br i1 %or.cond, label %bb10, label %bb9

terminate:                                        ; preds = %cleanup
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb20:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
