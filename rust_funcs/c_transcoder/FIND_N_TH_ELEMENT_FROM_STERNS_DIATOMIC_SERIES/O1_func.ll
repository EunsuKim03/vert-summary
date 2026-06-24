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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h795d0474519039d2E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h795d0474519039d2E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i45.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i45.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb22 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h795d0474519039d2E.exit
  store i32 0, ptr %res.1.i.i, align 4
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, 1
  br i1 %_4.i.i4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit8", label %panic.i.i45.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit8": ; preds = %bb2
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i6, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %_0.i.not.i.i72 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i72, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit8"
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.178 = zext i1 %.not to i8
  %_0.i3.i.i73.not = icmp eq i32 %n, 2
  %iter.sroa.0.177 = select i1 %_0.i3.i.i73.not, i32 2, i32 3
  br label %bb9

bb9:                                              ; preds = %bb9.lr.ph, %bb18
  %_0.sroa.3.0.i.i81 = phi i32 [ 2, %bb9.lr.ph ], [ %_0.sroa.3.0.i.i, %bb18 ]
  %iter.sroa.7.180 = phi i8 [ %iter.sroa.7.178, %bb9.lr.ph ], [ %iter.sroa.7.1, %bb18 ]
  %iter.sroa.0.179 = phi i32 [ %iter.sroa.0.177, %bb9.lr.ph ], [ %iter.sroa.0.1, %bb18 ]
  %6 = and i32 %_0.sroa.3.0.i.i81, 1
  %_16 = icmp eq i32 %6, 0
  br i1 %_16, label %bb11, label %bb14

bb10:                                             ; preds = %bb18, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit8"
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_4
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit", label %panic.i.i45.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit": ; preds = %bb10
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_4
  %_0 = load i32, ptr %_0.i.i13, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb14:                                             ; preds = %bb9
  %_31 = add nsw i32 %_0.sroa.3.0.i.i81, -1
  %_30 = ashr exact i32 %_31, 1
  %_29 = sext i32 %_30 to i64
  %len.i15 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i16 = icmp ugt i64 %len.i15, %_29
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit21", label %panic.i.i45.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit21": ; preds = %bb14
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_29
  %_26 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  %_37 = add i32 %_0.sroa.3.0.i.i81, 1
  %_36 = ashr exact i32 %_37, 1
  %_35 = sext i32 %_36 to i64
  %_4.i.i30 = icmp ugt i64 %len.i15, %_35
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit35", label %panic.i.i45.invoke

bb11:                                             ; preds = %bb9
  %_22 = ashr exact i32 %_0.sroa.3.0.i.i81, 1
  %_21 = sext i32 %_22 to i64
  %len.i22 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i23 = icmp ugt i64 %len.i22, %_21
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit28", label %panic.i.i45.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit28": ; preds = %bb11
  %_25 = sext i32 %_0.sroa.3.0.i.i81 to i64
  %_4.i.i44 = icmp ugt i64 %len.i22, %_25
  br i1 %_4.i.i44, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit49", label %panic.i.i45.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit21"
  %_40 = sext i32 %_0.sroa.3.0.i.i81 to i64
  %_4.i.i37 = icmp ugt i64 %len.i15, %_40
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit42", label %panic.i.i45.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit35"
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_35
  %_32 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_40
  %7 = add i32 %_32, %_26
  store i32 %7, ptr %_0.i.i40, align 4
  br label %bb18

bb18:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit49", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit42"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.180 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.179, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.179, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.179, %spec.select
  %8 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %8, i8 %iter.sroa.7.180, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.179
  br i1 %or.cond, label %bb10, label %bb9

panic.i.i45.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit28", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit21", %bb11, %bb14, %_ZN5alloc3vec9from_elem17h795d0474519039d2E.exit, %bb10, %bb2
  %9 = phi i64 [ 1, %bb2 ], [ %_4, %bb10 ], [ 0, %_ZN5alloc3vec9from_elem17h795d0474519039d2E.exit ], [ %_25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit28" ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit35" ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit21" ], [ %_21, %bb11 ], [ %_29, %bb14 ]
  %10 = phi i64 [ %len.i3, %bb2 ], [ %len.i9, %bb10 ], [ %_3, %_ZN5alloc3vec9from_elem17h795d0474519039d2E.exit ], [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit28" ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit35" ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit21" ], [ %len.i22, %bb11 ], [ %len.i15, %bb14 ]
  %11 = phi ptr [ @alloc_e054e18a003b5c7e9e231aba15aad393, %bb2 ], [ @alloc_c493aaaf51ff574bdb526a3f15ce1373, %bb10 ], [ @alloc_38e51937ddea9b8638668272a6391c8d, %_ZN5alloc3vec9from_elem17h795d0474519039d2E.exit ], [ @alloc_5f42f44ae3d677f60686498a4d140dd5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit28" ], [ @alloc_a08eaac8f8c9433607693024af499791, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit35" ], [ @alloc_8c7d3b16a81a23a6e5691771cddd9724, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit21" ], [ @alloc_5e027637dc8f8219a82135c0784b87e0, %bb11 ], [ @alloc_55893ffccdae4df5905ed366a5f9f8e0, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %9, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #25
          to label %panic.i.i45.cont unwind label %cleanup

panic.i.i45.cont:                                 ; preds = %panic.i.i45.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E.exit49": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit28"
  %_6.i25 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_21
  %_18 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_25
  store i32 %_18, ptr %_0.i.i47, align 4
  br label %bb18

terminate:                                        ; preds = %cleanup
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb22:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
