define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i12 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1683, !noundef !15
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1692
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef 10, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1692
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1692, !noundef !15
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1692, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1692
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1692
  unreachable

_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1692, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1692
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1692
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1692
  %5 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 10, ptr %5, align 8, !alias.scope !1692
  %_5 = add nuw nsw i64 %_0.i, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he2383270222322a8E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i12), !noalias !1699
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i12, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit
  %_17.i.i13 = load i64, ptr %_16.i.i12, align 8, !range !1034, !noalias !1699, !noundef !15
  %6 = trunc nuw i64 %_17.i.i13 to i1
  %7 = getelementptr inbounds nuw i8, ptr %_16.i.i12, i64 8
  %err.0.i.i17 = load i64, ptr %7, align 8, !range !1035, !noalias !1699, !noundef !15
  %8 = getelementptr inbounds nuw i8, ptr %_16.i.i12, i64 16
  br i1 %6, label %bb14.i.i16, label %_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit, !prof !1036

bb14.i.i16:                                       ; preds = %.noexc
  %err.1.i.i18 = load i64, ptr %8, align 8, !noalias !1699
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i17, i64 %err.1.i.i18) #28
          to label %.noexc19 unwind label %cleanup

.noexc19:                                         ; preds = %bb14.i.i16
  unreachable

_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit: ; preds = %.noexc
  %res.1.i.i15 = load ptr, ptr %8, align 8, !noalias !1699, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i12), !noalias !1699
  store i64 %err.0.i.i17, ptr %arr, align 8, !alias.scope !1699
  %9 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %res.1.i.i15, ptr %9, align 8, !alias.scope !1699
  %10 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 %_5, ptr %10, align 8, !alias.scope !1699
  %11 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i = load ptr, ptr %11, align 8, !nonnull !15
  %_0.i.not.i.i577 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i577, label %bb16.preheader, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit
  %.not = icmp eq i64 %_0.i, 1
  %iter.sroa.7.1583 = zext i1 %.not to i8
  %_0.i3.i.i578.not = icmp eq i64 %_0.i, 1
  %iter.sroa.0.1582 = select i1 %_0.i3.i.i578.not, i64 1, i64 2
  br label %bb10

bb68:                                             ; preds = %cleanup4, %cleanup
  %.pn = phi { ptr, i32 } [ %12, %cleanup ], [ %13, %cleanup4 ]
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb69 unwind label %terminate

cleanup:                                          ; preds = %bb60, %bb57, %bb14.i.i16, %_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb68

cleanup4:                                         ; preds = %panic.i.i217.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 8)
          to label %bb68 unwind label %terminate

bb16.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit", %_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i27587 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i27587, label %bb54.preheader, label %bb18.lr.ph

bb18.lr.ph:                                       ; preds = %bb16.preheader
  %.not597 = icmp eq i64 %_0.i, 1
  %iter1.sroa.7.1593 = zext i1 %.not597 to i8
  %_0.i3.i.i29588.not = icmp eq i64 %_0.i, 1
  %iter1.sroa.0.1592 = select i1 %_0.i3.i.i29588.not, i64 1, i64 2
  br label %bb18

bb10:                                             ; preds = %bb10.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit"
  %_0.sroa.3.0.i.i586 = phi i64 [ 1, %bb10.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit" ]
  %iter.sroa.7.1585 = phi i8 [ %iter.sroa.7.1583, %bb10.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit" ]
  %iter.sroa.0.1584 = phi i64 [ %iter.sroa.0.1582, %bb10.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit" ]
  %_18 = add i64 %_0.sroa.3.0.i.i586, -1
  %_4.i.i = icmp ult i64 %_18, %_0.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE.exit", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE.exit": ; preds = %bb10
  %len.i215 = load i64, ptr %10, align 8, !alias.scope !1700, !noundef !15
  %_4.i.i216 = icmp ult i64 %_0.sroa.3.0.i.i586, %len.i215
  br i1 %_4.i.i216, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit", label %panic.i.i217.invoke

bb16.loopexit:                                    ; preds = %bb51
  %_10.i.i22 = trunc nuw i8 %iter1.sroa.7.1595 to i1
  %_0.i.not.i.i27 = icmp ugt i64 %iter1.sroa.0.1594, %_0.i
  %or.cond228 = select i1 %_10.i.i22, i1 true, i1 %_0.i.not.i.i27
  %_0.i3.i.i29 = icmp ult i64 %iter1.sroa.0.1594, %_0.i
  %not.or.cond228 = xor i1 %or.cond228, true
  %narrow459 = select i1 %not.or.cond228, i1 %_0.i3.i.i29, i1 false
  %spec.select224 = zext i1 %narrow459 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1594, %spec.select224
  %16 = select i1 %or.cond228, i1 true, i1 %_0.i3.i.i29
  %iter1.sroa.7.1 = select i1 %16, i8 %iter1.sroa.7.1595, i8 1
  %_0.sroa.3.0.i.i31 = select i1 %_10.i.i22, i64 undef, i64 %iter1.sroa.0.1594
  br i1 %or.cond228, label %bb54.preheader, label %bb18

bb54.preheader:                                   ; preds = %bb16.loopexit, %bb16.preheader
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i56 = load i64, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i59 = load ptr, ptr %18, align 8, !nonnull !15
  br label %bb54

bb18:                                             ; preds = %bb18.lr.ph, %bb16.loopexit
  %_0.sroa.3.0.i.i31596 = phi i64 [ 1, %bb18.lr.ph ], [ %_0.sroa.3.0.i.i31, %bb16.loopexit ]
  %iter1.sroa.7.1595 = phi i8 [ %iter1.sroa.7.1593, %bb18.lr.ph ], [ %iter1.sroa.7.1, %bb16.loopexit ]
  %iter1.sroa.0.1594 = phi i64 [ %iter1.sroa.0.1592, %bb18.lr.ph ], [ %iter1.sroa.0.1, %bb16.loopexit ]
  %len.i36 = load i64, ptr %14, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i37 = icmp ult i64 %_0.sroa.3.0.i.i31596, %len.i36
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit", label %panic.i.i217.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit": ; preds = %bb18
  %_6.i39 = load ptr, ptr %15, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i39, i64 %_0.sroa.3.0.i.i31596
  %len.i72 = load i64, ptr %10, align 8, !alias.scope !1708, !noalias !1711, !noundef !15
  %_4.i.i73 = icmp ult i64 %_0.sroa.3.0.i.i31596, %len.i72
  br i1 %_4.i.i73, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit", label %panic.i.i217.invoke

bb54:                                             ; preds = %bb54.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit"
  %iter3.sroa.0.0 = phi i64 [ %iter3.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit" ], [ 1, %bb54.preheader ]
  %iter3.sroa.8.0 = phi i8 [ %iter3.sroa.8.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit" ], [ 0, %bb54.preheader ]
  %_10.i.i42 = trunc nuw i8 %iter3.sroa.8.0 to i1
  %_0.i.not.i.i47 = icmp ugt i64 %iter3.sroa.0.0, %_0.i
  %or.cond229 = select i1 %_10.i.i42, i1 true, i1 %_0.i.not.i.i47
  %_0.i3.i.i49 = icmp ult i64 %iter3.sroa.0.0, %_0.i
  %not.or.cond229 = xor i1 %or.cond229, true
  %narrow460 = select i1 %not.or.cond229, i1 %_0.i3.i.i49, i1 false
  %spec.select226 = zext i1 %narrow460 to i64
  %iter3.sroa.0.1 = add nuw i64 %iter3.sroa.0.0, %spec.select226
  %19 = select i1 %or.cond229, i1 true, i1 %_0.i3.i.i49
  %iter3.sroa.8.1 = select i1 %19, i8 %iter3.sroa.8.0, i8 1
  %_0.sroa.3.0.i.i51 = select i1 %_10.i.i42, i64 undef, i64 %iter3.sroa.0.0
  br i1 %or.cond229, label %bb57, label %bb56

bb56:                                             ; preds = %bb54
  %_4.i.i57 = icmp ult i64 %_0.sroa.3.0.i.i51, %len.i56
  br i1 %_4.i.i57, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit": ; preds = %bb56
  %_0.i.i60 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i59, i64 %_0.sroa.3.0.i.i51
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i60, i64 16
  %len.i64 = load i64, ptr %20, align 8, !alias.scope !1713, !noalias !1716, !noundef !15
  %_4.i.i65.not = icmp eq i64 %len.i64, 0
  br i1 %_4.i.i65.not, label %panic.i.i217.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit"

bb57:                                             ; preds = %bb54
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 8)
          to label %bb66 unwind label %cleanup

bb66:                                             ; preds = %bb57, %bb60
  %_0.sroa.0.0 = phi i32 [ 1, %bb60 ], [ 0, %bb57 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i60, i64 8
  %_6.i67 = load ptr, ptr %21, align 8, !alias.scope !1713, !noalias !1716, !nonnull !15, !noundef !15
  %_93 = load i32, ptr %_6.i67, align 4, !noundef !15
  %_92 = icmp eq i32 %_93, 1
  br i1 %_92, label %bb60, label %bb54

bb60:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit"
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 8)
          to label %bb66 unwind label %cleanup

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit"
  %_6.i75 = load ptr, ptr %9, align 8, !alias.scope !1708, !noalias !1711, !nonnull !15, !noundef !15
  %_0.i.i76 = getelementptr inbounds nuw i64, ptr %_6.i75, i64 %_0.sroa.3.0.i.i31596
  %_32 = load i64, ptr %_0.i.i76, align 8, !noundef !15
  %_31 = and i64 %_32, 7
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i40, i64 16
  %len.i78 = load i64, ptr %22, align 8, !alias.scope !1718, !noalias !1721, !noundef !15
  %_4.i.i79 = icmp ult i64 %_31, %len.i78
  br i1 %_4.i.i79, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit", label %panic.i.i217.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit"
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i40, i64 8
  %_6.i81 = load ptr, ptr %23, align 8, !alias.scope !1718, !noalias !1721, !nonnull !15, !noundef !15
  %_0.i.i82 = getelementptr inbounds nuw i32, ptr %_6.i81, i64 %_31
  store i32 1, ptr %_0.i.i82, align 4
  %_46 = add i64 %_0.sroa.3.0.i.i31596, -1
  br label %bb26

bb26:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit", %bb51
  %spec.select341 = phi i64 [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit" ], [ %spec.select, %bb51 ]
  %iter2.sroa.0.0340 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit" ], [ %spec.select341, %bb51 ]
  %len.i89 = load i64, ptr %14, align 8, !alias.scope !1723, !noalias !1726, !noundef !15
  %_4.i.i90 = icmp ult i64 %_46, %len.i89
  br i1 %_4.i.i90, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit95", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit95": ; preds = %bb26
  %_6.i92 = load ptr, ptr %15, align 8, !alias.scope !1723, !noalias !1726, !nonnull !15, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i92, i64 %_46
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i93, i64 16
  %len.i96 = load i64, ptr %24, align 8, !alias.scope !1728, !noalias !1731, !noundef !15
  %_4.i.i97 = icmp ult i64 %iter2.sroa.0.0340, %len.i96
  br i1 %_4.i.i97, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit102", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit102": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit95"
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i93, i64 8
  %_6.i99 = load ptr, ptr %25, align 8, !alias.scope !1728, !noalias !1731, !nonnull !15, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw i32, ptr %_6.i99, i64 %iter2.sroa.0.0340
  %_42 = load i32, ptr %_0.i.i100, align 4, !noundef !15
  %_4.i.i104 = icmp ult i64 %_0.sroa.3.0.i.i31596, %len.i89
  br i1 %_4.i.i104, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit109", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit109": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit102"
  %_0.i.i107 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i92, i64 %_0.sroa.3.0.i.i31596
  %len.i110 = load i64, ptr %10, align 8, !alias.scope !1733, !noalias !1736, !noundef !15
  %_4.i.i111 = icmp ult i64 %_0.sroa.3.0.i.i31596, %len.i110
  br i1 %_4.i.i111, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit116", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit116": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit109"
  %_53 = shl nuw nsw i64 %iter2.sroa.0.0340, 1
  %_6.i113 = load ptr, ptr %9, align 8, !alias.scope !1733, !noalias !1736, !nonnull !15, !noundef !15
  %_0.i.i114 = getelementptr inbounds nuw i64, ptr %_6.i113, i64 %_0.sroa.3.0.i.i31596
  %_54 = load i64, ptr %_0.i.i114, align 8, !noundef !15
  %_52 = add i64 %_54, %_53
  %_51 = and i64 %_52, 7
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i107, i64 16
  %len.i117 = load i64, ptr %26, align 8, !alias.scope !1738, !noalias !1741, !noundef !15
  %_4.i.i118 = icmp ult i64 %_51, %len.i117
  br i1 %_4.i.i118, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit123", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit123": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit116"
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i107, i64 8
  %_6.i120 = load ptr, ptr %27, align 8, !alias.scope !1738, !noalias !1741, !nonnull !15, !noundef !15
  %_0.i.i121 = getelementptr inbounds nuw i32, ptr %_6.i120, i64 %_51
  %_47 = load i32, ptr %_0.i.i121, align 4, !noundef !15
  %_41 = icmp sgt i32 %_42, %_47
  br i1 %_41, label %bb33, label %bb40

bb33:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit123"
  store i32 %_42, ptr %_0.i.i121, align 4
  br label %bb40

bb40:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit123", %bb33
  %len.i131 = load i64, ptr %14, align 8, !alias.scope !1743, !noalias !1746, !noundef !15
  %_4.i.i132 = icmp ult i64 %_46, %len.i131
  br i1 %_4.i.i132, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit137", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit137": ; preds = %bb40
  %_6.i134 = load ptr, ptr %15, align 8, !alias.scope !1743, !noalias !1746, !nonnull !15, !noundef !15
  %_0.i.i135 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i134, i64 %_46
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i135, i64 16
  %len.i166 = load i64, ptr %28, align 8, !alias.scope !1748, !noalias !1751, !noundef !15
  %_4.i.i167 = icmp ult i64 %iter2.sroa.0.0340, %len.i166
  br i1 %_4.i.i167, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit172", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit172": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit137"
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i135, i64 8
  %_6.i169 = load ptr, ptr %29, align 8, !alias.scope !1748, !noalias !1751, !nonnull !15, !noundef !15
  %_0.i.i170 = getelementptr inbounds nuw i32, ptr %_6.i169, i64 %iter2.sroa.0.0340
  %_70 = load i32, ptr %_0.i.i170, align 4, !noundef !15
  %_4.i.i174 = icmp ult i64 %_0.sroa.3.0.i.i31596, %len.i131
  br i1 %_4.i.i174, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit179", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit179": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit172"
  %_0.i.i177 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i134, i64 %_0.sroa.3.0.i.i31596
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i177, i64 16
  %len.i180 = load i64, ptr %30, align 8, !alias.scope !1753, !noalias !1756, !noundef !15
  %_4.i.i181 = icmp ult i64 %iter2.sroa.0.0340, %len.i180
  br i1 %_4.i.i181, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit186", label %panic.i.i217.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit186": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit179"
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i177, i64 8
  %_6.i183 = load ptr, ptr %31, align 8, !alias.scope !1753, !noalias !1756, !nonnull !15, !noundef !15
  %_0.i.i184 = getelementptr inbounds nuw i32, ptr %_6.i183, i64 %iter2.sroa.0.0340
  %_74 = load i32, ptr %_0.i.i184, align 4, !noundef !15
  %_69 = icmp sgt i32 %_70, %_74
  br i1 %_69, label %bb45, label %bb51

bb45:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit186"
  store i32 %_70, ptr %_0.i.i184, align 4
  br label %bb51

bb51:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit186", %bb45
  %_0.i.i.i = icmp ult i64 %spec.select341, 8
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select341, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb26, label %bb16.loopexit

panic.i.i217.invoke:                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE.exit", %bb10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit", %bb18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit179", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit172", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit137", %bb40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit116", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit109", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit102", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit95", %bb26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit", %bb56
  %32 = phi i64 [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit" ], [ %_0.sroa.3.0.i.i51, %bb56 ], [ %iter2.sroa.0.0340, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit179" ], [ %_0.sroa.3.0.i.i31596, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit172" ], [ %iter2.sroa.0.0340, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit137" ], [ %_46, %bb40 ], [ %_51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit116" ], [ %_0.sroa.3.0.i.i31596, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit109" ], [ %_0.sroa.3.0.i.i31596, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit102" ], [ %iter2.sroa.0.0340, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit95" ], [ %_46, %bb26 ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit" ], [ %_0.sroa.3.0.i.i31596, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit" ], [ %_0.sroa.3.0.i.i31596, %bb18 ], [ %_0.sroa.3.0.i.i586, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE.exit" ], [ %_18, %bb10 ]
  %33 = phi i64 [ %len.i64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit" ], [ %len.i56, %bb56 ], [ %len.i180, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit179" ], [ %len.i131, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit172" ], [ %len.i166, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit137" ], [ %len.i131, %bb40 ], [ %len.i117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit116" ], [ %len.i110, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit109" ], [ %len.i89, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit102" ], [ %len.i96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit95" ], [ %len.i89, %bb26 ], [ %len.i78, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit" ], [ %len.i72, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit" ], [ %len.i36, %bb18 ], [ %len.i215, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE.exit" ], [ %_0.i, %bb10 ]
  %34 = phi ptr [ @alloc_0247985fb93dcac774066f58ab497f53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit" ], [ @alloc_68915adc29673af60cd1b7c232cd0c53, %bb56 ], [ @alloc_ecffea89b770956640c1726c41ca734c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit179" ], [ @alloc_d469a434f8457ac5bc7606e842d5efb3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit172" ], [ @alloc_94b87e038c1507b36f8ac030892fac14, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit137" ], [ @alloc_ad5c145452d2443fb24703508e1532bb, %bb40 ], [ @alloc_b40cba54fe857c28368b061b9248cff0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit116" ], [ @alloc_3f9435ad1d1fcc67bfd7365e425a6717, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit109" ], [ @alloc_b866ff4b4051ca0d7f4fbd6594544a5c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit102" ], [ @alloc_e600f6843e939b10d87254da1c0ab437, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit95" ], [ @alloc_afbc525cd8f46a2cfd07f14ac35c3a07, %bb26 ], [ @alloc_c01585be3ddb7e9645f35c751a7dd173, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit" ], [ @alloc_11c2c7745a712df5bf8723ae019f7881, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit" ], [ @alloc_c5ab3d61f63e18c03ee982f52b98d981, %bb18 ], [ @alloc_6d55ab9e636101899d83693fc7d38348, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE.exit" ], [ @alloc_7ebeeaa4972a12ddf9f14e5f75c343ce, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %32, i64 noundef range(i64 0, 2305843009213693952) %33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #27
          to label %panic.i.i217.cont unwind label %cleanup4

panic.i.i217.cont:                                ; preds = %panic.i.i217.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_18
  %_16 = load i32, ptr %_0.i.i, align 4, !range !1758, !noundef !15
  %_6.i218 = load ptr, ptr %9, align 8, !alias.scope !1700, !nonnull !15, !noundef !15
  %_0.i.i219 = getelementptr inbounds nuw i64, ptr %_6.i218, i64 %_0.sroa.3.0.i.i586
  %narrow = add nuw nsw i32 %_16, 208
  %35 = and i32 %narrow, 255
  %36 = zext nneg i32 %35 to i64
  store i64 %36, ptr %_0.i.i219, align 8
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1585 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1584, %_0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1584, %_0.i
  %not.or.cond = xor i1 %or.cond, true
  %narrow458 = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select222 = zext i1 %narrow458 to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1584, %spec.select222
  %37 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %37, i8 %iter.sroa.7.1585, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1584
  br i1 %or.cond, label %bb16.preheader, label %bb10

terminate:                                        ; preds = %cleanup4, %bb68
  %38 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb69:                                             ; preds = %bb68
  resume { ptr, i32 } %.pn
}
