define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_5 = sext i32 %n to i64
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1681
  %_6 = sext i32 %m to i64
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %count, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %_0.i.i.i136 = icmp sgt i32 %m, 0
  br i1 %_0.i.i.i136, label %bb7.lr.ph, label %bb12.preheader

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit
  %5 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %wide.trip.count = zext nneg i32 %m to i64
  br label %bb7

cleanup:                                          ; preds = %panic.i.i101.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %count) #30
          to label %bb38 unwind label %terminate

bb12.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit105", %_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E.exit
  %_0.i.i.i14139 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i14139, label %bb14.lr.ph, label %bb19.preheader

bb14.lr.ph:                                       ; preds = %bb12.preheader
  %8 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %wide.trip.count192 = zext nneg i32 %n to i64
  br label %bb14

bb7:                                              ; preds = %bb7.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit105"
  %indvars.iv184 = phi i64 [ 0, %bb7.lr.ph ], [ %indvars.iv.next185, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit105" ]
  %len.i = load i64, ptr %5, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i10 = icmp ugt i64 %len.i, %indvars.iv184
  br i1 %_4.i.i10, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit", label %panic.i.i101.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %indvars.iv184
  %10 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i99 = load i64, ptr %10, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i100.not = icmp eq i64 %len.i99, 0
  br i1 %_4.i.i100.not, label %panic.i.i101.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit105"

bb19.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit98", %bb12.preheader
  %_0.i.i.i28146 = icmp sgt i32 %m, 1
  br i1 %_0.i.i.i28146, label %bb24.preheader.lr.ph, label %bb22

bb24.preheader.lr.ph:                             ; preds = %bb19.preheader
  %_0.i.i.i47142 = icmp sgt i32 %n, 1
  %spec.select111143 = select i1 %_0.i.i.i47142, i32 2, i32 1
  %11 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %wide.trip.count198 = zext nneg i32 %m to i64
  br label %bb24.preheader

bb14:                                             ; preds = %bb14.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit98"
  %indvars.iv188 = phi i64 [ 0, %bb14.lr.ph ], [ %indvars.iv.next189, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit98" ]
  %len.i18 = load i64, ptr %8, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i19.not = icmp eq i64 %len.i18, 0
  br i1 %_4.i.i19.not, label %panic.i.i101.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit24"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit24": ; preds = %bb14
  %_6.i21 = load ptr, ptr %9, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %13 = getelementptr inbounds nuw i8, ptr %_6.i21, i64 16
  %len.i92 = load i64, ptr %13, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i93 = icmp ugt i64 %len.i92, %indvars.iv188
  br i1 %_4.i.i93, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit98", label %panic.i.i101.invoke

bb19.loopexit:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit", %bb24.preheader
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  %exitcond199.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count198
  br i1 %exitcond199.not, label %bb22, label %bb24.preheader

bb24.preheader:                                   ; preds = %bb24.preheader.lr.ph, %bb19.loopexit
  %indvars.iv194 = phi i64 [ 1, %bb24.preheader.lr.ph ], [ %indvars.iv.next195, %bb19.loopexit ]
  br i1 %_0.i.i.i47142, label %bb26.lr.ph, label %bb19.loopexit

bb26.lr.ph:                                       ; preds = %bb24.preheader
  %_47 = add nsw i64 %indvars.iv194, -1
  br label %bb26

bb22:                                             ; preds = %bb19.loopexit, %bb19.preheader
  %_62 = add i32 %m, -1
  %_61 = sext i32 %_62 to i64
  %14 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %len.i32 = load i64, ptr %14, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i33 = icmp ugt i64 %len.i32, %_61
  br i1 %_4.i.i33, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit": ; preds = %bb22
  %15 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_6.i35 = load ptr, ptr %15, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i35, i64 %_61
  %_64 = add i32 %n, -1
  %_63 = sext i32 %_64 to i64
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i36, i64 16
  %len.i38 = load i64, ptr %16, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i39 = icmp ugt i64 %len.i38, %_63
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit"
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i36, i64 8
  %_6.i41 = load ptr, ptr %17, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i42 = getelementptr inbounds nuw i32, ptr %_6.i41, i64 %_63
  %_0 = load i32, ptr %_0.i.i42, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %count)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count)
  ret i32 %_0

bb26:                                             ; preds = %bb26.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit"
  %spec.select111145 = phi i32 [ %spec.select111143, %bb26.lr.ph ], [ %spec.select111, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit" ]
  %iter3.sroa.0.0144 = phi i32 [ 1, %bb26.lr.ph ], [ %spec.select111145, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit" ]
  %len.i51 = load i64, ptr %11, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i52 = icmp ult i64 %_47, %len.i51
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit57", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit57": ; preds = %bb26
  %_6.i54 = load ptr, ptr %12, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i55 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i54, i64 %_47
  %_49 = zext nneg i32 %iter3.sroa.0.0144 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i55, i64 16
  %len.i58 = load i64, ptr %18, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i59 = icmp ugt i64 %len.i58, %_49
  br i1 %_4.i.i59, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit64", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit64": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit57"
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i55, i64 8
  %_6.i61 = load ptr, ptr %19, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i62 = getelementptr inbounds nuw i32, ptr %_6.i61, i64 %_49
  %_43 = load i32, ptr %_0.i.i62, align 4, !noundef !15
  %_4.i.i66 = icmp ugt i64 %len.i51, %indvars.iv194
  br i1 %_4.i.i66, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit71", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit71": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit64"
  %_0.i.i69 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i54, i64 %indvars.iv194
  %_54 = add nsw i64 %_49, -1
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i69, i64 16
  %len.i72 = load i64, ptr %20, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i73 = icmp ult i64 %_54, %len.i72
  br i1 %_4.i.i73, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit78", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit78": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit71"
  %_4.i.i87 = icmp ugt i64 %len.i72, %_49
  br i1 %_4.i.i87, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit", label %panic.i.i101.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit78"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i69, i64 8
  %_6.i75 = load ptr, ptr %21, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i76 = getelementptr inbounds nuw i32, ptr %_6.i75, i64 %_54
  %_50 = load i32, ptr %_0.i.i76, align 4, !noundef !15
  %_0.i.i90 = getelementptr inbounds nuw i32, ptr %_6.i75, i64 %_49
  %22 = add i32 %_50, %_43
  store i32 %22, ptr %_0.i.i90, align 4
  %_0.i.i.i47 = icmp slt i32 %spec.select111145, %n
  %23 = zext i1 %_0.i.i.i47 to i32
  %spec.select111 = add nuw nsw i32 %spec.select111145, %23
  br i1 %_0.i.i.i47, label %bb26, label %bb19.loopexit

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit98": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit24"
  %24 = getelementptr inbounds nuw i8, ptr %_6.i21, i64 8
  %_6.i95 = load ptr, ptr %24, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i96 = getelementptr inbounds nuw i32, ptr %_6.i95, i64 %indvars.iv188
  store i32 1, ptr %_0.i.i96, align 4
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1
  %exitcond193.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count192
  br i1 %exitcond193.not, label %bb19.preheader, label %bb14

panic.i.i101.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit", %bb7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit24", %bb14, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit78", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit71", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit64", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit57", %bb26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit", %bb22
  %25 = phi i64 [ %_61, %bb22 ], [ %_63, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit" ], [ %_49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit78" ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit71" ], [ %indvars.iv194, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit64" ], [ %_49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit57" ], [ %_47, %bb26 ], [ %indvars.iv188, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit24" ], [ 0, %bb14 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit" ], [ %indvars.iv184, %bb7 ]
  %26 = phi i64 [ %len.i32, %bb22 ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit" ], [ %len.i72, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit78" ], [ %len.i72, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit71" ], [ %len.i51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit64" ], [ %len.i58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit57" ], [ %len.i51, %bb26 ], [ %len.i92, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit24" ], [ %len.i18, %bb14 ], [ %len.i99, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit" ], [ %len.i, %bb7 ]
  %27 = phi ptr [ @alloc_6ab99df21ce01782f0ee6016ad673e76, %bb22 ], [ @alloc_da2511f4b4269b4a7fd5cfca5535e9f4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit" ], [ @alloc_cf9c4a5d74661590b1570b557fdfa7d0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit78" ], [ @alloc_b94ad5197c47ec9dc4c9a3b2fa2dbbd0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit71" ], [ @alloc_75dc6024975f496abb85872b86361329, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E.exit64" ], [ @alloc_d0f0326656689df9233da8ab90025f95, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E.exit57" ], [ @alloc_43974869791014330758c959e8d8e0c6, %bb26 ], [ @alloc_2c913550c49240baee728c30af18bb97, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit24" ], [ @alloc_9fc7a9d98fb21370db2478d27f1b49de, %bb14 ], [ @alloc_ee513b290a65379b0a0d9252511305b1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit" ], [ @alloc_d0a5002dff78d74011b3f5713d56c529, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %25, i64 noundef range(i64 0, 2305843009213693952) %26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %27) #27
          to label %panic.i.i101.cont unwind label %cleanup

panic.i.i101.cont:                                ; preds = %panic.i.i101.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E.exit105": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E.exit"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i102 = load ptr, ptr %28, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  store i32 1, ptr %_6.i102, align 4
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count
  br i1 %exitcond.not, label %bb12.preheader, label %bb7

terminate:                                        ; preds = %cleanup
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb38:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
