define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %S.0, i64 noundef %S.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %T.0, i64 noundef %T.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_53 = alloca [16 x i8], align 8
  %_48 = alloca [16 x i8], align 8
  %_7 = alloca [24 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %_5 = icmp ugt i64 %T.1, %S.1
  br i1 %_5, label %bb57, label %bb4

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mat)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_7)
  %_8 = add i64 %S.1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1712
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_8, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1712
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1065, !noalias !1712, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1066, !noalias !1712, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit, !prof !1067

bb14.i.i:                                         ; preds = %bb4
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1712
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30, !noalias !1712
  unreachable

_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit: ; preds = %bb4
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1712, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1712
  store i64 %err.0.i.i, ptr %_7, align 8, !alias.scope !1712
  %3 = getelementptr inbounds nuw i8, ptr %_7, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1712
  %4 = getelementptr inbounds nuw i8, ptr %_7, i64 16
  store i64 %_8, ptr %4, align 8, !alias.scope !1712
  %_9 = add i64 %T.1, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %mat, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_7, i64 noundef %_9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_7)
  %5 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_0.i.not.i.i309.not = icmp eq i64 %T.1, 0
  br i1 %_0.i.not.i.i309.not, label %bb18.preheader, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit
  %_0.i3.i.i310.not = icmp eq i64 %T.1, 1
  %iter.sroa.0.1315 = select i1 %_0.i3.i.i310.not, i64 1, i64 2
  %.not = icmp eq i64 %T.1, 1
  %iter.sroa.7.1311 = zext i1 %.not to i8
  br label %bb12

cleanup:                                          ; preds = %panic.i.i150.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %mat) #32
          to label %bb59 unwind label %terminate

bb18.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit154", %_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit
  %8 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_0.i3.i.i17319 = icmp ne i64 %S.1, 0
  %spec.select156320 = zext i1 %_0.i3.i.i17319 to i64
  %not._0.i3.i.i17319 = xor i1 %_0.i3.i.i17319, true
  %iter1.sroa.7.1321 = zext i1 %not._0.i3.i.i17319 to i8
  br label %bb20

bb12:                                             ; preds = %bb12.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit154"
  %_0.sroa.3.0.i.i318 = phi i64 [ 1, %bb12.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit154" ]
  %iter.sroa.0.1317 = phi i64 [ %iter.sroa.0.1315, %bb12.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit154" ]
  %iter.sroa.7.1316 = phi i8 [ %iter.sroa.7.1311, %bb12.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit154" ]
  %len.i = load i64, ptr %5, align 8, !alias.scope !1713, !noalias !1716, !noundef !15
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i318, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit", label %panic.i.i150.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit": ; preds = %bb12
  %_6.i = load ptr, ptr %6, align 8, !alias.scope !1713, !noalias !1716, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_0.sroa.3.0.i.i318
  %10 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i148 = load i64, ptr %10, align 8, !alias.scope !1718, !noalias !1721, !noundef !15
  %_4.i.i149.not = icmp eq i64 %len.i148, 0
  br i1 %_4.i.i149.not, label %panic.i.i150.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit154"

bb26.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit147"
  %_7.i = getelementptr inbounds nuw i8, ptr %T.0, i64 %T.1
  %11 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %_7.i71 = getelementptr inbounds nuw i8, ptr %S.0, i64 %S.1
  %12 = getelementptr inbounds nuw i8, ptr %_53, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_0.i.not.i.i36335 = icmp eq i64 %T.1, 0
  br i1 %_0.i.not.i.i36335, label %bb29, label %bb32.preheader.lr.ph

bb32.preheader.lr.ph:                             ; preds = %bb26.preheader
  %.not345 = icmp eq i64 %T.1, 1
  %iter2.sroa.7.1341 = zext i1 %.not345 to i8
  %_0.i3.i.i38336.not = icmp eq i64 %T.1, 1
  %iter2.sroa.0.1340 = select i1 %_0.i3.i.i38336.not, i64 1, i64 2
  %_0.i.not.i.i62325 = icmp eq i64 %S.1, 0
  %.not346 = icmp eq i64 %S.1, 1
  %iter3.sroa.7.1331 = zext i1 %.not346 to i8
  %_0.i3.i.i64326.not = icmp eq i64 %S.1, 1
  %iter3.sroa.0.1330 = select i1 %_0.i3.i.i64326.not, i64 1, i64 2
  br label %bb32.preheader

bb20:                                             ; preds = %bb18.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit147"
  %_0.sroa.3.0.i.i19324 = phi i64 [ 0, %bb18.preheader ], [ %_0.sroa.3.0.i.i19, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit147" ]
  %iter1.sroa.7.1323 = phi i8 [ %iter1.sroa.7.1321, %bb18.preheader ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit147" ]
  %iter1.sroa.0.1322 = phi i64 [ %spec.select156320, %bb18.preheader ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit147" ]
  %len.i24 = load i64, ptr %8, align 8, !alias.scope !1723, !noalias !1726, !noundef !15
  %_4.i.i25.not = icmp eq i64 %len.i24, 0
  br i1 %_4.i.i25.not, label %panic.i.i150.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit30"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit30": ; preds = %bb20
  %_6.i27 = load ptr, ptr %9, align 8, !alias.scope !1723, !noalias !1726, !nonnull !15, !noundef !15
  %17 = getelementptr inbounds nuw i8, ptr %_6.i27, i64 16
  %len.i141 = load i64, ptr %17, align 8, !alias.scope !1728, !noalias !1731, !noundef !15
  %_4.i.i142 = icmp ult i64 %_0.sroa.3.0.i.i19324, %len.i141
  br i1 %_4.i.i142, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit147", label %panic.i.i150.invoke

bb26.loopexit:                                    ; preds = %bb53, %bb32.preheader
  %_10.i.i31 = trunc nuw i8 %iter2.sroa.7.1343 to i1
  %_0.i.not.i.i36 = icmp ugt i64 %iter2.sroa.0.1342, %T.1
  %or.cond163 = select i1 %_10.i.i31, i1 true, i1 %_0.i.not.i.i36
  %_0.i3.i.i38 = icmp ult i64 %iter2.sroa.0.1342, %T.1
  %not.or.cond163 = xor i1 %or.cond163, true
  %narrow260 = select i1 %not.or.cond163, i1 %_0.i3.i.i38, i1 false
  %spec.select158 = zext i1 %narrow260 to i64
  %iter2.sroa.0.1 = add nuw i64 %iter2.sroa.0.1342, %spec.select158
  %18 = select i1 %or.cond163, i1 true, i1 %_0.i3.i.i38
  %iter2.sroa.7.1 = select i1 %18, i8 %iter2.sroa.7.1343, i8 1
  %_0.sroa.3.0.i.i40 = select i1 %_10.i.i31, i64 undef, i64 %iter2.sroa.0.1342
  br i1 %or.cond163, label %bb29, label %bb32.preheader

bb32.preheader:                                   ; preds = %bb32.preheader.lr.ph, %bb26.loopexit
  %_0.sroa.3.0.i.i40344 = phi i64 [ 1, %bb32.preheader.lr.ph ], [ %_0.sroa.3.0.i.i40, %bb26.loopexit ]
  %iter2.sroa.7.1343 = phi i8 [ %iter2.sroa.7.1341, %bb32.preheader.lr.ph ], [ %iter2.sroa.7.1, %bb26.loopexit ]
  %iter2.sroa.0.1342 = phi i64 [ %iter2.sroa.0.1340, %bb32.preheader.lr.ph ], [ %iter2.sroa.0.1, %bb26.loopexit ]
  %_49 = add i64 %_0.sroa.3.0.i.i40344, -1
  br i1 %_0.i.not.i.i62325, label %bb26.loopexit, label %bb34

bb29:                                             ; preds = %bb26.loopexit, %bb26.preheader
  %19 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %len.i45 = load i64, ptr %19, align 8, !alias.scope !1733, !noalias !1736, !noundef !15
  %_4.i.i46 = icmp ult i64 %T.1, %len.i45
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit", label %panic.i.i150.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit": ; preds = %bb29
  %20 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_6.i48 = load ptr, ptr %20, align 8, !alias.scope !1733, !noalias !1736, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i48, i64 %T.1
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 16
  %len.i51 = load i64, ptr %21, align 8, !alias.scope !1738, !noalias !1741, !noundef !15
  %_4.i.i52 = icmp ult i64 %S.1, %len.i51
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit", label %panic.i.i150.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i49, i64 8
  %_6.i54 = load ptr, ptr %22, align 8, !alias.scope !1738, !noalias !1741, !nonnull !15, !noundef !15
  %_0.i.i55 = getelementptr inbounds nuw i32, ptr %_6.i54, i64 %S.1
  %23 = load i32, ptr %_0.i.i55, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %mat)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mat)
  br label %bb57

bb57:                                             ; preds = %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit"
  %_0.sroa.0.0 = phi i32 [ %23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit" ], [ 0, %start ]
  ret i32 %_0.sroa.0.0

bb34:                                             ; preds = %bb32.preheader, %bb53
  %_0.sroa.3.0.i.i66334 = phi i64 [ %_0.sroa.3.0.i.i66, %bb53 ], [ 1, %bb32.preheader ]
  %iter3.sroa.7.1333 = phi i8 [ %iter3.sroa.7.1, %bb53 ], [ %iter3.sroa.7.1331, %bb32.preheader ]
  %iter3.sroa.0.1332 = phi i64 [ %iter3.sroa.0.1, %bb53 ], [ %iter3.sroa.0.1330, %bb32.preheader ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_48)
  store ptr %T.0, ptr %_48, align 8
  store ptr %_7.i, ptr %11, align 8
; call core::iter::traits::iterator::Iterator::nth
  %24 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr noalias noundef align 8 dereferenceable(16) %_48, i64 noundef %_49)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_53)
  store ptr %S.0, ptr %_53, align 8
  store ptr %_7.i71, ptr %12, align 8
  %_54 = add i64 %_0.sroa.3.0.i.i66334, -1
; call core::iter::traits::iterator::Iterator::nth
  %25 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr noalias noundef align 8 dereferenceable(16) %_53, i64 noundef %_54)
  %_0.sroa.0.0.shrunk.i.i.not = icmp eq i32 %25, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_53)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_48)
  br i1 %_0.sroa.0.0.shrunk.i.i.not, label %bb46, label %bb41

bb46:                                             ; preds = %bb34
  %len.i72 = load i64, ptr %15, align 8, !alias.scope !1743, !noalias !1746, !noundef !15
  %_4.i.i73 = icmp ult i64 %_0.sroa.3.0.i.i40344, %len.i72
  br i1 %_4.i.i73, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit78", label %panic.i.i150.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit78": ; preds = %bb46
  %_6.i75 = load ptr, ptr %16, align 8, !alias.scope !1743, !noalias !1746, !nonnull !15, !noundef !15
  %_0.i.i76 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i75, i64 %_0.sroa.3.0.i.i40344
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i76, i64 16
  %len.i86 = load i64, ptr %26, align 8, !alias.scope !1748, !noalias !1751, !noundef !15
  %_4.i.i87 = icmp ult i64 %_54, %len.i86
  br i1 %_4.i.i87, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit92", label %panic.i.i150.invoke

bb41:                                             ; preds = %bb34
  %len.i79 = load i64, ptr %13, align 8, !alias.scope !1753, !noalias !1756, !noundef !15
  %_4.i.i80 = icmp ult i64 %_0.sroa.3.0.i.i40344, %len.i79
  br i1 %_4.i.i80, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit85", label %panic.i.i150.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit85": ; preds = %bb41
  %_6.i82 = load ptr, ptr %14, align 8, !alias.scope !1753, !noalias !1756, !nonnull !15, !noundef !15
  %_0.i.i83 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i82, i64 %_0.sroa.3.0.i.i40344
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i83, i64 16
  %len.i120 = load i64, ptr %27, align 8, !alias.scope !1758, !noalias !1761, !noundef !15
  %_4.i.i121 = icmp ult i64 %_54, %len.i120
  br i1 %_4.i.i121, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit126", label %panic.i.i150.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit92": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit78"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i76, i64 8
  %_6.i89 = load ptr, ptr %28, align 8, !alias.scope !1748, !noalias !1751, !nonnull !15, !noundef !15
  %_0.i.i90 = getelementptr inbounds nuw i32, ptr %_6.i89, i64 %_54
  %_62 = load i32, ptr %_0.i.i90, align 4, !noundef !15
  %_4.i.i94 = icmp ult i64 %_49, %len.i72
  br i1 %_4.i.i94, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit99", label %panic.i.i150.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit99": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit92"
  %_0.i.i97 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i75, i64 %_49
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 16
  %len.i100 = load i64, ptr %29, align 8, !alias.scope !1763, !noalias !1766, !noundef !15
  %_4.i.i101 = icmp ult i64 %_54, %len.i100
  br i1 %_4.i.i101, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit106", label %panic.i.i150.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit106": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit99"
  %_4.i.i115 = icmp ult i64 %_0.sroa.3.0.i.i66334, %len.i86
  br i1 %_4.i.i115, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit", label %panic.i.i150.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit106"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i97, i64 8
  %_6.i103 = load ptr, ptr %30, align 8, !alias.scope !1763, !noalias !1766, !nonnull !15, !noundef !15
  %_0.i.i104 = getelementptr inbounds nuw i32, ptr %_6.i103, i64 %_54
  %_66 = load i32, ptr %_0.i.i104, align 4, !noundef !15
  %_0.i.i118 = getelementptr inbounds nuw i32, ptr %_6.i89, i64 %_0.sroa.3.0.i.i66334
  %31 = add i32 %_66, %_62
  store i32 %31, ptr %_0.i.i118, align 4
  br label %bb53

bb53:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit140", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit"
  %_10.i.i57 = trunc nuw i8 %iter3.sroa.7.1333 to i1
  %_0.i.not.i.i62 = icmp ugt i64 %iter3.sroa.0.1332, %S.1
  %or.cond164 = select i1 %_10.i.i57, i1 true, i1 %_0.i.not.i.i62
  %_0.i3.i.i64 = icmp ult i64 %iter3.sroa.0.1332, %S.1
  %not.or.cond164 = xor i1 %or.cond164, true
  %narrow261 = select i1 %not.or.cond164, i1 %_0.i3.i.i64, i1 false
  %spec.select160 = zext i1 %narrow261 to i64
  %iter3.sroa.0.1 = add nuw i64 %iter3.sroa.0.1332, %spec.select160
  %32 = select i1 %or.cond164, i1 true, i1 %_0.i3.i.i64
  %iter3.sroa.7.1 = select i1 %32, i8 %iter3.sroa.7.1333, i8 1
  %_0.sroa.3.0.i.i66 = select i1 %_10.i.i57, i64 undef, i64 %iter3.sroa.0.1332
  br i1 %or.cond164, label %bb26.loopexit, label %bb34

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit126": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit85"
  %_4.i.i135 = icmp ult i64 %_0.sroa.3.0.i.i66334, %len.i120
  br i1 %_4.i.i135, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit140", label %panic.i.i150.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit140": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit126"
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i83, i64 8
  %_6.i123 = load ptr, ptr %33, align 8, !alias.scope !1758, !noalias !1761, !nonnull !15, !noundef !15
  %_0.i.i124 = getelementptr inbounds nuw i32, ptr %_6.i123, i64 %_54
  %_55 = load i32, ptr %_0.i.i124, align 4, !noundef !15
  %_0.i.i138 = getelementptr inbounds nuw i32, ptr %_6.i123, i64 %_0.sroa.3.0.i.i66334
  store i32 %_55, ptr %_0.i.i138, align 4
  br label %bb53

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit147": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit30"
  %34 = getelementptr inbounds nuw i8, ptr %_6.i27, i64 8
  %_6.i144 = load ptr, ptr %34, align 8, !alias.scope !1728, !noalias !1731, !nonnull !15, !noundef !15
  %_0.i.i145 = getelementptr inbounds nuw i32, ptr %_6.i144, i64 %_0.sroa.3.0.i.i19324
  store i32 1, ptr %_0.i.i145, align 4
  %_10.i.i10 = trunc nuw i8 %iter1.sroa.7.1323 to i1
  %_0.i.not.i.i15 = icmp ugt i64 %iter1.sroa.0.1322, %S.1
  %or.cond162 = select i1 %_10.i.i10, i1 true, i1 %_0.i.not.i.i15
  %_0.i3.i.i17 = icmp ult i64 %iter1.sroa.0.1322, %S.1
  %not.or.cond162 = xor i1 %or.cond162, true
  %narrow259 = select i1 %not.or.cond162, i1 %_0.i3.i.i17, i1 false
  %spec.select156 = zext i1 %narrow259 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1322, %spec.select156
  %35 = select i1 %or.cond162, i1 true, i1 %_0.i3.i.i17
  %iter1.sroa.7.1 = select i1 %35, i8 %iter1.sroa.7.1323, i8 1
  %_0.sroa.3.0.i.i19 = select i1 %_10.i.i10, i64 undef, i64 %iter1.sroa.0.1322
  br i1 %or.cond162, label %bb26.preheader, label %bb20

panic.i.i150.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit", %bb12, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit30", %bb20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit126", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit85", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit106", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit99", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit92", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit78", %bb41, %bb46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit", %bb29
  %36 = phi i64 [ %T.1, %bb29 ], [ %S.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit" ], [ %_0.sroa.3.0.i.i66334, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit126" ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit85" ], [ %_0.sroa.3.0.i.i66334, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit106" ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit99" ], [ %_49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit92" ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit78" ], [ %_0.sroa.3.0.i.i40344, %bb41 ], [ %_0.sroa.3.0.i.i40344, %bb46 ], [ %_0.sroa.3.0.i.i19324, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit30" ], [ 0, %bb20 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit" ], [ %_0.sroa.3.0.i.i318, %bb12 ]
  %37 = phi i64 [ %len.i45, %bb29 ], [ %len.i51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit" ], [ %len.i120, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit126" ], [ %len.i120, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit85" ], [ %len.i86, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit106" ], [ %len.i100, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit99" ], [ %len.i72, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit92" ], [ %len.i86, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit78" ], [ %len.i79, %bb41 ], [ %len.i72, %bb46 ], [ %len.i141, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit30" ], [ %len.i24, %bb20 ], [ %len.i148, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit" ], [ %len.i, %bb12 ]
  %38 = phi ptr [ @alloc_dbeca339df116ba97f2493a055f85555, %bb29 ], [ @alloc_04674294953e431463b0e626f04068d7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit" ], [ @alloc_df8317cfe2b8e5d493681f9b19e5dd3e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit126" ], [ @alloc_cf3124b6416a13719f41450e195cd192, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit85" ], [ @alloc_47ac06c8c00465b740eb5a3917a1d414, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit106" ], [ @alloc_9201997efb1bb4885b312ad48cf176c1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit99" ], [ @alloc_93abb739713526d59ea81e49c9cc2087, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit92" ], [ @alloc_9b67f796afe6fa84d2d3c396f8648fc9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit78" ], [ @alloc_87f7874e54d9d1937ac7379ed22425dc, %bb41 ], [ @alloc_ea421f44397ac36eec8ddae5d85f8a69, %bb46 ], [ @alloc_a685a6f90158416d8ea2cf46d8015334, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit30" ], [ @alloc_a85f843388eafb43ee3e9ec534da462a, %bb20 ], [ @alloc_13df6837543cf95af1adb046a35438c2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit" ], [ @alloc_fcd2d6e1b70d7f01b5d57430105247e1, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef range(i64 0, 2305843009213693952) %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #29
          to label %panic.i.i150.cont unwind label %cleanup

panic.i.i150.cont:                                ; preds = %panic.i.i150.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit154": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit"
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i151 = load ptr, ptr %39, align 8, !alias.scope !1718, !noalias !1721, !nonnull !15, !noundef !15
  store i32 0, ptr %_6.i151, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1316 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1317, %T.1
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1317, %T.1
  %40 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %40, i8 %iter.sroa.7.1316, i8 1
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select155 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1317, %spec.select155
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1317
  br i1 %or.cond, label %bb18.preheader, label %bb12

terminate:                                        ; preds = %cleanup
  %41 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb59:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
