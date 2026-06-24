define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_57 = alloca [16 x i8], align 8
  %_51 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_5 = sext i32 %n to i64
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hbc69f230b30eadf4E.exit, !prof !1067

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1712
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30, !noalias !1712
  unreachable

_ZN5alloc3vec9from_elem17hbc69f230b30eadf4E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1712, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1712
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1712
  %3 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1712
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1712
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h75ae87d13441fcd6E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %_8 = add i32 %n, -1
  %_0.i.i.i181 = icmp sgt i32 %_8, 0
  br i1 %_0.i.i.i181, label %bb7.lr.ph, label %bb23.preheader

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hbc69f230b30eadf4E.exit
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %5 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %wide.trip.count = zext nneg i32 %_8 to i64
  br label %bb7

cleanup:                                          ; preds = %panic.i.i133.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6ebf526846c8aaaaE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #32
          to label %bb65 unwind label %terminate

bb23.preheader:                                   ; preds = %bb21, %_ZN5alloc3vec9from_elem17hbc69f230b30eadf4E.exit
  %_0.i.i.i12191 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i12191, label %bb25.lr.ph, label %bb26

bb25.lr.ph:                                       ; preds = %bb23.preheader
  %_7.i29 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %10 = getelementptr inbounds nuw i8, ptr %_51, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_57, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb25

bb7:                                              ; preds = %bb7.lr.ph, %bb21
  %indvars.iv239 = phi i64 [ 0, %bb7.lr.ph ], [ %indvars.iv.next240, %bb21 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %s.0, ptr %_18, align 8
  store ptr %_7.i, ptr %5, align 8
; call core::iter::traits::iterator::Iterator::nth
  %16 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %indvars.iv239)
  %_0.sroa.0.0.shrunk.i121 = icmp eq i32 %16, 40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  br i1 %_0.sroa.0.0.shrunk.i121, label %bb12, label %bb21

bb23.loopexit:                                    ; preds = %bb28.loopexit, %bb25
  %_0.i.i.i12 = icmp slt i32 %spec.select139194, %n
  %17 = zext i1 %_0.i.i.i12 to i32
  %spec.select139 = add nuw nsw i32 %spec.select139194, %17
  br i1 %_0.i.i.i12, label %bb25, label %bb26

bb25:                                             ; preds = %bb25.lr.ph, %bb23.loopexit
  %spec.select139194 = phi i32 [ 3, %bb25.lr.ph ], [ %spec.select139, %bb23.loopexit ]
  %iter1.sroa.0.0193 = phi i32 [ 2, %bb25.lr.ph ], [ %spec.select139194, %bb23.loopexit ]
  %_40 = sub i32 %n, %iter1.sroa.0.0193
  %_0.i.i.i25188 = icmp sgt i32 %_40, 0
  br i1 %_0.i.i.i25188, label %bb30, label %bb23.loopexit

bb26:                                             ; preds = %bb23.loopexit, %bb23.preheader
  %18 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %18, align 8, !alias.scope !1713, !noalias !1716, !noundef !15
  %_4.i.i16.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i16.not, label %panic.i.i133.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit": ; preds = %bb26
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %19, align 8, !alias.scope !1713, !noalias !1716, !nonnull !15, !noundef !15
  %_101 = sext i32 %_8 to i64
  %20 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i17 = load i64, ptr %20, align 8, !alias.scope !1718, !noalias !1721, !noundef !15
  %_4.i.i18 = icmp ugt i64 %len.i17, %_101
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit"
  %21 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i20 = load ptr, ptr %21, align 8, !alias.scope !1718, !noalias !1721, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_101
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6ebf526846c8aaaaE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb28.loopexit:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit106", %bb46
  %_0.i.i.i25 = icmp slt i32 %spec.select141190, %_40
  %22 = zext i1 %_0.i.i.i25 to i32
  %spec.select141 = add nuw nsw i32 %spec.select141190, %22
  br i1 %_0.i.i.i25, label %bb30, label %bb23.loopexit

bb30:                                             ; preds = %bb25, %bb28.loopexit
  %spec.select141190 = phi i32 [ %spec.select141, %bb28.loopexit ], [ 1, %bb25 ]
  %iter2.sroa.0.0189 = phi i32 [ %spec.select141190, %bb28.loopexit ], [ 0, %bb25 ]
  %j = add nuw i32 %iter2.sroa.0.0189, %iter1.sroa.0.0193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_51)
  store ptr %s.0, ptr %_51, align 8
  store ptr %_7.i29, ptr %10, align 8
  %_52 = zext nneg i32 %iter2.sroa.0.0189 to i64
; call core::iter::traits::iterator::Iterator::nth
  %23 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr noalias noundef align 8 dereferenceable(16) %_51, i64 noundef %_52)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %23, 40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_51)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb35, label %bb46

bb35:                                             ; preds = %bb30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_57)
  store ptr %s.0, ptr %_57, align 8
  store ptr %_7.i29, ptr %11, align 8
  %_58 = sext i32 %j to i64
; call core::iter::traits::iterator::Iterator::nth
  %24 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr noalias noundef align 8 dereferenceable(16) %_57, i64 noundef %_58)
  %_0.sroa.0.0.shrunk.i31 = icmp eq i32 %24, 41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_57)
  br i1 %_0.sroa.0.0.shrunk.i31, label %bb39, label %bb46

bb46:                                             ; preds = %bb35, %bb30, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E.exit"
  %_0.i.i.i61184 = icmp slt i32 %iter2.sroa.0.0189, %j
  br i1 %_0.i.i.i61184, label %bb50.lr.ph, label %bb28.loopexit

bb50.lr.ph:                                       ; preds = %bb46
  %_82 = sext i32 %j to i64
  %25 = add nuw nsw i64 %_52, 1
  %26 = add i32 %spec.select139194, %iter2.sroa.0.0189
  br label %bb50

bb39:                                             ; preds = %bb35
  %_64 = add nuw i32 %iter2.sroa.0.0189, 1
  %_63 = sext i32 %_64 to i64
  %len.i32 = load i64, ptr %12, align 8, !alias.scope !1723, !noalias !1726, !noundef !15
  %_4.i.i33 = icmp ugt i64 %len.i32, %_63
  br i1 %_4.i.i33, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit38", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit38": ; preds = %bb39
  %_6.i35 = load ptr, ptr %13, align 8, !alias.scope !1723, !noalias !1726, !nonnull !15, !noundef !15
  %_0.i.i36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i35, i64 %_63
  %_66 = add i32 %j, -1
  %_65 = sext i32 %_66 to i64
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i36, i64 16
  %len.i39 = load i64, ptr %27, align 8, !alias.scope !1728, !noalias !1731, !noundef !15
  %_4.i.i40 = icmp ugt i64 %len.i39, %_65
  br i1 %_4.i.i40, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit45", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit45": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit38"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i36, i64 8
  %_6.i42 = load ptr, ptr %28, align 8, !alias.scope !1728, !noalias !1731, !nonnull !15, !noundef !15
  %_0.i.i43 = getelementptr inbounds nuw i32, ptr %_6.i42, i64 %_65
  %_59 = load i32, ptr %_0.i.i43, align 4, !noundef !15
  %_4.i.i47 = icmp ugt i64 %len.i32, %_52
  br i1 %_4.i.i47, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit", label %panic.i.i133.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit45"
  %_0.i.i50 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i35, i64 %_52
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 16
  %len.i52 = load i64, ptr %29, align 8, !alias.scope !1733, !noalias !1736, !noundef !15
  %_4.i.i53 = icmp ugt i64 %len.i52, %_58
  br i1 %_4.i.i53, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E.exit", label %panic.i.i133.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 8
  %_6.i55 = load ptr, ptr %30, align 8, !alias.scope !1733, !noalias !1736, !nonnull !15, !noundef !15
  %_0.i.i56 = getelementptr inbounds nuw i32, ptr %_6.i55, i64 %_58
  %31 = add i32 %_59, 2
  store i32 %31, ptr %_0.i.i56, align 4
  br label %bb46

bb50:                                             ; preds = %bb50.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit106"
  %indvars.iv244 = phi i64 [ %_52, %bb50.lr.ph ], [ %indvars.iv.next245, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit106" ]
  %indvars.iv = phi i64 [ %25, %bb50.lr.ph ], [ %indvars.iv.next, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit106" ]
  %len.i65 = load i64, ptr %14, align 8, !alias.scope !1738, !noalias !1741, !noundef !15
  %_4.i.i66 = icmp ugt i64 %len.i65, %_52
  br i1 %_4.i.i66, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit71", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit71": ; preds = %bb50
  %_6.i68 = load ptr, ptr %15, align 8, !alias.scope !1738, !noalias !1741, !nonnull !15, !noundef !15
  %_0.i.i69 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i68, i64 %_52
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i69, i64 16
  %len.i72 = load i64, ptr %32, align 8, !alias.scope !1743, !noalias !1746, !noundef !15
  %_4.i.i73 = icmp ugt i64 %len.i72, %_82
  br i1 %_4.i.i73, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit78", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit78": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit71"
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i69, i64 8
  %_6.i75 = load ptr, ptr %33, align 8, !alias.scope !1743, !noalias !1746, !nonnull !15, !noundef !15
  %_0.i.i76 = getelementptr inbounds nuw i32, ptr %_6.i75, i64 %_82
  %_78 = load i32, ptr %_0.i.i76, align 4, !noundef !15
  %_4.i.i87 = icmp ugt i64 %len.i72, %indvars.iv244
  br i1 %_4.i.i87, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit92", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit92": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit78"
  %_0.i.i90 = getelementptr inbounds nuw i32, ptr %_6.i75, i64 %indvars.iv244
  %_84 = load i32, ptr %_0.i.i90, align 4, !noundef !15
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1
  %_4.i.i94 = icmp ugt i64 %len.i65, %indvars.iv.next245
  br i1 %_4.i.i94, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit99", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit99": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit92"
  %_0.i.i97 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i68, i64 %indvars.iv.next245
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 16
  %len.i100 = load i64, ptr %34, align 8, !alias.scope !1748, !noalias !1751, !noundef !15
  %_4.i.i101 = icmp ugt i64 %len.i100, %_82
  br i1 %_4.i.i101, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit106", label %panic.i.i133.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit106": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit99"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 8
  %_6.i103 = load ptr, ptr %35, align 8, !alias.scope !1748, !noalias !1751, !nonnull !15, !noundef !15
  %_0.i.i104 = getelementptr inbounds nuw i32, ptr %_6.i103, i64 %_82
  %_89 = load i32, ptr %_0.i.i104, align 4, !noundef !15
  %_83 = add i32 %_89, %_84
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %_83, i32 %_78)
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i76, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond248.not = icmp eq i32 %26, %lftr.wideiv
  br i1 %exitcond248.not, label %bb28.loopexit, label %bb50

bb12:                                             ; preds = %bb7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %s.0, ptr %_24, align 8
  store ptr %_7.i, ptr %6, align 8
  %_25 = add nuw nsw i64 %indvars.iv239, 1
; call core::iter::traits::iterator::Iterator::nth
  %36 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %_25)
  %_0.sroa.0.0.shrunk.i123 = icmp eq i32 %36, 41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  br i1 %_0.sroa.0.0.shrunk.i123, label %bb16, label %bb21

bb21:                                             ; preds = %bb12, %bb7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E.exit137"
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count
  br i1 %exitcond.not, label %bb23.preheader, label %bb7

bb16:                                             ; preds = %bb12
  %len.i124 = load i64, ptr %7, align 8, !alias.scope !1753, !noalias !1756, !noundef !15
  %_4.i.i125 = icmp ugt i64 %len.i124, %indvars.iv239
  br i1 %_4.i.i125, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit130", label %panic.i.i133.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit130": ; preds = %bb16
  %_6.i127 = load ptr, ptr %8, align 8, !alias.scope !1753, !noalias !1756, !nonnull !15, !noundef !15
  %_0.i.i128 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i127, i64 %indvars.iv239
  %37 = add nuw nsw i64 %indvars.iv239, 1
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i128, i64 16
  %len.i131 = load i64, ptr %38, align 8, !alias.scope !1758, !noalias !1761, !noundef !15
  %_4.i.i132 = icmp ugt i64 %len.i131, %37
  br i1 %_4.i.i132, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E.exit137", label %panic.i.i133.invoke

panic.i.i133.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit130", %bb16, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit45", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit38", %bb39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit99", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit92", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit78", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit71", %bb50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit", %bb26
  %39 = phi i64 [ 0, %bb26 ], [ %_101, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit" ], [ %_82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit99" ], [ %indvars.iv.next245, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit92" ], [ %indvars.iv244, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit78" ], [ %_82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit71" ], [ %_52, %bb50 ], [ %_58, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit" ], [ %_52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit45" ], [ %_65, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit38" ], [ %_63, %bb39 ], [ %37, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit130" ], [ %indvars.iv239, %bb16 ]
  %40 = phi i64 [ %len.i, %bb26 ], [ %len.i17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit" ], [ %len.i100, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit99" ], [ %len.i65, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit92" ], [ %len.i72, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit78" ], [ %len.i72, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit71" ], [ %len.i65, %bb50 ], [ %len.i52, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit" ], [ %len.i32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit45" ], [ %len.i39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit38" ], [ %len.i32, %bb39 ], [ %len.i131, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit130" ], [ %len.i124, %bb16 ]
  %41 = phi ptr [ @alloc_1e1b4a6c671dec4b5f4887551daa03a6, %bb26 ], [ @alloc_8eca53450ec288f263432e88d812ebcc, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit" ], [ @alloc_ae7bf0ffce10b99e6f84fac49cb6312e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit99" ], [ @alloc_8c5b540016f8cbd25db702c9167b5a9b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit92" ], [ @alloc_9ae9a03d413ca4dca3511fe4bf9b3072, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit78" ], [ @alloc_2fa400b97d5d904a5c45e6f36c78c2ab, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit71" ], [ @alloc_d494a4dec9e8695b9e5f9c63a4729c1c, %bb50 ], [ @alloc_b7ac5b29ea6dd2de7a7bc891df8b58d6, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit" ], [ @alloc_4841e6be75a917392010379b2cb2e625, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E.exit45" ], [ @alloc_fdac7b42e40d41a8c95f01901025d1fc, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E.exit38" ], [ @alloc_78ab7e9ff6bd77fdaae5bb606449e98f, %bb39 ], [ @alloc_b121197f4b79b80fe84c9997be5f199b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit130" ], [ @alloc_c48711e634871e8adc6a6770b8d79381, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %39, i64 noundef range(i64 0, 2305843009213693952) %40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %41) #29
          to label %panic.i.i133.cont unwind label %cleanup

panic.i.i133.cont:                                ; preds = %panic.i.i133.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E.exit137": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E.exit130"
  %42 = getelementptr inbounds nuw i8, ptr %_0.i.i128, i64 8
  %_6.i134 = load ptr, ptr %42, align 8, !alias.scope !1758, !noalias !1761, !nonnull !15, !noundef !15
  %_0.i.i135 = getelementptr inbounds nuw i32, ptr %_6.i134, i64 %37
  store i32 2, ptr %_0.i.i135, align 4
  br label %bb21

terminate:                                        ; preds = %cleanup
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb65:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
