define noundef i32 @f_gold(i32 noundef %x, i32 noundef %y, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_5, 0
  br i1 %_4.i.i.not, label %panic.i.i59.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i59.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E.exit
  store i32 0, ptr %res.1.i.i, align 4
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, 1
  br i1 %_4.i.i4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit8", label %panic.i.i59.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit8": ; preds = %bb2
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i6, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %_31 = sitofp i32 %x to float
  %_38 = sext i32 %x to i64
  %_43 = sitofp i32 %y to float
  %_50 = sext i32 %y to i64
  %_0.i.not.i.i92 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i92, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit8"
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.198 = zext i1 %.not to i8
  %_0.i3.i.i93.not = icmp eq i32 %n, 2
  %iter.sroa.0.197 = select i1 %_0.i3.i.i93.not, i32 2, i32 3
  br label %bb9

bb9:                                              ; preds = %bb9.lr.ph, %bb35
  %_0.sroa.3.0.i.i101 = phi i32 [ 2, %bb9.lr.ph ], [ %_0.sroa.3.0.i.i, %bb35 ]
  %iter.sroa.7.1100 = phi i8 [ %iter.sroa.7.198, %bb9.lr.ph ], [ %iter.sroa.7.1, %bb35 ]
  %iter.sroa.0.199 = phi i32 [ %iter.sroa.0.197, %bb9.lr.ph ], [ %iter.sroa.0.1, %bb35 ]
  %_20 = sitofp i32 %_0.sroa.3.0.i.i101 to float
  %_19 = fadd float %_20, -1.000000e+00
  %_18 = fcmp ult float %_19, 0.000000e+00
  br i1 %_18, label %bb17, label %bb11

bb10:                                             ; preds = %bb35, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit8"
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_6
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit", label %panic.i.i59.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit": ; preds = %bb10
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_6
  %_0 = load i32, ptr %_0.i.i13, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb11:                                             ; preds = %bb9
  %_26 = sext i32 %_0.sroa.3.0.i.i101 to i64
  %_25 = add nsw i64 %_26, -1
  %len.i15 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i16 = icmp ult i64 %_25, %len.i15
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit21", label %panic.i.i59.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit21": ; preds = %bb11
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_25
  %_22 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  %_21 = icmp eq i32 %_22, 0
  br i1 %_21, label %bb13, label %bb17

bb17:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit21", %bb9
  %_29 = fcmp ult float %_20, %_31
  br i1 %_29, label %bb24, label %bb18

bb13:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit21"
  %_4.i.i23 = icmp ugt i64 %len.i15, %_26
  br i1 %_4.i.i23, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit28", label %panic.i.i59.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit28": ; preds = %bb13
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_26
  store i32 1, ptr %_0.i.i26, align 4
  br label %bb35

bb18:                                             ; preds = %bb17
  %_37 = sext i32 %_0.sroa.3.0.i.i101 to i64
  %_36 = sub nsw i64 %_37, %_38
  %len.i29 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i30 = icmp ult i64 %_36, %len.i29
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit35", label %panic.i.i59.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit35": ; preds = %bb18
  %_6.i32 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %_36
  %_33 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_32 = icmp eq i32 %_33, 0
  br i1 %_32, label %bb20, label %bb24

bb24:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit35", %bb17
  %_41 = fcmp ult float %_20, %_43
  br i1 %_41, label %bb31, label %bb25

bb20:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit35"
  %_4.i.i37 = icmp ugt i64 %len.i29, %_37
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit42", label %panic.i.i59.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit42": ; preds = %bb20
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %_37
  store i32 1, ptr %_0.i.i40, align 4
  br label %bb35

bb25:                                             ; preds = %bb24
  %_49 = sext i32 %_0.sroa.3.0.i.i101 to i64
  %_48 = sub nsw i64 %_49, %_50
  %len.i43 = load i64, ptr %4, align 8, !alias.scope !1665, !noalias !1668, !noundef !37
  %_4.i.i44 = icmp ult i64 %_48, %len.i43
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit49", label %panic.i.i59.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit49": ; preds = %bb25
  %_6.i46 = load ptr, ptr %3, align 8, !alias.scope !1665, !noalias !1668, !nonnull !37, !noundef !37
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i46, i64 %_48
  %_45 = load i32, ptr %_0.i.i47, align 4, !noundef !37
  %_44 = icmp eq i32 %_45, 0
  br i1 %_44, label %bb27, label %bb31

bb31:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit49", %bb24
  %_55 = sext i32 %_0.sroa.3.0.i.i101 to i64
  %len.i50 = load i64, ptr %4, align 8, !alias.scope !1670, !noalias !1673, !noundef !37
  %_4.i.i51 = icmp ugt i64 %len.i50, %_55
  br i1 %_4.i.i51, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit56", label %panic.i.i59.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit56": ; preds = %bb31
  %_6.i53 = load ptr, ptr %3, align 8, !alias.scope !1670, !noalias !1673, !nonnull !37, !noundef !37
  %_0.i.i54 = getelementptr inbounds nuw i32, ptr %_6.i53, i64 %_55
  store i32 0, ptr %_0.i.i54, align 4
  br label %bb35

bb27:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E.exit49"
  %_4.i.i58 = icmp ugt i64 %len.i43, %_49
  br i1 %_4.i.i58, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit63", label %panic.i.i59.invoke

panic.i.i59.invoke:                               ; preds = %bb27, %bb31, %bb25, %bb20, %bb18, %bb13, %bb11, %_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E.exit, %bb10, %bb2
  %6 = phi i64 [ 1, %bb2 ], [ %_6, %bb10 ], [ 0, %_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E.exit ], [ %_49, %bb27 ], [ %_55, %bb31 ], [ %_48, %bb25 ], [ %_37, %bb20 ], [ %_36, %bb18 ], [ %_26, %bb13 ], [ %_25, %bb11 ]
  %7 = phi i64 [ %len.i3, %bb2 ], [ %len.i9, %bb10 ], [ %_5, %_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E.exit ], [ %len.i43, %bb27 ], [ %len.i50, %bb31 ], [ %len.i43, %bb25 ], [ %len.i29, %bb20 ], [ %len.i29, %bb18 ], [ %len.i15, %bb13 ], [ %len.i15, %bb11 ]
  %8 = phi ptr [ @alloc_2a34a89fbc0dc9bd157c70bba32b5e7d, %bb2 ], [ @alloc_faae14e7cb4fa73bebacdf3220fac6e9, %bb10 ], [ @alloc_7032120f5d7a13ccb59140206a2d3209, %_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E.exit ], [ @alloc_84f5d008c691d8009a6868da91ab8aaf, %bb27 ], [ @alloc_eec447e33fde37e638221ce640bd4f10, %bb31 ], [ @alloc_37744507543f7de5f4362ea07922c49c, %bb25 ], [ @alloc_3e432f94d1533f59515e8afbbe395109, %bb20 ], [ @alloc_67e6f72d2eef534837bbf578e5433ee7, %bb18 ], [ @alloc_9c790e4c77bbbd7737acbaf19f0cde73, %bb13 ], [ @alloc_d6e1d1874f68c09e2945e2d183e6b384, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -4294967295, 4294967296) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i59.cont unwind label %cleanup

panic.i.i59.cont:                                 ; preds = %panic.i.i59.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit63": ; preds = %bb27
  %_0.i.i61 = getelementptr inbounds nuw i32, ptr %_6.i46, i64 %_49
  store i32 1, ptr %_0.i.i61, align 4
  br label %bb35

bb35:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit42", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit63", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit56", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE.exit28"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1100 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.199, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.199, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.199, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.1100, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.199
  br i1 %or.cond, label %bb10, label %bb9

terminate:                                        ; preds = %cleanup
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
