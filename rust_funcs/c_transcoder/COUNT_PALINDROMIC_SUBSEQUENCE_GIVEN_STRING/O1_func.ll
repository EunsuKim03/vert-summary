define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %cps = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cps)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_5 = add nuw nsw i64 %str.1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hca758c718855457cE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17hca758c718855457cE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0259912565d1c6d8E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %cps, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %_0.i.i.i199.not = icmp eq i64 %str.1, 0
  br i1 %_0.i.i.i199.not, label %bb13.preheader, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hca758c718855457cE.exit
  %5 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  br label %bb7

cleanup:                                          ; preds = %panic.i.i132.invoke, %panic3
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr noalias noundef align 8 dereferenceable(24) %cps) #30
          to label %bb45 unwind label %terminate

bb13.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit136", %_ZN5alloc3vec9from_elem17hca758c718855457cE.exit
  %_0.i.i.i28203 = icmp ne i64 %str.1, 0
  %_0.i1.i.i31204 = zext i1 %_0.i.i.i28203 to i64
  %8 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %_0.i.not.i.i327 = icmp samesign ult i64 %str.1, 2
  br i1 %_0.i.not.i.i327, label %bb16, label %bb18.preheader.lr.ph

bb18.preheader.lr.ph:                             ; preds = %bb13.preheader
  %.not = icmp eq i64 %str.1, 2
  %iter1.sroa.7.1333 = zext i1 %.not to i8
  %_0.i3.i.i328.not = icmp eq i64 %str.1, 2
  %iter1.sroa.0.1332 = select i1 %_0.i3.i.i328.not, i64 2, i64 3
  br label %bb18.preheader

bb7:                                              ; preds = %bb7.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit136"
  %spec.select202 = phi i64 [ 1, %bb7.lr.ph ], [ %spec.select, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit136" ]
  %iter.sroa.0.0201 = phi i64 [ 0, %bb7.lr.ph ], [ %spec.select202, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit136" ]
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i8 = icmp ult i64 %iter.sroa.0.0201, %len.i
  br i1 %_4.i.i8, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit", label %panic.i.i132.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %iter.sroa.0.0201
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i130 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i131 = icmp ult i64 %iter.sroa.0.0201, %len.i130
  br i1 %_4.i.i131, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit136", label %panic.i.i132.invoke

bb13.loopexit:                                    ; preds = %bb40, %bb18.preheader
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.1335 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter1.sroa.0.1334, %str.1
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter1.sroa.0.1334, %str.1
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select140 = zext i1 %narrow to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1334, %spec.select140
  %13 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %13, i8 %iter1.sroa.7.1335, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter1.sroa.0.1334
  br i1 %or.cond, label %bb16, label %bb18.preheader

bb18.preheader:                                   ; preds = %bb18.preheader.lr.ph, %bb13.loopexit
  %_0.sroa.3.0.i.i336 = phi i64 [ 2, %bb18.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb13.loopexit ]
  %iter1.sroa.7.1335 = phi i8 [ %iter1.sroa.7.1333, %bb18.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb13.loopexit ]
  %iter1.sroa.0.1334 = phi i64 [ %iter1.sroa.0.1332, %bb18.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb13.loopexit ]
  br i1 %_0.i.i.i28203, label %bb20, label %bb13.loopexit

bb16:                                             ; preds = %bb13.loopexit, %bb13.preheader
  %14 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %len.i13 = load i64, ptr %14, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i14.not = icmp eq i64 %len.i13, 0
  br i1 %_4.i.i14.not, label %panic.i.i132.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit": ; preds = %bb16
  %15 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %_6.i16 = load ptr, ptr %15, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_71 = add nsw i64 %str.1, -1
  %16 = getelementptr inbounds nuw i8, ptr %_6.i16, i64 16
  %len.i19 = load i64, ptr %16, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i20 = icmp ult i64 %_71, %len.i19
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit"
  %17 = getelementptr inbounds nuw i8, ptr %_6.i16, i64 8
  %_6.i22 = load ptr, ptr %17, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i22, i64 %_71
  %_0 = load i32, ptr %_0.i.i23, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr noalias noundef align 8 dereferenceable(24) %cps)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cps)
  ret i32 %_0

bb20:                                             ; preds = %bb18.preheader, %bb40
  %spec.select138206 = phi i64 [ %spec.select138, %bb40 ], [ %_0.i1.i.i31204, %bb18.preheader ]
  %iter2.sroa.0.0205 = phi i64 [ %spec.select138206, %bb40 ], [ 0, %bb18.preheader ]
  %_30 = add i64 %iter2.sroa.0.0205, %_0.sroa.3.0.i.i336
  %k = add i64 %_30, -1
  %_35 = icmp ult i64 %k, %str.1
  br i1 %_35, label %bb23, label %panic3

unreachable:                                      ; preds = %panic3
  unreachable

bb23:                                             ; preds = %bb20
  %18 = getelementptr inbounds nuw i32, ptr %str.0, i64 %iter2.sroa.0.0205
  %_32 = load i32, ptr %18, align 4, !range !1702, !noundef !15
  %19 = getelementptr inbounds nuw i32, ptr %str.0, i64 %k
  %_34 = load i32, ptr %19, align 4, !range !1702, !noundef !15
  %_31 = icmp eq i32 %_32, %_34
  br i1 %_31, label %bb24, label %bb31

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %k, i64 noundef %str.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8d62c3ed1b9c03e4736c665d1f08cba9) #28
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb23
  %len.i33 = load i64, ptr %8, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i34 = icmp samesign ult i64 %iter2.sroa.0.0205, %len.i33
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit39", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit39": ; preds = %bb31
  %_6.i36 = load ptr, ptr %9, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i36, i64 %iter2.sroa.0.0205
  %_55 = add i64 %_30, -2
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i37, i64 16
  %len.i47 = load i64, ptr %20, align 8, !alias.scope !1708, !noalias !1711, !noundef !15
  %_4.i.i48 = icmp ult i64 %_55, %len.i47
  br i1 %_4.i.i48, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit53", label %panic.i.i132.invoke

bb24:                                             ; preds = %bb23
  %len.i40 = load i64, ptr %10, align 8, !alias.scope !1713, !noalias !1716, !noundef !15
  %_4.i.i41 = icmp samesign ult i64 %iter2.sroa.0.0205, %len.i40
  br i1 %_4.i.i41, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit46", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit46": ; preds = %bb24
  %_6.i43 = load ptr, ptr %11, align 8, !alias.scope !1713, !noalias !1716, !nonnull !15, !noundef !15
  %_0.i.i44 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i43, i64 %iter2.sroa.0.0205
  %_41 = add i64 %_30, -2
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i44, i64 16
  %len.i95 = load i64, ptr %21, align 8, !alias.scope !1718, !noalias !1721, !noundef !15
  %_4.i.i96 = icmp ult i64 %_41, %len.i95
  br i1 %_4.i.i96, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit101", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit53": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit39"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i37, i64 8
  %_6.i50 = load ptr, ptr %22, align 8, !alias.scope !1708, !noalias !1711, !nonnull !15, !noundef !15
  %_0.i.i51 = getelementptr inbounds nuw i32, ptr %_6.i50, i64 %_55
  %_51 = load i32, ptr %_0.i.i51, align 4, !noundef !15
  %_60 = add nuw nsw i64 %iter2.sroa.0.0205, 1
  %_4.i.i55 = icmp samesign ult i64 %_60, %len.i33
  br i1 %_4.i.i55, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit60", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit60": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit53"
  %_0.i.i58 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i36, i64 %_60
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i58, i64 16
  %len.i61 = load i64, ptr %23, align 8, !alias.scope !1723, !noalias !1726, !noundef !15
  %_4.i.i62 = icmp ult i64 %k, %len.i61
  br i1 %_4.i.i62, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit67", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit67": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit60"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i58, i64 8
  %_6.i64 = load ptr, ptr %24, align 8, !alias.scope !1723, !noalias !1726, !nonnull !15, !noundef !15
  %_0.i.i65 = getelementptr inbounds nuw i32, ptr %_6.i64, i64 %k
  %_56 = load i32, ptr %_0.i.i65, align 4, !noundef !15
  %_50 = add i32 %_56, %_51
  %_4.i.i76 = icmp ult i64 %_55, %len.i61
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit81", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit67"
  %_4.i.i90 = icmp ult i64 %k, %len.i47
  br i1 %_4.i.i90, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit", label %panic.i.i132.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit81"
  %_0.i.i79 = getelementptr inbounds nuw i32, ptr %_6.i64, i64 %_55
  %_61 = load i32, ptr %_0.i.i79, align 4, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw i32, ptr %_6.i50, i64 %k
  %25 = sub i32 %_50, %_61
  store i32 %25, ptr %_0.i.i93, align 4
  br label %bb40

bb40:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit129", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit"
  %_0.i.i.i28 = icmp ult i64 %spec.select138206, %str.1
  %_0.i1.i.i31 = zext i1 %_0.i.i.i28 to i64
  %spec.select138 = add nuw i64 %spec.select138206, %_0.i1.i.i31
  br i1 %_0.i.i.i28, label %bb20, label %bb13.loopexit

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit101": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit46"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i44, i64 8
  %_6.i98 = load ptr, ptr %26, align 8, !alias.scope !1718, !noalias !1721, !nonnull !15, !noundef !15
  %_0.i.i99 = getelementptr inbounds nuw i32, ptr %_6.i98, i64 %_41
  %_37 = load i32, ptr %_0.i.i99, align 4, !noundef !15
  %_46 = add nuw nsw i64 %iter2.sroa.0.0205, 1
  %_4.i.i103 = icmp samesign ult i64 %_46, %len.i40
  br i1 %_4.i.i103, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit108", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit108": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit101"
  %_0.i.i106 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i43, i64 %_46
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i106, i64 16
  %len.i109 = load i64, ptr %27, align 8, !alias.scope !1728, !noalias !1731, !noundef !15
  %_4.i.i110 = icmp ult i64 %k, %len.i109
  br i1 %_4.i.i110, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit115", label %panic.i.i132.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit115": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit108"
  %_4.i.i124 = icmp ult i64 %k, %len.i95
  br i1 %_4.i.i124, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit129", label %panic.i.i132.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit129": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit115"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i106, i64 8
  %_6.i112 = load ptr, ptr %28, align 8, !alias.scope !1728, !noalias !1731, !nonnull !15, !noundef !15
  %_0.i.i113 = getelementptr inbounds nuw i32, ptr %_6.i112, i64 %k
  %_42 = load i32, ptr %_0.i.i113, align 4, !noundef !15
  %_0.i.i127 = getelementptr inbounds nuw i32, ptr %_6.i98, i64 %k
  %_36 = add i32 %_37, 1
  %29 = add i32 %_36, %_42
  store i32 %29, ptr %_0.i.i127, align 4
  br label %bb40

panic.i.i132.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit", %bb7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit115", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit108", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit101", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit46", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit67", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit60", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit53", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit39", %bb24, %bb31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit", %bb16
  %30 = phi i64 [ 0, %bb16 ], [ %_71, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit115" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit108" ], [ %_46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit101" ], [ %_41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit46" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit81" ], [ %_55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit67" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit60" ], [ %_60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit53" ], [ %_55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit39" ], [ %iter2.sroa.0.0205, %bb24 ], [ %iter2.sroa.0.0205, %bb31 ], [ %iter.sroa.0.0201, %bb7 ], [ %iter.sroa.0.0201, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit" ]
  %31 = phi i64 [ %len.i13, %bb16 ], [ %len.i19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit" ], [ %len.i95, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit115" ], [ %len.i109, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit108" ], [ %len.i40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit101" ], [ %len.i95, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit46" ], [ %len.i47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit81" ], [ %len.i61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit67" ], [ %len.i61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit60" ], [ %len.i33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit53" ], [ %len.i47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit39" ], [ %len.i40, %bb24 ], [ %len.i33, %bb31 ], [ %len.i130, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit" ], [ %len.i, %bb7 ]
  %32 = phi ptr [ @alloc_7757919005380415a2994239c5bfd096, %bb16 ], [ @alloc_46ee436f46c976fc67b0a4d604ef43d1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit" ], [ @alloc_188a750156dd86e4a285feb4f91107b6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit115" ], [ @alloc_6add4e67cc9042309409da8fa897e2ef, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit108" ], [ @alloc_05e09818b122da61b4322d659cc98e74, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit101" ], [ @alloc_4011691a40a02c8eaa2d09fea6394e4a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit46" ], [ @alloc_5f0e2680551a901c69138b3cf21798c7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit81" ], [ @alloc_484dcb8734abbbe5e0630690bd32d651, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit67" ], [ @alloc_09b67fd1095f97e7140e9fb1145c97db, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit60" ], [ @alloc_bc26929688ac6821c503b2c406ead434, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit53" ], [ @alloc_45ab111b335fee41c27fc106ffc2a4bf, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit39" ], [ @alloc_fdd581b7752f899207845c0846b8f4ad, %bb24 ], [ @alloc_ddbaab3758c76bbf52bb001c18fac71e, %bb31 ], [ @alloc_ce51f17b63fd60f37175c288e59c261c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit" ], [ @alloc_39d060508fad4987e6ae1b4d84e4d73a, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %30, i64 noundef range(i64 0, 2305843009213693952) %31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %32) #27
          to label %panic.i.i132.cont unwind label %cleanup

panic.i.i132.cont:                                ; preds = %panic.i.i132.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit136": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit"
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i133 = load ptr, ptr %33, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i134 = getelementptr inbounds nuw i32, ptr %_6.i133, i64 %iter.sroa.0.0201
  store i32 1, ptr %_0.i.i134, align 4
  %_0.i.i.i = icmp ult i64 %spec.select202, %str.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select202, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb13.preheader

terminate:                                        ; preds = %cleanup
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb45:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
