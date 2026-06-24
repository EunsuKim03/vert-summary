define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_6 = sext i32 %m to i64
  %_5 = add nsw i64 %_6, 1
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hff1cf82933b9e4abE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17hff1cf82933b9e4abE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1681
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i179 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i179, label %bb9, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17hff1cf82933b9e4abE.exit
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.1185 = zext i1 %.not to i8
  %_0.i3.i.i180.not = icmp eq i32 %n, 1
  %iter.sroa.0.1184 = select i1 %_0.i3.i.i180.not, i32 1, i32 2
  %_0.i.not.i.i16170 = icmp slt i32 %m, 0
  %.not189 = icmp eq i32 %m, 0
  %iter1.sroa.7.1175 = zext i1 %.not189 to i8
  %_0.i3.i.i18171 = icmp ne i32 %m, 0
  %spec.select79174 = zext i1 %_0.i3.i.i18171 to i32
  br label %bb12.preheader

cleanup:                                          ; preds = %panic.i.i73.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb33 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb28, %bb12.preheader
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1187 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1186, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1186, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1186, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1187, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1186
  br i1 %or.cond, label %bb9, label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i188 = phi i32 [ 1, %bb12.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1187 = phi i8 [ %iter.sroa.7.1185, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1186 = phi i32 [ %iter.sroa.0.1184, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %_37 = sext i32 %_0.sroa.3.0.i.i188 to i64
  %_36 = add nsw i64 %_37, -1
  %_28 = sext i32 %_0.sroa.3.0.i.i188 to i64
  br i1 %_0.i.not.i.i16170, label %bb5.loopexit, label %bb14

bb9:                                              ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17hff1cf82933b9e4abE.exit
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %11, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, %_8
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit", label %panic.i.i73.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit": ; preds = %bb9
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %12, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_8
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i5 = load i64, ptr %13, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i6 = icmp ugt i64 %len.i5, %_6
  br i1 %_4.i.i6, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit", label %panic.i.i73.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit"
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i8 = load ptr, ptr %14, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i9 = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_6
  %_0 = load i32, ptr %_0.i.i9, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb14:                                             ; preds = %bb12.preheader, %bb28
  %_0.sroa.3.0.i.i20178 = phi i32 [ %_0.sroa.3.0.i.i20, %bb28 ], [ 0, %bb12.preheader ]
  %iter1.sroa.7.1177 = phi i8 [ %iter1.sroa.7.1, %bb28 ], [ %iter1.sroa.7.1175, %bb12.preheader ]
  %iter1.sroa.0.1176 = phi i32 [ %iter1.sroa.0.1, %bb28 ], [ %spec.select79174, %bb12.preheader ]
  %_23 = icmp sgt i32 %_0.sroa.3.0.i.i188, %_0.sroa.3.0.i.i20178
  br i1 %_23, label %bb16, label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE.exit77", %bb14
  %_10.i.i11 = trunc nuw i8 %iter1.sroa.7.1177 to i1
  %_0.i.not.i.i16 = icmp sgt i32 %iter1.sroa.0.1176, %m
  %or.cond81 = select i1 %_10.i.i11, i1 true, i1 %_0.i.not.i.i16
  %_0.i3.i.i18 = icmp slt i32 %iter1.sroa.0.1176, %m
  %not.or.cond81 = xor i1 %or.cond81, true
  %narrow137 = select i1 %not.or.cond81, i1 %_0.i3.i.i18, i1 false
  %spec.select79 = zext i1 %narrow137 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1176, %spec.select79
  %15 = select i1 %or.cond81, i1 true, i1 %_0.i3.i.i18
  %iter1.sroa.7.1 = select i1 %15, i8 %iter1.sroa.7.1177, i8 1
  %_0.sroa.3.0.i.i20 = select i1 %_10.i.i11, i32 undef, i32 %iter1.sroa.0.1176
  br i1 %or.cond81, label %bb5.loopexit, label %bb14

bb16:                                             ; preds = %bb14
  %_24 = icmp eq i32 %_0.sroa.3.0.i.i20178, 0
  br i1 %_24, label %bb17, label %bb20

bb20:                                             ; preds = %bb16
  %_31 = sub i32 %_0.sroa.3.0.i.i188, %_0.sroa.3.0.i.i20178
  %len.i24 = load i64, ptr %5, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i25 = icmp ult i64 %_36, %len.i24
  br i1 %_4.i.i25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit30", label %panic.i.i73.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit30": ; preds = %bb20
  %_6.i27 = load ptr, ptr %6, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i28 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i27, i64 %_36
  %_39 = sext i32 %_0.sroa.3.0.i.i20178 to i64
  %_38 = add nsw i64 %_39, -1
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i28, i64 16
  %len.i37 = load i64, ptr %16, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i38 = icmp ult i64 %_38, %len.i37
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit43", label %panic.i.i73.invoke

bb17:                                             ; preds = %bb16
  %len.i31 = load i64, ptr %7, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i32 = icmp ugt i64 %len.i31, %_28
  br i1 %_4.i.i32, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit", label %panic.i.i73.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit": ; preds = %bb17
  %_6.i34 = load ptr, ptr %8, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i34, i64 %_28
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 16
  %len.i71 = load i64, ptr %17, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i72.not = icmp eq i64 %len.i71, 0
  br i1 %_4.i.i72.not, label %panic.i.i73.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE.exit77"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit43": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit30"
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i28, i64 8
  %_6.i40 = load ptr, ptr %18, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i40, i64 %_38
  %_32 = load i32, ptr %_0.i.i41, align 4, !noundef !15
  %_30 = mul i32 %_32, %_31
  %_4.i.i52 = icmp ugt i64 %len.i37, %_39
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit57", label %panic.i.i73.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit57": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit43"
  %_41 = add i32 %_0.sroa.3.0.i.i20178, 1
  %_0.i.i55 = getelementptr inbounds nuw i32, ptr %_6.i40, i64 %_39
  %_42 = load i32, ptr %_0.i.i55, align 4, !noundef !15
  %_40 = mul i32 %_42, %_41
  %_4.i.i59 = icmp ugt i64 %len.i24, %_37
  br i1 %_4.i.i59, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit64", label %panic.i.i73.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit64": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit57"
  %_0.i.i62 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i27, i64 %_37
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i62, i64 16
  %len.i65 = load i64, ptr %19, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i66 = icmp ugt i64 %len.i65, %_39
  br i1 %_4.i.i66, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE.exit", label %panic.i.i73.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit64"
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i62, i64 8
  %_6.i68 = load ptr, ptr %20, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i69 = getelementptr inbounds nuw i32, ptr %_6.i68, i64 %_39
  %21 = add i32 %_40, %_30
  store i32 %21, ptr %_0.i.i69, align 4
  br label %bb28

panic.i.i73.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit64", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit57", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit43", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit30", %bb17, %bb20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit", %bb9
  %22 = phi i64 [ %_8, %bb9 ], [ %_6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit" ], [ %_39, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit64" ], [ %_37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit57" ], [ %_39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit43" ], [ %_38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit30" ], [ %_28, %bb17 ], [ %_36, %bb20 ]
  %23 = phi i64 [ %len.i, %bb9 ], [ %len.i5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit" ], [ %len.i71, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit" ], [ %len.i65, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit64" ], [ %len.i24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit57" ], [ %len.i37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit43" ], [ %len.i37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit30" ], [ %len.i31, %bb17 ], [ %len.i24, %bb20 ]
  %24 = phi ptr [ @alloc_9e341bcae2b2a0d4e1afa3f21af38f37, %bb9 ], [ @alloc_a48f102b49ad1d25a003f92e7b5b135f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit" ], [ @alloc_19b250928f884c599dd331868a9ddbfa, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit" ], [ @alloc_7f2795566c1d6e4936a1c23d5ef65273, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit64" ], [ @alloc_8b64e3512a65bc36e6ad6aee706edfb8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit57" ], [ @alloc_7056cd7d47966ad5545690f4c4a6ceb7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E.exit43" ], [ @alloc_f510f783cbcdda5c241e9d0fa135be42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E.exit30" ], [ @alloc_2babab26161237876a1efc376758ac82, %bb17 ], [ @alloc_88d3bc3f0a82419924910c23fa33f932, %bb20 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %22, i64 noundef range(i64 0, 2305843009213693952) %23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %24) #27
          to label %panic.i.i73.cont unwind label %cleanup

panic.i.i73.cont:                                 ; preds = %panic.i.i73.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE.exit77": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE.exit"
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 8
  %_6.i74 = load ptr, ptr %25, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  store i32 1, ptr %_6.i74, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb33:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
