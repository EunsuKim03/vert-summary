define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef 10, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h36a737888e5f1e6cE.exit.i.i", !prof !1036

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #28, !noalias !1681
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h36a737888e5f1e6cE.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp samesign ugt i64 %err.0.i.i.i, 9
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
  store i32 1, ptr %this.1.i.i.i, align 4, !noalias !1681
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 4
  store i32 1, ptr %_15.i.i.i, align 4, !noalias !1681
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 8
  store i32 1, ptr %_15.i.i.i.1, align 4, !noalias !1681
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 12
  store i32 1, ptr %_15.i.i.i.2, align 4, !noalias !1681
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 16
  store i32 1, ptr %_15.i.i.i.3, align 4, !noalias !1681
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 20
  store i32 1, ptr %_15.i.i.i.4, align 4, !noalias !1681
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 24
  store i32 1, ptr %_15.i.i.i.5, align 4, !noalias !1681
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 28
  store i32 1, ptr %_15.i.i.i.6, align 4, !noalias !1681
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 32
  store i32 1, ptr %_15.i.i.i.7, align 4, !noalias !1681
  %_15.i.i.i.8 = getelementptr inbounds nuw i8, ptr %this.1.i.i.i, i64 36
  store i32 1, ptr %_15.i.i.i.8, align 4, !noalias !1681
  store i64 %err.0.i.i.i, ptr %_3, align 8, !alias.scope !1681
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 10, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %3 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %len.i = load i64, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_6.i = load ptr, ptr %4, align 8, !nonnull !15
  br label %bb5

cleanup:                                          ; preds = %panic.i.i77.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %a) #30
          to label %bb34 unwind label %terminate

bb5:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit81", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h36a737888e5f1e6cE.exit.i.i"
  %iter.sroa.0.0 = phi i32 [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h36a737888e5f1e6cE.exit.i.i" ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit81" ]
  %iter.sroa.7.0 = phi i8 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h36a737888e5f1e6cE.exit.i.i" ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit81" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb5
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %6 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %6
  %spec.select82 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %7 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit": ; preds = %bb2.i.i, %bb5
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb5 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb5 ], [ %spec.select82, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb5 ], [ %7, %bb2.i.i ]
  br i1 %or.cond, label %bb14.preheader, label %bb8

bb14.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit"
  %8 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_0.i.not.i.i13163 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i13163, label %bb17, label %bb20.preheader.lr.ph

bb20.preheader.lr.ph:                             ; preds = %bb14.preheader
  %.not = icmp eq i32 %n, 1
  %iter1.sroa.7.1169 = zext i1 %.not to i8
  %_0.i3.i.i15164.not = icmp eq i32 %n, 1
  %iter1.sroa.0.1168 = select i1 %_0.i3.i.i15164.not, i32 1, i32 2
  br label %bb20.preheader

bb8:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E.exit"
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit", label %panic.i.i77.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit": ; preds = %bb8
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_0.sroa.3.0.i.i
  %10 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i75 = load i64, ptr %10, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i76 = icmp ugt i64 %len.i75, 9
  br i1 %_4.i.i76, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit81", label %panic.i.i77.invoke

bb14.loopexit:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit"
  %_10.i.i8 = trunc nuw i8 %iter1.sroa.7.1172 to i1
  %_0.i.not.i.i13 = icmp sgt i32 %iter1.sroa.0.1171, %n
  %or.cond85 = select i1 %_10.i.i8, i1 true, i1 %_0.i.not.i.i13
  %_0.i3.i.i15 = icmp slt i32 %iter1.sroa.0.1171, %n
  %not.or.cond85 = xor i1 %or.cond85, true
  %narrow = select i1 %not.or.cond85, i1 %_0.i3.i.i15, i1 false
  %spec.select83 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1171, %spec.select83
  %11 = select i1 %or.cond85, i1 true, i1 %_0.i3.i.i15
  %iter1.sroa.7.1 = select i1 %11, i8 %iter1.sroa.7.1172, i8 1
  br i1 %or.cond85, label %bb17, label %bb20.preheader

bb20.preheader:                                   ; preds = %bb20.preheader.lr.ph, %bb14.loopexit
  %iter1.sroa.7.1172 = phi i8 [ %iter1.sroa.7.1169, %bb20.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb14.loopexit ]
  %iter1.sroa.0.1171 = phi i32 [ %iter1.sroa.0.1168, %bb20.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb14.loopexit ]
  %iter1.sroa.0.0170 = phi i32 [ 1, %bb20.preheader.lr.ph ], [ %iter1.sroa.0.1171, %bb14.loopexit ]
  %_36 = add nsw i32 %iter1.sroa.0.0170, -1
  %_35 = sext i32 %_36 to i64
  %_42 = zext nneg i32 %iter1.sroa.0.0170 to i64
  br label %bb22

bb17:                                             ; preds = %bb14.loopexit, %bb14.preheader
  %12 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %len.i21 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i22 = icmp ugt i64 %len.i21, %_5
  br i1 %_4.i.i22, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit": ; preds = %bb17
  %13 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_6.i24 = load ptr, ptr %13, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i25 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i24, i64 %_5
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i25, i64 16
  %len.i27 = load i64, ptr %14, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i28.not = icmp eq i64 %len.i27, 0
  br i1 %_4.i.i28.not, label %panic.i.i77.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit"
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i25, i64 8
  %_6.i30 = load ptr, ptr %15, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0 = load i32, ptr %_6.i30, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %a)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0

bb22:                                             ; preds = %bb20.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit"
  %_0.sroa.3.0.i.i.i108 = phi i32 [ 8, %bb20.preheader ], [ %_0.sroa.3.0.i.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit" ]
  %iter2.sroa.4.1107 = phi i32 [ 8, %bb20.preheader ], [ %iter2.sroa.4.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit" ]
  %len.i34 = load i64, ptr %8, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i35 = icmp ugt i64 %len.i34, %_35
  br i1 %_4.i.i35, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit40", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit40": ; preds = %bb22
  %_6.i37 = load ptr, ptr %9, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i38 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i37, i64 %_35
  %_37 = sext i32 %_0.sroa.3.0.i.i.i108 to i64
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i38, i64 16
  %len.i41 = load i64, ptr %16, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i42 = icmp ugt i64 %len.i41, %_37
  br i1 %_4.i.i42, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit47", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit47": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit40"
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i38, i64 8
  %_6.i44 = load ptr, ptr %17, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i45 = getelementptr inbounds nuw i32, ptr %_6.i44, i64 %_37
  %_31 = load i32, ptr %_0.i.i45, align 4, !noundef !15
  %_4.i.i49 = icmp ugt i64 %len.i34, %_42
  br i1 %_4.i.i49, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit54", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit54": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit47"
  %_0.i.i52 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i37, i64 %_42
  %_44 = add i32 %_0.sroa.3.0.i.i.i108, 1
  %_43 = sext i32 %_44 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 16
  %len.i55 = load i64, ptr %18, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i56 = icmp ugt i64 %len.i55, %_43
  br i1 %_4.i.i56, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit61", label %panic.i.i77.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit61": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit54"
  %_4.i.i70 = icmp ugt i64 %len.i55, %_37
  br i1 %_4.i.i70, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit", label %panic.i.i77.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit61"
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 8
  %_6.i58 = load ptr, ptr %19, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw i32, ptr %_6.i58, i64 %_43
  %_38 = load i32, ptr %_0.i.i59, align 4, !noundef !15
  %_0.i.i73 = getelementptr inbounds nuw i32, ptr %_6.i58, i64 %_37
  %20 = add i32 %_38, %_31
  store i32 %20, ptr %_0.i.i73, align 4
  %_0.i.i.i.i = icmp sgt i32 %iter2.sroa.4.1107, 0
  %21 = add nsw i32 %iter2.sroa.4.1107, -1
  %iter2.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %21, i32 %iter2.sroa.4.1107
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %21, i32 undef
  br i1 %_0.i.i.i.i, label %bb22, label %bb14.loopexit

panic.i.i77.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit", %bb8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit61", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit54", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit47", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit40", %bb22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit", %bb17
  %22 = phi i64 [ %_5, %bb17 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit" ], [ %_37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit61" ], [ %_43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit54" ], [ %_42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit47" ], [ %_37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit40" ], [ %_35, %bb22 ], [ 9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit" ], [ %_0.sroa.3.0.i.i, %bb8 ]
  %23 = phi i64 [ %len.i21, %bb17 ], [ %len.i27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit61" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit54" ], [ %len.i34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit47" ], [ %len.i41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit40" ], [ %len.i34, %bb22 ], [ %len.i75, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit" ], [ %len.i, %bb8 ]
  %24 = phi ptr [ @alloc_9f8a1fa603b38d6f0354cfd7953091ba, %bb17 ], [ @alloc_b2125b75bf9c8525480588f931c77a68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit" ], [ @alloc_4054e15948dd908ee14fccba1754fa77, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit61" ], [ @alloc_69c8473680779265916e759af82e00be, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit54" ], [ @alloc_bbba2d2ca2b7088e16f7cfe8fafd272d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE.exit47" ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E.exit40" ], [ @alloc_a32607dfa100bdc5e1710911146a6a12, %bb22 ], [ @alloc_3313e8fe8ee3acc11cc0fe56aa7f3bd8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit" ], [ @alloc_7162e58a8a7b0533268c046f1d583fd8, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %22, i64 noundef range(i64 0, 2305843009213693952) %23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %24) #27
          to label %panic.i.i77.cont unwind label %cleanup

panic.i.i77.cont:                                 ; preds = %panic.i.i77.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E.exit81": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E.exit"
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i78 = load ptr, ptr %25, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i79 = getelementptr inbounds nuw i8, ptr %_6.i78, i64 36
  store i32 1, ptr %_0.i.i79, align 4
  br label %bb5

terminate:                                        ; preds = %cleanup
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb34:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
