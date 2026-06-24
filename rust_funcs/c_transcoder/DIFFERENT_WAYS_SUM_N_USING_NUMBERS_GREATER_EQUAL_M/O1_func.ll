define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 2
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h62c74915ba6451f7E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h62c74915ba6451f7E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i72.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit": ; preds = %_ZN5alloc3vec9from_elem17h62c74915ba6451f7E.exit
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_10 = add nsw i64 %_6, 1
  %7 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i4 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i5 = icmp ult i64 %_10, %len.i4
  br i1 %_4.i.i5, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit", label %panic.i.i72.invoke

cleanup:                                          ; preds = %panic.i.i72.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb33 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit"
  %9 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i7 = load ptr, ptr %9, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i7, i64 %_10
  store i32 1, ptr %_0.i.i, align 4
  %_0.i.not.i.i.i199 = icmp sgt i32 %n, %m
  br i1 %_0.i.not.i.i.i199, label %bb12, label %bb15.preheader.lr.ph

bb15.preheader.lr.ph:                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit"
  %.not = icmp eq i32 %n, %m
  %iter.sroa.7.1205 = zext i1 %.not to i8
  %_0.i3.i.i.i200 = icmp slt i32 %n, %m
  %spec.select203 = sext i1 %_0.i3.i.i.i200 to i32
  %iter.sroa.4.1204 = add nsw i32 %m, %spec.select203
  %_0.i.not.i.i190 = icmp slt i32 %n, 0
  %.not209 = icmp eq i32 %n, 0
  %iter1.sroa.7.1195 = zext i1 %.not209 to i8
  %_0.i3.i.i191 = icmp ne i32 %n, 0
  %spec.select78194 = zext i1 %_0.i3.i.i191 to i32
  br label %bb15.preheader

bb8.loopexit:                                     ; preds = %bb28, %bb15.preheader
  %_10.i.i.i = trunc nuw i8 %iter.sroa.7.1207 to i1
  %_0.i.not.i.i.i = icmp sgt i32 %n, %iter.sroa.4.1206
  %or.cond = select i1 %_10.i.i.i, i1 true, i1 %_0.i.not.i.i.i
  %_0.i3.i.i.i = icmp slt i32 %n, %iter.sroa.4.1206
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i.i, i1 false
  %spec.select = sext i1 %narrow to i32
  %iter.sroa.4.1 = add nsw i32 %iter.sroa.4.1206, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1207, i8 1
  %_0.sroa.3.0.i.i.i = select i1 %_10.i.i.i, i32 undef, i32 %iter.sroa.4.1206
  br i1 %or.cond, label %bb12, label %bb15.preheader

bb15.preheader:                                   ; preds = %bb15.preheader.lr.ph, %bb8.loopexit
  %_0.sroa.3.0.i.i.i208 = phi i32 [ %m, %bb15.preheader.lr.ph ], [ %_0.sroa.3.0.i.i.i, %bb8.loopexit ]
  %iter.sroa.7.1207 = phi i8 [ %iter.sroa.7.1205, %bb15.preheader.lr.ph ], [ %iter.sroa.7.1, %bb8.loopexit ]
  %iter.sroa.4.1206 = phi i32 [ %iter.sroa.4.1204, %bb15.preheader.lr.ph ], [ %iter.sroa.4.1, %bb8.loopexit ]
  %_32 = add i32 %_0.sroa.3.0.i.i.i208, 1
  %_31 = sext i32 %_32 to i64
  %_36 = sext i32 %_0.sroa.3.0.i.i.i208 to i64
  br i1 %_0.i.not.i.i190, label %bb8.loopexit, label %bb17

bb12:                                             ; preds = %bb8.loopexit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit"
  %len.i9 = load i64, ptr %5, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i10 = icmp ugt i64 %len.i9, %_6
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit", label %panic.i.i72.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit": ; preds = %bb12
  %_6.i12 = load ptr, ptr %6, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i13 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i12, i64 %_6
  %_50 = sext i32 %m to i64
  %11 = getelementptr inbounds nuw i8, ptr %_0.i.i13, i64 16
  %len.i15 = load i64, ptr %11, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i16 = icmp ugt i64 %len.i15, %_50
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit", label %panic.i.i72.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit"
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i13, i64 8
  %_6.i18 = load ptr, ptr %12, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_50
  %_0 = load i32, ptr %_0.i.i19, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb17:                                             ; preds = %bb15.preheader, %bb28
  %_0.sroa.3.0.i.i198 = phi i32 [ %_0.sroa.3.0.i.i, %bb28 ], [ 0, %bb15.preheader ]
  %iter1.sroa.7.1197 = phi i8 [ %iter1.sroa.7.1, %bb28 ], [ %iter1.sroa.7.1195, %bb15.preheader ]
  %iter1.sroa.0.1196 = phi i32 [ %iter1.sroa.0.1, %bb28 ], [ %spec.select78194, %bb15.preheader ]
  %_30 = sext i32 %_0.sroa.3.0.i.i198 to i64
  %len.i21 = load i64, ptr %5, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i22 = icmp ugt i64 %len.i21, %_30
  br i1 %_4.i.i22, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit27", label %panic.i.i72.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit27": ; preds = %bb17
  %_6.i24 = load ptr, ptr %6, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i25 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i24, i64 %_30
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i25, i64 16
  %len.i28 = load i64, ptr %13, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i29 = icmp ugt i64 %len.i28, %_31
  br i1 %_4.i.i29, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit34", label %panic.i.i72.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit34": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit27"
  %_4.i.i43 = icmp ugt i64 %len.i28, %_36
  br i1 %_4.i.i43, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit48", label %panic.i.i72.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit48": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit34"
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i25, i64 8
  %_6.i31 = load ptr, ptr %14, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i32 = getelementptr inbounds nuw i32, ptr %_6.i31, i64 %_31
  %_26 = load i32, ptr %_0.i.i32, align 4, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw i32, ptr %_6.i31, i64 %_36
  store i32 %_26, ptr %_0.i.i46, align 4
  %_38 = sub i32 %_0.sroa.3.0.i.i198, %_0.sroa.3.0.i.i.i208
  %_37 = icmp sgt i32 %_38, -1
  br i1 %_37, label %bb23, label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit76", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit48"
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.1197 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter1.sroa.0.1196, %n
  %or.cond80 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter1.sroa.0.1196, %n
  %not.or.cond80 = xor i1 %or.cond80, true
  %narrow152 = select i1 %not.or.cond80, i1 %_0.i3.i.i, i1 false
  %spec.select78 = zext i1 %narrow152 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1196, %spec.select78
  %15 = select i1 %or.cond80, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %15, i8 %iter1.sroa.7.1197, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter1.sroa.0.1196
  br i1 %or.cond80, label %bb8.loopexit, label %bb17

bb23:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit48"
  %_43 = zext nneg i32 %_38 to i64
  %len.i49 = load i64, ptr %5, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i50 = icmp ugt i64 %len.i49, %_43
  br i1 %_4.i.i50, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit55", label %panic.i.i72.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit55": ; preds = %bb23
  %_6.i52 = load ptr, ptr %6, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i53 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i52, i64 %_43
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i53, i64 16
  %len.i56 = load i64, ptr %16, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i57 = icmp ugt i64 %len.i56, %_36
  br i1 %_4.i.i57, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit62", label %panic.i.i72.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit62": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit55"
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i53, i64 8
  %_6.i59 = load ptr, ptr %17, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i60 = getelementptr inbounds nuw i32, ptr %_6.i59, i64 %_36
  %_39 = load i32, ptr %_0.i.i60, align 4, !noundef !15
  %_4.i.i64 = icmp ugt i64 %len.i49, %_30
  br i1 %_4.i.i64, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit69", label %panic.i.i72.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit69": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit62"
  %_0.i.i67 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i52, i64 %_30
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 16
  %len.i70 = load i64, ptr %18, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i71 = icmp ugt i64 %len.i70, %_36
  br i1 %_4.i.i71, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit76", label %panic.i.i72.invoke

panic.i.i72.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit69", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit62", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit55", %bb23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit34", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit27", %bb17, %_ZN5alloc3vec9from_elem17h62c74915ba6451f7E.exit, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit", %bb12, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit"
  %19 = phi i64 [ %_10, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit" ], [ %_6, %bb12 ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit" ], [ 0, %_ZN5alloc3vec9from_elem17h62c74915ba6451f7E.exit ], [ %_36, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit69" ], [ %_30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit62" ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit55" ], [ %_43, %bb23 ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit34" ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit27" ], [ %_30, %bb17 ]
  %20 = phi i64 [ %len.i4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit" ], [ %len.i9, %bb12 ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit" ], [ %len.i, %_ZN5alloc3vec9from_elem17h62c74915ba6451f7E.exit ], [ %len.i70, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit69" ], [ %len.i49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit62" ], [ %len.i56, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit55" ], [ %len.i49, %bb23 ], [ %len.i28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit34" ], [ %len.i28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit27" ], [ %len.i21, %bb17 ]
  %21 = phi ptr [ @alloc_3047c8a49d03bede82b13be1059c6684, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit" ], [ @alloc_899a6d1dad514bfd38cf784f0b2727fe, %bb12 ], [ @alloc_f5b75569658e3dc647f70c2032e5b11d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit" ], [ @alloc_d3800dc92986d0901a231ac49ec82c9c, %_ZN5alloc3vec9from_elem17h62c74915ba6451f7E.exit ], [ @alloc_ac87dfab1a8d87b176eee59bd090a14d, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit69" ], [ @alloc_27683dd58367c1e3eafa3248cfe44be7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit62" ], [ @alloc_7bfea066b203884c0e6a152875e7b9ae, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit55" ], [ @alloc_eb71322e40dd904ab89dc2ed72c85cd5, %bb23 ], [ @alloc_ee1795b5e22716350beb9e255a35805b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E.exit34" ], [ @alloc_ca847ccedf8314fd211105e56fce95ca, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E.exit27" ], [ @alloc_fef1e3678b591a82c6978b823554bd52, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483649) %19, i64 noundef range(i64 0, 2305843009213693952) %20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %21) #27
          to label %panic.i.i72.cont unwind label %cleanup

panic.i.i72.cont:                                 ; preds = %panic.i.i72.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE.exit76": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE.exit69"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 8
  %_6.i73 = load ptr, ptr %22, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i74 = getelementptr inbounds nuw i32, ptr %_6.i73, i64 %_36
  %23 = load i32, ptr %_0.i.i74, align 4, !noundef !15
  %24 = add i32 %23, %_39
  store i32 %24, ptr %_0.i.i74, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb33:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
