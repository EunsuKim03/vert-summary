define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_75 = alloca [16 x i8], align 8
  %_71 = alloca [16 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %_40 = alloca [16 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_5 = add i64 %str.1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1712
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1712
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1065, !noalias !1712, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1066, !noalias !1712, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit, !prof !1067

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1712
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30, !noalias !1712
  unreachable

_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1712, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1712
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1712
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1712
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1712
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdcbdf7bab652001aE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %_16 = add i64 %str.1, 1
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_7.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %7 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_44, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_71, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %_75, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i498 = icmp eq i64 %str.1, 0
  br i1 %_0.i.not.i.i498, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit
  %.not = icmp eq i64 %str.1, 1
  %iter.sroa.7.1504 = zext i1 %.not to i8
  %_0.i3.i.i499.not = icmp eq i64 %str.1, 1
  %iter.sroa.0.1503 = select i1 %_0.i3.i.i499.not, i64 1, i64 2
  br label %bb9

cleanup:                                          ; preds = %panic.i.i168.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #32
          to label %bb67 unwind label %terminate

bb6.loopexit:                                     ; preds = %bb62, %bb9
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1506 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1505, %str.1
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1505, %str.1
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select174 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1505, %spec.select174
  %14 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %14, i8 %iter.sroa.7.1506, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1505
  br i1 %or.cond, label %bb10, label %bb9

bb9:                                              ; preds = %bb9.lr.ph, %bb6.loopexit
  %_0.sroa.3.0.i.i507 = phi i64 [ 1, %bb9.lr.ph ], [ %_0.sroa.3.0.i.i, %bb6.loopexit ]
  %iter.sroa.7.1506 = phi i8 [ %iter.sroa.7.1504, %bb9.lr.ph ], [ %iter.sroa.7.1, %bb6.loopexit ]
  %iter.sroa.0.1505 = phi i64 [ %iter.sroa.0.1503, %bb9.lr.ph ], [ %iter.sroa.0.1, %bb6.loopexit ]
  %_15 = sub i64 %_16, %_0.sroa.3.0.i.i507
  %_0.i.i.i285.not = icmp eq i64 %_16, %_0.sroa.3.0.i.i507
  br i1 %_0.i.i.i285.not, label %bb6.loopexit, label %bb14.lr.ph

bb14.lr.ph:                                       ; preds = %bb9
  %_23 = add i64 %_0.sroa.3.0.i.i507, -1
  %_24 = icmp eq i64 %_0.sroa.3.0.i.i507, 1
  %.not508 = icmp eq i64 %_23, 2
  %iter2.sroa.7.1494 = zext i1 %.not508 to i8
  br label %bb14

bb10:                                             ; preds = %bb6.loopexit, %_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %15, align 8, !alias.scope !1713, !noalias !1716, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i168.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit": ; preds = %bb10
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %16, align 8, !alias.scope !1713, !noalias !1716, !nonnull !15, !noundef !15
  %_98 = add i64 %str.1, -1
  %17 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i6 = load i64, ptr %17, align 8, !alias.scope !1718, !noalias !1721, !noundef !15
  %_4.i.i7 = icmp ult i64 %_98, %len.i6
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit"
  %18 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i9 = load ptr, ptr %18, align 8, !alias.scope !1718, !noalias !1721, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i9, i64 %_98
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb14:                                             ; preds = %bb14.lr.ph, %bb62
  %spec.select288 = phi i64 [ 1, %bb14.lr.ph ], [ %spec.select, %bb62 ]
  %iter1.sroa.0.0287 = phi i64 [ 0, %bb14.lr.ph ], [ %spec.select288, %bb62 ]
  %j = add i64 %_23, %iter1.sroa.0.0287
  br i1 %_24, label %bb16, label %bb19

bb19:                                             ; preds = %bb14
  %_32 = add nuw i64 %iter1.sroa.0.0287, 1
  %len.i16 = load i64, ptr %5, align 8, !alias.scope !1723, !noalias !1726, !noundef !15
  %_4.i.i17 = icmp ult i64 %_32, %len.i16
  br i1 %_4.i.i17, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit22", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit22": ; preds = %bb19
  %_6.i19 = load ptr, ptr %6, align 8, !alias.scope !1723, !noalias !1726, !nonnull !15, !noundef !15
  %_0.i.i20 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i19, i64 %_32
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i20, i64 16
  %len.i29 = load i64, ptr %19, align 8, !alias.scope !1728, !noalias !1731, !noundef !15
  %_4.i.i30 = icmp ult i64 %j, %len.i29
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit35", label %panic.i.i168.invoke

bb16:                                             ; preds = %bb14
  %len.i23 = load i64, ptr %11, align 8, !alias.scope !1733, !noalias !1736, !noundef !15
  %_4.i.i24 = icmp ult i64 %iter1.sroa.0.0287, %len.i23
  br i1 %_4.i.i24, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit", label %panic.i.i168.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit": ; preds = %bb16
  %_6.i26 = load ptr, ptr %12, align 8, !alias.scope !1733, !noalias !1736, !nonnull !15, !noundef !15
  %_0.i.i27 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i26, i64 %iter1.sroa.0.0287
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i27, i64 16
  %len.i166 = load i64, ptr %20, align 8, !alias.scope !1738, !noalias !1741, !noundef !15
  %_4.i.i167 = icmp ult i64 %j, %len.i166
  br i1 %_4.i.i167, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit172", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit22"
  %_0.i.i40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i19, i64 %iter1.sroa.0.0287
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i40, i64 16
  %len.i43 = load i64, ptr %21, align 8, !alias.scope !1743, !noalias !1746, !noundef !15
  %_4.i.i44 = icmp ult i64 %j, %len.i43
  br i1 %_4.i.i44, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit", label %panic.i.i168.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit35"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i20, i64 8
  %_6.i32 = load ptr, ptr %22, align 8, !alias.scope !1728, !noalias !1731, !nonnull !15, !noundef !15
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %j
  %_28 = load i32, ptr %_0.i.i33, align 4, !noundef !15
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i40, i64 8
  %_6.i46 = load ptr, ptr %23, align 8, !alias.scope !1743, !noalias !1746, !nonnull !15, !noundef !15
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i46, i64 %j
  %24 = add i32 %_28, 1
  store i32 %24, ptr %_0.i.i47, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  store ptr %str.0, ptr %_40, align 8
  store ptr %_7.i, ptr %7, align 8
; call core::iter::traits::iterator::Iterator::nth
  %25 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr noalias noundef align 8 dereferenceable(16) %_40, i64 noundef %iter1.sroa.0.0287)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_44)
  store ptr %str.0, ptr %_44, align 8
  store ptr %_7.i, ptr %8, align 8
; call core::iter::traits::iterator::Iterator::nth
  %26 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr noalias noundef align 8 dereferenceable(16) %_44, i64 noundef %_32)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %26, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_44)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb29, label %bb38

bb29:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit"
  %_51 = add i64 %iter1.sroa.0.0287, 2
  %len.i50 = load i64, ptr %5, align 8, !alias.scope !1748, !noalias !1751, !noundef !15
  %_4.i.i51 = icmp ult i64 %_51, %len.i50
  br i1 %_4.i.i51, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit56", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit56": ; preds = %bb29
  %_6.i53 = load ptr, ptr %6, align 8, !alias.scope !1748, !noalias !1751, !nonnull !15, !noundef !15
  %_0.i.i54 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i53, i64 %_51
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i54, i64 16
  %len.i57 = load i64, ptr %27, align 8, !alias.scope !1753, !noalias !1756, !noundef !15
  %_4.i.i58 = icmp ult i64 %j, %len.i57
  br i1 %_4.i.i58, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit63", label %panic.i.i168.invoke

bb38:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit77"
  %_61 = add i64 %iter1.sroa.0.0287, 2
  %_0.i.not.i.i97488 = icmp ugt i64 %_61, %j
  br i1 %_0.i.not.i.i97488, label %bb62, label %bb43.lr.ph

bb43.lr.ph:                                       ; preds = %bb38
  %_0.i3.i.i99489 = icmp ult i64 %_61, %j
  %spec.select176492 = zext i1 %_0.i3.i.i99489 to i64
  %iter2.sroa.0.1493 = add nuw i64 %_61, %spec.select176492
  br label %bb43

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit63": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit56"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i54, i64 8
  %_6.i60 = load ptr, ptr %28, align 8, !alias.scope !1753, !noalias !1756, !nonnull !15, !noundef !15
  %_0.i.i61 = getelementptr inbounds nuw i32, ptr %_6.i60, i64 %j
  %_47 = load i32, ptr %_0.i.i61, align 4, !noundef !15
  %_46 = add i32 %_47, 1
  %_4.i.i65 = icmp ult i64 %iter1.sroa.0.0287, %len.i50
  br i1 %_4.i.i65, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit70", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit70": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit63"
  %_0.i.i68 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i53, i64 %iter1.sroa.0.0287
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i68, i64 16
  %len.i71 = load i64, ptr %29, align 8, !alias.scope !1758, !noalias !1761, !noundef !15
  %_4.i.i72 = icmp ult i64 %j, %len.i71
  br i1 %_4.i.i72, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit77", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit77": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit70"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i68, i64 8
  %_6.i74 = load ptr, ptr %30, align 8, !alias.scope !1758, !noalias !1761, !nonnull !15, !noundef !15
  %_0.i.i75 = getelementptr inbounds nuw i32, ptr %_6.i74, i64 %j
  %_52 = load i32, ptr %_0.i.i75, align 4, !noundef !15
  %x.y.i = call noundef i32 @llvm.smin.i32(i32 %_46, i32 %_52)
  store i32 %x.y.i, ptr %_0.i.i75, align 4
  br label %bb38

bb43:                                             ; preds = %bb43.lr.ph, %bb61
  %_0.sroa.3.0.i.i101497 = phi i64 [ %_61, %bb43.lr.ph ], [ %_0.sroa.3.0.i.i101, %bb61 ]
  %iter2.sroa.7.1496 = phi i8 [ %iter2.sroa.7.1494, %bb43.lr.ph ], [ %iter2.sroa.7.1, %bb61 ]
  %iter2.sroa.0.1495 = phi i64 [ %iter2.sroa.0.1493, %bb43.lr.ph ], [ %iter2.sroa.0.1, %bb61 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_71)
  store ptr %str.0, ptr %_71, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %31 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr noalias noundef align 8 dereferenceable(16) %_71, i64 noundef %iter1.sroa.0.0287)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_75)
  store ptr %str.0, ptr %_75, align 8
  store ptr %_7.i, ptr %10, align 8
; call core::iter::traits::iterator::Iterator::nth
  %32 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr noalias noundef align 8 dereferenceable(16) %_75, i64 noundef %_0.sroa.3.0.i.i101497)
  %_0.sroa.0.0.shrunk.i108 = icmp eq i32 %32, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_75)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_71)
  br i1 %_0.sroa.0.0.shrunk.i108, label %bb50, label %bb61

bb62:                                             ; preds = %bb61, %bb38, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit172"
  %_0.i.i.i = icmp ult i64 %spec.select288, %_15
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select288, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb14, label %bb6.loopexit

bb50:                                             ; preds = %bb43
  %len.i109 = load i64, ptr %5, align 8, !alias.scope !1763, !noalias !1766, !noundef !15
  %_4.i.i110 = icmp ult i64 %_32, %len.i109
  br i1 %_4.i.i110, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit115", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit115": ; preds = %bb50
  %_6.i112 = load ptr, ptr %6, align 8, !alias.scope !1763, !noalias !1766, !nonnull !15, !noundef !15
  %_0.i.i113 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i112, i64 %_32
  %_82 = add i64 %_0.sroa.3.0.i.i101497, -1
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i113, i64 16
  %len.i116 = load i64, ptr %33, align 8, !alias.scope !1768, !noalias !1771, !noundef !15
  %_4.i.i117 = icmp ult i64 %_82, %len.i116
  br i1 %_4.i.i117, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit122", label %panic.i.i168.invoke

bb61:                                             ; preds = %bb43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit150"
  %_10.i.i92 = trunc nuw i8 %iter2.sroa.7.1496 to i1
  %_0.i.not.i.i97 = icmp ugt i64 %iter2.sroa.0.1495, %j
  %or.cond178 = select i1 %_10.i.i92, i1 true, i1 %_0.i.not.i.i97
  %_0.i3.i.i99 = icmp ult i64 %iter2.sroa.0.1495, %j
  %not.or.cond178 = xor i1 %or.cond178, true
  %narrow396 = select i1 %not.or.cond178, i1 %_0.i3.i.i99, i1 false
  %spec.select176 = zext i1 %narrow396 to i64
  %iter2.sroa.0.1 = add nuw i64 %iter2.sroa.0.1495, %spec.select176
  %34 = select i1 %or.cond178, i1 true, i1 %_0.i3.i.i99
  %iter2.sroa.7.1 = select i1 %34, i8 %iter2.sroa.7.1496, i8 1
  %_0.sroa.3.0.i.i101 = select i1 %_10.i.i92, i64 undef, i64 %iter2.sroa.0.1495
  br i1 %or.cond178, label %bb62, label %bb43

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit122": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit115"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i113, i64 8
  %_6.i119 = load ptr, ptr %35, align 8, !alias.scope !1768, !noalias !1771, !nonnull !15, !noundef !15
  %_0.i.i120 = getelementptr inbounds nuw i32, ptr %_6.i119, i64 %_82
  %_78 = load i32, ptr %_0.i.i120, align 4, !noundef !15
  %_87 = add i64 %_0.sroa.3.0.i.i101497, 1
  %_4.i.i124 = icmp ult i64 %_87, %len.i109
  br i1 %_4.i.i124, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit129", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit129": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit122"
  %_0.i.i127 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i112, i64 %_87
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i127, i64 16
  %len.i130 = load i64, ptr %36, align 8, !alias.scope !1773, !noalias !1776, !noundef !15
  %_4.i.i131 = icmp ult i64 %j, %len.i130
  br i1 %_4.i.i131, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit136", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit136": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit129"
  %_0.i.i141 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i112, i64 %iter1.sroa.0.0287
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i141, i64 16
  %len.i144 = load i64, ptr %37, align 8, !alias.scope !1778, !noalias !1781, !noundef !15
  %_4.i.i145 = icmp ult i64 %j, %len.i144
  br i1 %_4.i.i145, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit150", label %panic.i.i168.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit150": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit136"
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i127, i64 8
  %_6.i133 = load ptr, ptr %38, align 8, !alias.scope !1773, !noalias !1776, !nonnull !15, !noundef !15
  %_0.i.i134 = getelementptr inbounds nuw i32, ptr %_6.i133, i64 %j
  %_83 = load i32, ptr %_0.i.i134, align 4, !noundef !15
  %_77 = add i32 %_83, %_78
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i141, i64 8
  %_6.i147 = load ptr, ptr %39, align 8, !alias.scope !1778, !noalias !1781, !nonnull !15, !noundef !15
  %_0.i.i148 = getelementptr inbounds nuw i32, ptr %_6.i147, i64 %j
  %_88 = load i32, ptr %_0.i.i148, align 4, !noundef !15
  %x.y.i151 = call noundef i32 @llvm.smin.i32(i32 %_77, i32 %_88)
  store i32 %x.y.i151, ptr %_0.i.i148, align 4
  br label %bb61

panic.i.i168.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit70", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit63", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit56", %bb29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit22", %bb16, %bb19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit136", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit129", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit122", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit115", %bb50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit", %bb10
  %40 = phi i64 [ 0, %bb10 ], [ %_98, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit136" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit129" ], [ %_87, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit122" ], [ %_82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit115" ], [ %_32, %bb50 ], [ %j, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit70" ], [ %iter1.sroa.0.0287, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit63" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit56" ], [ %_51, %bb29 ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit35" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit22" ], [ %iter1.sroa.0.0287, %bb16 ], [ %_32, %bb19 ]
  %41 = phi i64 [ %len.i, %bb10 ], [ %len.i6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit" ], [ %len.i144, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit136" ], [ %len.i130, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit129" ], [ %len.i109, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit122" ], [ %len.i116, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit115" ], [ %len.i109, %bb50 ], [ %len.i166, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit" ], [ %len.i71, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit70" ], [ %len.i50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit63" ], [ %len.i57, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit56" ], [ %len.i50, %bb29 ], [ %len.i43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit35" ], [ %len.i29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit22" ], [ %len.i23, %bb16 ], [ %len.i16, %bb19 ]
  %42 = phi ptr [ @alloc_09d9726e9dca430ce46f65da2758a105, %bb10 ], [ @alloc_7ea99a588233bc662b17535c284e45f0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit" ], [ @alloc_fff4570fd7ff5175315c97e5b351fcd3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit136" ], [ @alloc_4a57d5fa5a079133928698c565cbbb0e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit129" ], [ @alloc_9385309506eab2a8069a1d40e6f50c98, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit122" ], [ @alloc_f189b43c609a3f1819a996f646fdb5c5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit115" ], [ @alloc_2003f0eb0222b92afd4a4554ab130f1f, %bb50 ], [ @alloc_eeec4d2fcb69fadc1d546cf32c68ce1f, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit" ], [ @alloc_fca3c7fc7851ae25cd234b6bef1bf372, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit70" ], [ @alloc_6b6a35e40095fb6621f914d9d0e99c37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit63" ], [ @alloc_ecb15a8ed04bd1e7364ee97f47c3d1d9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit56" ], [ @alloc_1b6b3a58d991771f9df5b12abdfe2e86, %bb29 ], [ @alloc_6f099308f8cec46ab1f61428cf774695, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit35" ], [ @alloc_1b6967bd50a3ed3744b9db0d19da8cab, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit22" ], [ @alloc_68fe8210ffca6323f95345929d5156af, %bb16 ], [ @alloc_e0fb644f2835251536e28d976c083ab5, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %40, i64 noundef range(i64 0, 2305843009213693952) %41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %42) #29
          to label %panic.i.i168.cont unwind label %cleanup

panic.i.i168.cont:                                ; preds = %panic.i.i168.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit172": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit"
  %43 = getelementptr inbounds nuw i8, ptr %_0.i.i27, i64 8
  %_6.i169 = load ptr, ptr %43, align 8, !alias.scope !1738, !noalias !1741, !nonnull !15, !noundef !15
  %_0.i.i170 = getelementptr inbounds nuw i32, ptr %_6.i169, i64 %j
  store i32 1, ptr %_0.i.i170, align 4
  br label %bb62

terminate:                                        ; preds = %cleanup
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb67:                                             ; preds = %cleanup
  resume { ptr, i32 } %13
}
