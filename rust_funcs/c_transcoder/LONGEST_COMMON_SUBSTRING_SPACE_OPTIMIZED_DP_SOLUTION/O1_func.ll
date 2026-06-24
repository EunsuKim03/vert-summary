define noundef range(i32 0, -2147483648) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %X, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %Y) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %len = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %X, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1675, !noundef !15
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %Y, i64 16
  %_0.i15 = load i64, ptr %1, align 8, !alias.scope !1678, !noundef !15
  %_2.i16 = icmp ult i64 %_0.i15, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %len)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_9)
  %_10 = add nuw nsw i64 %_0.i15, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1687
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_10, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb42:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %16, %cleanup2 ], [ %2, %cleanup ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y, i64 noundef 4, i64 noundef 4)
          to label %bb43 unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17h4d157bf51e33a144E.exit, %bb14.i.i, %start, %bb11
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb42

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1687, !noundef !15
  %3 = trunc nuw i64 %_17.i.i to i1
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %4, align 8, !range !1035, !noalias !1687, !noundef !15
  %5 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %3, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h4d157bf51e33a144E.exit, !prof !1036

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %5, align 8, !noalias !1687
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28
          to label %.noexc17 unwind label %cleanup

.noexc17:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17h4d157bf51e33a144E.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %5, align 8, !noalias !1687, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1687
  store i64 %err.0.i.i, ptr %_9, align 8, !alias.scope !1687
  %6 = getelementptr inbounds nuw i8, ptr %_9, i64 8
  store ptr %res.1.i.i, ptr %6, align 8, !alias.scope !1687
  %7 = getelementptr inbounds nuw i8, ptr %_9, i64 16
  store i64 %_10, ptr %7, align 8, !alias.scope !1687
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0fa76def2a1c9bfcE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %len, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_9, i64 noundef 2)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %_ZN5alloc3vec9from_elem17h4d157bf51e33a144E.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_9)
  %8 = getelementptr inbounds nuw i8, ptr %X, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %Y, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %len, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %len, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %len, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %len, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %len, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %len, i64 8
  %_0.i3.i.i444 = icmp ne i64 %_0.i, 0
  %spec.select445 = zext i1 %_0.i3.i.i444 to i64
  %not._0.i3.i.i444 = xor i1 %_0.i3.i.i444, true
  %iter.sroa.7.1446 = zext i1 %not._0.i3.i.i444 to i8
  %_0.i3.i.i30437 = icmp ne i64 %_0.i15, 0
  %spec.select113438 = zext i1 %_0.i3.i.i30437 to i64
  %not._0.i3.i.i30437 = xor i1 %_0.i3.i.i30437, true
  %iter1.sroa.7.1439 = zext i1 %not._0.i3.i.i30437 to i8
  br label %bb14.preheader

cleanup2:                                         ; preds = %panic.i.i107.invoke
  %16 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h35fa1469dee8cf96E"(ptr noalias noundef align 8 dereferenceable(24) %len) #30
          to label %bb42 unwind label %terminate

bb14.preheader:                                   ; preds = %bb4, %bb17
  %iter.sroa.7.1451 = phi i8 [ %iter.sroa.7.1446, %bb4 ], [ %iter.sroa.7.1, %bb17 ]
  %iter.sroa.0.1450 = phi i64 [ %spec.select445, %bb4 ], [ %iter.sroa.0.1, %bb17 ]
  %result.sroa.0.0449 = phi i32 [ 0, %bb4 ], [ %result.sroa.0.2, %bb17 ]
  %curr_row.sroa.0.0448 = phi i64 [ 0, %bb4 ], [ %18, %bb17 ]
  %iter.sroa.0.0447 = phi i64 [ 0, %bb4 ], [ %iter.sroa.0.1450, %bb17 ]
  %_25 = icmp eq i64 %iter.sroa.0.0447, 0
  %_35 = add i64 %iter.sroa.0.0447, -1
  %_44 = sub nuw nsw i64 1, %curr_row.sroa.0.0448
  br label %bb16

bb11:                                             ; preds = %bb17
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h35fa1469dee8cf96E"(ptr noalias noundef align 8 dereferenceable(24) %len)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %len)
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %cleanup3

bb43:                                             ; preds = %bb42, %cleanup3
  %.pn.pn = phi { ptr, i32 } [ %17, %cleanup3 ], [ %.pn, %bb42 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X, i64 noundef 4, i64 noundef 4)
          to label %bb44 unwind label %terminate

cleanup3:                                         ; preds = %bb38
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %bb43

bb39:                                             ; preds = %bb38
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X, i64 noundef 4, i64 noundef 4)
  ret i32 %result.sroa.0.2

bb16:                                             ; preds = %bb14.preheader, %bb37
  %_0.sroa.3.0.i.i32443 = phi i64 [ 0, %bb14.preheader ], [ %_0.sroa.3.0.i.i32, %bb37 ]
  %iter1.sroa.7.1442 = phi i8 [ %iter1.sroa.7.1439, %bb14.preheader ], [ %iter1.sroa.7.1, %bb37 ]
  %iter1.sroa.0.1441 = phi i64 [ %spec.select113438, %bb14.preheader ], [ %iter1.sroa.0.1, %bb37 ]
  %result.sroa.0.1440 = phi i32 [ %result.sroa.0.0449, %bb14.preheader ], [ %result.sroa.0.2, %bb37 ]
  %_26 = icmp eq i64 %_0.sroa.3.0.i.i32443, 0
  %or.cond = or i1 %_25, %_26
  br i1 %or.cond, label %bb19, label %bb22

bb17:                                             ; preds = %bb37
  %18 = xor i64 %curr_row.sroa.0.0448, 1
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1451 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1450, %_0.i
  %or.cond115 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1450, %_0.i
  %not.or.cond115 = xor i1 %or.cond115, true
  %narrow = select i1 %not.or.cond115, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1450, %spec.select
  %19 = select i1 %or.cond115, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %19, i8 %iter.sroa.7.1451, i8 1
  br i1 %or.cond115, label %bb11, label %bb14.preheader

bb19:                                             ; preds = %bb16
  %len.i = load i64, ptr %14, align 8, !alias.scope !1688, !noalias !1691, !noundef !15
  %_4.i.i = icmp samesign ult i64 %curr_row.sroa.0.0448, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit", label %panic.i.i107.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit": ; preds = %bb19
  %_6.i = load ptr, ptr %15, align 8, !alias.scope !1688, !noalias !1691, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %curr_row.sroa.0.0448
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i105 = load i64, ptr %20, align 8, !alias.scope !1693, !noalias !1696, !noundef !15
  %_4.i.i106 = icmp ult i64 %_0.sroa.3.0.i.i32443, %len.i105
  br i1 %_4.i.i106, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit111", label %panic.i.i107.invoke

bb22:                                             ; preds = %bb16
  %len.i38 = load i64, ptr %0, align 8, !alias.scope !1698, !noalias !1701, !noundef !15
  %_4.i.i39 = icmp ult i64 %_35, %len.i38
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit", label %panic.i.i107.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit": ; preds = %bb22
  %_39 = add i64 %_0.sroa.3.0.i.i32443, -1
  %len.i44 = load i64, ptr %1, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i45 = icmp ult i64 %_39, %len.i44
  br i1 %_4.i.i45, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit50", label %panic.i.i107.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit"
  %_6.i41 = load ptr, ptr %8, align 8, !alias.scope !1698, !noalias !1701, !nonnull !15, !noundef !15
  %_0.i.i42 = getelementptr inbounds nuw i32, ptr %_6.i41, i64 %_35
  %_32 = load i32, ptr %_0.i.i42, align 4, !range !1708, !noundef !15
  %_6.i47 = load ptr, ptr %9, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i47, i64 %_39
  %_36 = load i32, ptr %_0.i.i48, align 4, !range !1708, !noundef !15
  %_31 = icmp eq i32 %_32, %_36
  br i1 %_31, label %bb25, label %bb33

bb33:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit50"
  %len.i51 = load i64, ptr %10, align 8, !alias.scope !1709, !noalias !1712, !noundef !15
  %_4.i.i52 = icmp samesign ult i64 %curr_row.sroa.0.0448, %len.i51
  br i1 %_4.i.i52, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit57", label %panic.i.i107.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit57": ; preds = %bb33
  %_6.i54 = load ptr, ptr %11, align 8, !alias.scope !1709, !noalias !1712, !nonnull !15, !noundef !15
  %_0.i.i55 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i54, i64 %curr_row.sroa.0.0448
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i55, i64 16
  %len.i64 = load i64, ptr %21, align 8, !alias.scope !1714, !noalias !1717, !noundef !15
  %_4.i.i65 = icmp ult i64 %_0.sroa.3.0.i.i32443, %len.i64
  br i1 %_4.i.i65, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit", label %panic.i.i107.invoke

bb25:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit50"
  %len.i58 = load i64, ptr %12, align 8, !alias.scope !1719, !noalias !1722, !noundef !15
  %_4.i.i59 = icmp samesign ult i64 %_44, %len.i58
  br i1 %_4.i.i59, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit", label %panic.i.i107.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit": ; preds = %bb25
  %_6.i61 = load ptr, ptr %13, align 8, !alias.scope !1719, !noalias !1722, !nonnull !15, !noundef !15
  %_0.i.i62 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i61, i64 %_44
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i62, i64 16
  %len.i70 = load i64, ptr %22, align 8, !alias.scope !1724, !noalias !1727, !noundef !15
  %_4.i.i71 = icmp ult i64 %_39, %len.i70
  br i1 %_4.i.i71, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit", label %panic.i.i107.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit57"
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i55, i64 8
  %_6.i67 = load ptr, ptr %23, align 8, !alias.scope !1714, !noalias !1717, !nonnull !15, !noundef !15
  %_0.i.i68 = getelementptr inbounds nuw i32, ptr %_6.i67, i64 %_0.sroa.3.0.i.i32443
  store i32 0, ptr %_0.i.i68, align 4
  br label %bb37

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i62, i64 8
  %_6.i73 = load ptr, ptr %24, align 8, !alias.scope !1724, !noalias !1727, !nonnull !15, !noundef !15
  %_0.i.i74 = getelementptr inbounds nuw i32, ptr %_6.i73, i64 %_39
  %_40 = load i32, ptr %_0.i.i74, align 4, !noundef !15
  %_4.i.i77 = icmp samesign ult i64 %curr_row.sroa.0.0448, %len.i58
  br i1 %_4.i.i77, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit82", label %panic.i.i107.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit82": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit"
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i61, i64 %curr_row.sroa.0.0448
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i83 = load i64, ptr %25, align 8, !alias.scope !1729, !noalias !1732, !noundef !15
  %_4.i.i84 = icmp ult i64 %_0.sroa.3.0.i.i32443, %len.i83
  br i1 %_4.i.i84, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit89", label %panic.i.i107.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit89": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit82"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i86 = load ptr, ptr %26, align 8, !alias.scope !1729, !noalias !1732, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_0.sroa.3.0.i.i32443
  %27 = add i32 %_40, 1
  store i32 %27, ptr %_0.i.i87, align 4
  %len.i90 = load i64, ptr %12, align 8, !alias.scope !1734, !noalias !1737, !noundef !15
  %_4.i.i91 = icmp samesign ult i64 %curr_row.sroa.0.0448, %len.i90
  br i1 %_4.i.i91, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit96", label %panic.i.i107.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit96": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit89"
  %_6.i93 = load ptr, ptr %13, align 8, !alias.scope !1734, !noalias !1737, !nonnull !15, !noundef !15
  %_0.i.i94 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i93, i64 %curr_row.sroa.0.0448
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i94, i64 16
  %len.i97 = load i64, ptr %28, align 8, !alias.scope !1739, !noalias !1742, !noundef !15
  %_4.i.i98 = icmp ult i64 %_0.sroa.3.0.i.i32443, %len.i97
  br i1 %_4.i.i98, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit103", label %panic.i.i107.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit103": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit96"
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i94, i64 8
  %_6.i100 = load ptr, ptr %29, align 8, !alias.scope !1739, !noalias !1742, !nonnull !15, !noundef !15
  %_0.i.i101 = getelementptr inbounds nuw i32, ptr %_6.i100, i64 %_0.sroa.3.0.i.i32443
  %_51 = load i32, ptr %_0.i.i101, align 4, !noundef !15
  %_0.sroa.0.0.i.i104 = call noundef i32 @llvm.smax.i32(i32 %_51, i32 %result.sroa.0.1440)
  br label %bb37

bb37:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit103", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit111"
  %result.sroa.0.2 = phi i32 [ %result.sroa.0.1440, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit111" ], [ %result.sroa.0.1440, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit" ], [ %_0.sroa.0.0.i.i104, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit103" ]
  %_10.i.i23 = trunc nuw i8 %iter1.sroa.7.1442 to i1
  %_0.i.not.i.i28 = icmp ugt i64 %iter1.sroa.0.1441, %_0.i15
  %or.cond116 = select i1 %_10.i.i23, i1 true, i1 %_0.i.not.i.i28
  %_0.i3.i.i30 = icmp ult i64 %iter1.sroa.0.1441, %_0.i15
  %not.or.cond116 = xor i1 %or.cond116, true
  %narrow327 = select i1 %not.or.cond116, i1 %_0.i3.i.i30, i1 false
  %spec.select113 = zext i1 %narrow327 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1441, %spec.select113
  %30 = select i1 %or.cond116, i1 true, i1 %_0.i3.i.i30
  %iter1.sroa.7.1 = select i1 %30, i8 %iter1.sroa.7.1442, i8 1
  %_0.sroa.3.0.i.i32 = select i1 %_10.i.i23, i64 undef, i64 %iter1.sroa.0.1441
  br i1 %or.cond116, label %bb17, label %bb16

panic.i.i107.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit96", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit89", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit82", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit57", %bb25, %bb33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit", %bb22, %bb19
  %31 = phi i64 [ %curr_row.sroa.0.0448, %bb19 ], [ %_35, %bb22 ], [ %_39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit" ], [ %curr_row.sroa.0.0448, %bb33 ], [ %_44, %bb25 ], [ %_0.sroa.3.0.i.i32443, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit57" ], [ %_39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit" ], [ %curr_row.sroa.0.0448, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit" ], [ %_0.sroa.3.0.i.i32443, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit82" ], [ %curr_row.sroa.0.0448, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit89" ], [ %_0.sroa.3.0.i.i32443, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit96" ], [ %_0.sroa.3.0.i.i32443, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit" ]
  %32 = phi i64 [ %len.i, %bb19 ], [ %len.i38, %bb22 ], [ %len.i44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit" ], [ %len.i51, %bb33 ], [ %len.i58, %bb25 ], [ %len.i64, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit57" ], [ %len.i70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit" ], [ %len.i58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit" ], [ %len.i83, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit82" ], [ %len.i90, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit89" ], [ %len.i97, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit96" ], [ %len.i105, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit" ]
  %33 = phi ptr [ @alloc_09ce889d9328b98e0cb50c2b25c6fd58, %bb19 ], [ @alloc_ee90cd385a793a996b4f12488f2c6f5f, %bb22 ], [ @alloc_577db64b568d16f978893d443cb1a763, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE.exit" ], [ @alloc_509309f5290e8c311c3a53ec0158fa09, %bb33 ], [ @alloc_6b67c9793a08ab13953c33e3b548f137, %bb25 ], [ @alloc_104b0ad324db259d6811ae4c4205831b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit57" ], [ @alloc_a7820674b4dc75777f0d085fc1a160fd, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit" ], [ @alloc_6624f1b308b14116cc11365dcd6de720, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE.exit" ], [ @alloc_2edd0f8ae47cffc1c50dca07b62fb4c7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit82" ], [ @alloc_981730ccf74103bbf71fad159e60d430, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit89" ], [ @alloc_24ec1ed47324100026173cae137aed23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E.exit96" ], [ @alloc_463264553f6ea60623796dd40c414753, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %31, i64 noundef range(i64 0, 2305843009213693952) %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #27
          to label %panic.i.i107.cont unwind label %cleanup2

panic.i.i107.cont:                                ; preds = %panic.i.i107.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE.exit111": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E.exit"
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i108 = load ptr, ptr %34, align 8, !alias.scope !1693, !noalias !1696, !nonnull !15, !noundef !15
  %_0.i.i109 = getelementptr inbounds nuw i32, ptr %_6.i108, i64 %_0.sroa.3.0.i.i32443
  store i32 0, ptr %_0.i.i109, align 4
  br label %bb37

terminate:                                        ; preds = %bb43, %bb42, %cleanup2
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb44:                                             ; preds = %bb43
  resume { ptr, i32 } %.pn.pn
}
