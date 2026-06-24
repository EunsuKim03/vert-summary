define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %start_bytes.i.i = alloca [32 x i8], align 1
  %_16.i.i18 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1683, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1692
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef 10, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc15 unwind label %cleanup

bb72:                                             ; preds = %bb71, %cleanup
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb71 ], [ %3, %cleanup ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5fac88eee31658aE.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb72
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %2 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5fac88eee31658aE.exit.i": ; preds = %bb72
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit, %bb14.i.i, %start, %bb67, %bb65
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb72

.noexc15:                                         ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1692, !noundef !15
  %4 = trunc nuw i64 %_17.i.i to i1
  %5 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %5, align 8, !range !1035, !noalias !1692, !noundef !15
  %6 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %4, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit, !prof !1036

bb14.i.i:                                         ; preds = %.noexc15
  %err.1.i.i = load i64, ptr %6, align 8, !noalias !1692
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #29
          to label %.noexc16 unwind label %cleanup

.noexc16:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit: ; preds = %.noexc15
  %res.1.i.i = load ptr, ptr %6, align 8, !noalias !1692, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1692
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1692
  %7 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %7, align 8, !alias.scope !1692
  %8 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 10, ptr %8, align 8, !alias.scope !1692
  %_6 = add nuw i64 %_0.i, 1
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he2383270222322a8E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_6)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %_ZN5alloc3vec9from_elem17hdad675b30dc97c29E.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i18), !noalias !1699
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i18, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc25 unwind label %cleanup4

.noexc25:                                         ; preds = %bb3
  %_17.i.i19 = load i64, ptr %_16.i.i18, align 8, !range !1034, !noalias !1699, !noundef !15
  %9 = trunc nuw i64 %_17.i.i19 to i1
  %10 = getelementptr inbounds nuw i8, ptr %_16.i.i18, i64 8
  %err.0.i.i23 = load i64, ptr %10, align 8, !range !1035, !noalias !1699, !noundef !15
  %11 = getelementptr inbounds nuw i8, ptr %_16.i.i18, i64 16
  br i1 %9, label %bb14.i.i22, label %_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit, !prof !1036

bb14.i.i22:                                       ; preds = %.noexc25
  %err.1.i.i24 = load i64, ptr %11, align 8, !noalias !1699
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i23, i64 %err.1.i.i24) #29
          to label %.noexc26 unwind label %cleanup4

.noexc26:                                         ; preds = %bb14.i.i22
  unreachable

_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit: ; preds = %.noexc25
  %res.1.i.i21 = load ptr, ptr %11, align 8, !noalias !1699, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i18), !noalias !1699
  store i64 %err.0.i.i23, ptr %arr, align 8, !alias.scope !1699
  %12 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %res.1.i.i21, ptr %12, align 8, !alias.scope !1699
  %13 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 %_6, ptr %13, align 8, !alias.scope !1699
  %14 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_92.sroa.34.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 31
  %_92.sroa.33.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 30
  %_92.sroa.32.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 29
  %_92.sroa.31.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 28
  %_92.sroa.30.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 27
  %_92.sroa.29.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 26
  %_92.sroa.28.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 25
  %_92.sroa.27.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 24
  %_92.sroa.26.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 23
  %_92.sroa.25.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 22
  %_92.sroa.24.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 21
  %_92.sroa.23.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 20
  %_92.sroa.22.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 19
  %_92.sroa.21.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 18
  %_92.sroa.20.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 17
  %_92.sroa.19.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 16
  %_92.sroa.18.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 15
  %_92.sroa.17.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 14
  %_92.sroa.16.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 13
  %_92.sroa.15.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 12
  %_92.sroa.14.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 11
  %_92.sroa.13.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 10
  %_92.sroa.12.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 9
  %_92.sroa.11.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 8
  %_92.sroa.10.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 7
  %_92.sroa.9.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 6
  %_92.sroa.8.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 5
  %_92.sroa.7.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 4
  %_92.sroa.6.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 3
  %_92.sroa.5.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 2
  %_92.sroa.4.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 1
  %_0.i.not.i.i591.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i591.not, label %bb19.preheader, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit
  %_0.i3.i.i592.not = icmp eq i64 %_0.i, 1
  %iter.sroa.0.1597 = select i1 %_0.i3.i.i592.not, i64 1, i64 2
  %.not = icmp eq i64 %_0.i, 1
  %iter.sroa.7.1593 = zext i1 %.not to i8
  br label %bb10

bb71:                                             ; preds = %cleanup5, %cleanup4
  %.pn = phi { ptr, i32 } [ %15, %cleanup4 ], [ %16, %cleanup5 ]
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #31
          to label %bb72 unwind label %terminate

cleanup4:                                         ; preds = %bb63, %bb60, %bb14.i.i22, %bb3
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %bb71

cleanup5:                                         ; preds = %panic.i.i233.invoke, %bb2.i
  %16 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 8)
          to label %bb71 unwind label %terminate

bb19.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit", %_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE.exit
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i33601 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i33601, label %bb57.preheader, label %bb21.lr.ph

bb21.lr.ph:                                       ; preds = %bb19.preheader
  %.not611 = icmp eq i64 %_0.i, 1
  %iter1.sroa.7.1607 = zext i1 %.not611 to i8
  %_0.i3.i.i35602.not = icmp eq i64 %_0.i, 1
  %iter1.sroa.0.1606 = select i1 %_0.i3.i.i35602.not, i64 1, i64 2
  br label %bb21

bb10:                                             ; preds = %bb10.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit"
  %_0.sroa.3.0.i.i600 = phi i64 [ 1, %bb10.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit" ]
  %iter.sroa.0.1599 = phi i64 [ %iter.sroa.0.1597, %bb10.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit" ]
  %iter.sroa.7.1598 = phi i8 [ %iter.sroa.7.1593, %bb10.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit" ]
  %_6.i.i = load ptr, ptr %14, align 8, !alias.scope !1700, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1700, !noundef !15
  %_7.i = getelementptr i8, ptr %_6.i.i, i64 %len.i.i
  %_22 = add i64 %_0.sroa.3.0.i.i600, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1705
  %_3.i.i = icmp ugt i64 %_22, 31
  br i1 %_3.i.i, label %bb1.i.i226, label %bb25.i.i

bb19.loopexit:                                    ; preds = %bb54
  %_10.i.i28 = trunc nuw i8 %iter1.sroa.7.1609 to i1
  %_0.i.not.i.i33 = icmp ugt i64 %iter1.sroa.0.1608, %_0.i
  %or.cond246 = select i1 %_10.i.i28, i1 true, i1 %_0.i.not.i.i33
  %_0.i3.i.i35 = icmp ult i64 %iter1.sroa.0.1608, %_0.i
  %not.or.cond246 = xor i1 %or.cond246, true
  %narrow474 = select i1 %not.or.cond246, i1 %_0.i3.i.i35, i1 false
  %spec.select242 = zext i1 %narrow474 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1608, %spec.select242
  %19 = select i1 %or.cond246, i1 true, i1 %_0.i3.i.i35
  %iter1.sroa.7.1 = select i1 %19, i8 %iter1.sroa.7.1609, i8 1
  %_0.sroa.3.0.i.i37 = select i1 %_10.i.i28, i64 undef, i64 %iter1.sroa.0.1608
  br i1 %or.cond246, label %bb57.preheader, label %bb21

bb57.preheader:                                   ; preds = %bb19.loopexit, %bb19.preheader
  %20 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i57 = load i64, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i60 = load ptr, ptr %21, align 8, !nonnull !15
  br label %bb57

bb21:                                             ; preds = %bb21.lr.ph, %bb19.loopexit
  %_0.sroa.3.0.i.i37610 = phi i64 [ 1, %bb21.lr.ph ], [ %_0.sroa.3.0.i.i37, %bb19.loopexit ]
  %iter1.sroa.7.1609 = phi i8 [ %iter1.sroa.7.1607, %bb21.lr.ph ], [ %iter1.sroa.7.1, %bb19.loopexit ]
  %iter1.sroa.0.1608 = phi i64 [ %iter1.sroa.0.1606, %bb21.lr.ph ], [ %iter1.sroa.0.1, %bb19.loopexit ]
  %len.i = load i64, ptr %17, align 8, !alias.scope !1708, !noalias !1711, !noundef !15
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i37610, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit", label %panic.i.i233.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit": ; preds = %bb21
  %_6.i = load ptr, ptr %18, align 8, !alias.scope !1708, !noalias !1711, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_0.sroa.3.0.i.i37610
  %len.i83 = load i64, ptr %13, align 8, !alias.scope !1713, !noalias !1716, !noundef !15
  %_4.i.i84 = icmp ult i64 %_0.sroa.3.0.i.i37610, %len.i83
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit", label %panic.i.i233.invoke

bb57:                                             ; preds = %bb57.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit"
  %iter3.sroa.0.0 = phi i64 [ %iter3.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit" ], [ 1, %bb57.preheader ]
  %iter3.sroa.8.0 = phi i8 [ %iter3.sroa.8.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit" ], [ 0, %bb57.preheader ]
  %_10.i.i43 = trunc nuw i8 %iter3.sroa.8.0 to i1
  %_0.i.not.i.i48 = icmp ugt i64 %iter3.sroa.0.0, %_0.i
  %or.cond247 = select i1 %_10.i.i43, i1 true, i1 %_0.i.not.i.i48
  %_0.i3.i.i50 = icmp ult i64 %iter3.sroa.0.0, %_0.i
  %not.or.cond247 = xor i1 %or.cond247, true
  %narrow475 = select i1 %not.or.cond247, i1 %_0.i3.i.i50, i1 false
  %spec.select244 = zext i1 %narrow475 to i64
  %iter3.sroa.0.1 = add nuw i64 %iter3.sroa.0.0, %spec.select244
  %22 = select i1 %or.cond247, i1 true, i1 %_0.i3.i.i50
  %iter3.sroa.8.1 = select i1 %22, i8 %iter3.sroa.8.0, i8 1
  %_0.sroa.3.0.i.i52 = select i1 %_10.i.i43, i64 undef, i64 %iter3.sroa.0.0
  br i1 %or.cond247, label %bb60, label %bb59

bb59:                                             ; preds = %bb57
  %_4.i.i58 = icmp ult i64 %_0.sroa.3.0.i.i52, %len.i57
  br i1 %_4.i.i58, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit": ; preds = %bb59
  %_0.i.i61 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i60, i64 %_0.sroa.3.0.i.i52
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i61, i64 16
  %len.i70 = load i64, ptr %23, align 8, !alias.scope !1718, !noalias !1721, !noundef !15
  %_4.i.i71.not = icmp eq i64 %len.i70, 0
  br i1 %_4.i.i71.not, label %panic.i.i233.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit"

bb60:                                             ; preds = %bb57
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 8)
          to label %bb65 unwind label %cleanup4

bb65:                                             ; preds = %bb60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
          to label %bb66 unwind label %cleanup

bb66:                                             ; preds = %bb65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb69 unwind label %cleanup.i.i65

cleanup.i.i65:                                    ; preds = %bb66
  %24 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i66

terminate.i.i66:                                  ; preds = %cleanup.i.i65
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5fac88eee31658aE.exit.i", %cleanup.i.i78, %cleanup.i.i65
  %common.resume.op = phi { ptr, i32 } [ %24, %cleanup.i.i65 ], [ %27, %cleanup.i.i78 ], [ %.pn.pn, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5fac88eee31658aE.exit.i" ]
  resume { ptr, i32 } %common.resume.op

bb69:                                             ; preds = %bb66, %bb68
  %_0.sroa.0.0 = phi i32 [ 1, %bb68 ], [ 0, %bb66 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i61, i64 8
  %_6.i73 = load ptr, ptr %26, align 8, !alias.scope !1718, !noalias !1721, !nonnull !15, !noundef !15
  %_97 = load i32, ptr %_6.i73, align 4, !noundef !15
  %_96 = icmp eq i32 %_97, 1
  br i1 %_96, label %bb63, label %bb57

bb63:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit"
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 8)
          to label %bb67 unwind label %cleanup4

bb67:                                             ; preds = %bb63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
          to label %bb68 unwind label %cleanup

bb68:                                             ; preds = %bb67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb69 unwind label %cleanup.i.i78

cleanup.i.i78:                                    ; preds = %bb68
  %27 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i79

terminate.i.i79:                                  ; preds = %cleanup.i.i78
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit"
  %_6.i86 = load ptr, ptr %12, align 8, !alias.scope !1713, !noalias !1716, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i64, ptr %_6.i86, i64 %_0.sroa.3.0.i.i37610
  %_36 = load i64, ptr %_0.i.i87, align 8, !noundef !15
  %_35 = and i64 %_36, 7
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i89 = load i64, ptr %29, align 8, !alias.scope !1723, !noalias !1726, !noundef !15
  %_4.i.i90 = icmp ult i64 %_35, %len.i89
  br i1 %_4.i.i90, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit", label %panic.i.i233.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i92 = load ptr, ptr %30, align 8, !alias.scope !1723, !noalias !1726, !nonnull !15, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw i32, ptr %_6.i92, i64 %_35
  store i32 1, ptr %_0.i.i93, align 4
  %_50 = add i64 %_0.sroa.3.0.i.i37610, -1
  br label %bb29

bb29:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit", %bb54
  %spec.select358 = phi i64 [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit" ], [ %spec.select, %bb54 ]
  %iter2.sroa.0.0357 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E.exit" ], [ %spec.select358, %bb54 ]
  %len.i100 = load i64, ptr %17, align 8, !alias.scope !1728, !noalias !1731, !noundef !15
  %_4.i.i101 = icmp ult i64 %_50, %len.i100
  br i1 %_4.i.i101, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit106", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit106": ; preds = %bb29
  %_6.i103 = load ptr, ptr %18, align 8, !alias.scope !1728, !noalias !1731, !nonnull !15, !noundef !15
  %_0.i.i104 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i103, i64 %_50
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i104, i64 16
  %len.i107 = load i64, ptr %31, align 8, !alias.scope !1733, !noalias !1736, !noundef !15
  %_4.i.i108 = icmp ult i64 %iter2.sroa.0.0357, %len.i107
  br i1 %_4.i.i108, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit113", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit113": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit106"
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i104, i64 8
  %_6.i110 = load ptr, ptr %32, align 8, !alias.scope !1733, !noalias !1736, !nonnull !15, !noundef !15
  %_0.i.i111 = getelementptr inbounds nuw i32, ptr %_6.i110, i64 %iter2.sroa.0.0357
  %_46 = load i32, ptr %_0.i.i111, align 4, !noundef !15
  %_4.i.i115 = icmp ult i64 %_0.sroa.3.0.i.i37610, %len.i100
  br i1 %_4.i.i115, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit120", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit120": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit113"
  %_0.i.i118 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i103, i64 %_0.sroa.3.0.i.i37610
  %len.i121 = load i64, ptr %13, align 8, !alias.scope !1738, !noalias !1741, !noundef !15
  %_4.i.i122 = icmp ult i64 %_0.sroa.3.0.i.i37610, %len.i121
  br i1 %_4.i.i122, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit127", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit127": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit120"
  %_57 = shl nuw nsw i64 %iter2.sroa.0.0357, 1
  %_6.i124 = load ptr, ptr %12, align 8, !alias.scope !1738, !noalias !1741, !nonnull !15, !noundef !15
  %_0.i.i125 = getelementptr inbounds nuw i64, ptr %_6.i124, i64 %_0.sroa.3.0.i.i37610
  %_58 = load i64, ptr %_0.i.i125, align 8, !noundef !15
  %_56 = add i64 %_58, %_57
  %_55 = and i64 %_56, 7
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i118, i64 16
  %len.i128 = load i64, ptr %33, align 8, !alias.scope !1743, !noalias !1746, !noundef !15
  %_4.i.i129 = icmp ult i64 %_55, %len.i128
  br i1 %_4.i.i129, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit134", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit134": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit127"
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i118, i64 8
  %_6.i131 = load ptr, ptr %34, align 8, !alias.scope !1743, !noalias !1746, !nonnull !15, !noundef !15
  %_0.i.i132 = getelementptr inbounds nuw i32, ptr %_6.i131, i64 %_55
  %_51 = load i32, ptr %_0.i.i132, align 4, !noundef !15
  %_45 = icmp sgt i32 %_46, %_51
  br i1 %_45, label %bb36, label %bb43

bb36:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit134"
  store i32 %_46, ptr %_0.i.i132, align 4
  br label %bb43

bb43:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit134", %bb36
  %len.i142 = load i64, ptr %17, align 8, !alias.scope !1748, !noalias !1751, !noundef !15
  %_4.i.i143 = icmp ult i64 %_50, %len.i142
  br i1 %_4.i.i143, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit148", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit148": ; preds = %bb43
  %_6.i145 = load ptr, ptr %18, align 8, !alias.scope !1748, !noalias !1751, !nonnull !15, !noundef !15
  %_0.i.i146 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i145, i64 %_50
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i146, i64 16
  %len.i177 = load i64, ptr %35, align 8, !alias.scope !1753, !noalias !1756, !noundef !15
  %_4.i.i178 = icmp ult i64 %iter2.sroa.0.0357, %len.i177
  br i1 %_4.i.i178, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit183", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit183": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit148"
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i146, i64 8
  %_6.i180 = load ptr, ptr %36, align 8, !alias.scope !1753, !noalias !1756, !nonnull !15, !noundef !15
  %_0.i.i181 = getelementptr inbounds nuw i32, ptr %_6.i180, i64 %iter2.sroa.0.0357
  %_74 = load i32, ptr %_0.i.i181, align 4, !noundef !15
  %_4.i.i185 = icmp ult i64 %_0.sroa.3.0.i.i37610, %len.i142
  br i1 %_4.i.i185, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit190", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit190": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit183"
  %_0.i.i188 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i145, i64 %_0.sroa.3.0.i.i37610
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i188, i64 16
  %len.i191 = load i64, ptr %37, align 8, !alias.scope !1758, !noalias !1761, !noundef !15
  %_4.i.i192 = icmp ult i64 %iter2.sroa.0.0357, %len.i191
  br i1 %_4.i.i192, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit197", label %panic.i.i233.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit197": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit190"
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i188, i64 8
  %_6.i194 = load ptr, ptr %38, align 8, !alias.scope !1758, !noalias !1761, !nonnull !15, !noundef !15
  %_0.i.i195 = getelementptr inbounds nuw i32, ptr %_6.i194, i64 %iter2.sroa.0.0357
  %_78 = load i32, ptr %_0.i.i195, align 4, !noundef !15
  %_73 = icmp sgt i32 %_74, %_78
  br i1 %_73, label %bb48, label %bb54

bb48:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit197"
  store i32 %_74, ptr %_0.i.i195, align 4
  br label %bb54

bb54:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit197", %bb48
  %_0.i.i.i = icmp ult i64 %spec.select358, 8
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select358, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb29, label %bb19.loopexit

bb1.i.i226:                                       ; preds = %bb10
  %39 = lshr i64 %len.i.i, 5
  %_65.i.i = getelementptr inbounds nuw [32 x i8], ptr %_6.i.i, i64 %39
  %_1042.not.i.i = icmp eq i64 %_22, 32
  br i1 %_1042.not.i.i, label %bb14.i.i230, label %bb4.i.i227

bb25.i.i:                                         ; preds = %bb19.i.i, %bb18.i.i, %bb14.i.i230, %bb10
  %_19.sroa.0.0 = phi ptr [ %_19.i.i.i, %bb14.i.i230 ], [ %_6.i.i, %bb10 ], [ %_7.i, %bb19.i.i ], [ %_19.sroa.0.3, %bb18.i.i ]
  %remainder.sroa.0.0.i.i = phi i64 [ %remainder.sroa.0.1.lcssa.i.i, %bb14.i.i230 ], [ %_22, %bb10 ], [ %remainder.sroa.0.1.lcssa.i.i, %bb18.i.i ], [ %remainder.sroa.0.1.lcssa.i.i, %bb19.i.i ]
  %_39.not57.i.i = icmp eq i64 %remainder.sroa.0.0.i.i, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.lr.ph.i.i

bb27.lr.ph.i.i:                                   ; preds = %bb25.i.i
  %40 = ptrtoint ptr %_7.i to i64
  br label %bb27.i.i

bb4.i.i227:                                       ; preds = %bb1.i.i226, %bb2.i.i.i.i
  %remainder.sroa.0.145.i.i = phi i64 [ %42, %bb2.i.i.i.i ], [ %_22, %bb1.i.i226 ]
  %chunks.sroa.0.044.i.i = phi ptr [ %chunks.sroa.0.1.i.i, %bb2.i.i.i.i ], [ %_6.i.i, %bb1.i.i226 ]
  %bytes_skipped.sroa.0.043.i.i = phi i64 [ %41, %bb2.i.i.i.i ], [ 0, %bb1.i.i226 ]
  %_73.i.i = icmp eq ptr %chunks.sroa.0.044.i.i, %_65.i.i
  %chunks.sroa.0.1.idx.i.i = select i1 %_73.i.i, i64 0, i64 32
  %chunks.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %chunks.sroa.0.1.idx.i.i
  br i1 %_73.i.i, label %bb14.i.i230, label %bb5.i.i

bb14.i.i230:                                      ; preds = %bb2.i.i.i.i, %bb4.i.i227, %bb1.i.i226
  %bytes_skipped.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb1.i.i226 ], [ %bytes_skipped.sroa.0.043.i.i, %bb4.i.i227 ], [ %41, %bb2.i.i.i.i ]
  %remainder.sroa.0.1.lcssa.i.i = phi i64 [ %_22, %bb1.i.i226 ], [ %remainder.sroa.0.145.i.i, %bb4.i.i227 ], [ %42, %bb2.i.i.i.i ]
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %bytes_skipped.sroa.0.0.lcssa.i.i
  %.not27.i.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i.i, %len.i.i
  call void @llvm.assume(i1 %.not27.i.i)
  %_30.not53.i.i = icmp samesign eq i64 %len.i.i, %bytes_skipped.sroa.0.0.lcssa.i.i
  br i1 %_30.not53.i.i, label %bb25.i.i, label %bb18.i.i

bb5.i.i:                                          ; preds = %bb4.i.i227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i.i, i8 0, i64 32, i1 false), !noalias !1763
  br label %bb10.i.i228

bb2.i.i.i.i:                                      ; preds = %bb10.i.i228
  %_92.sroa.34.0.copyload.i.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.33.0.copyload.i.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.32.0.copyload.i.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.31.0.copyload.i.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.30.0.copyload.i.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.29.0.copyload.i.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.28.0.copyload.i.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.27.0.copyload.i.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.26.0.copyload.i.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.25.0.copyload.i.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.24.0.copyload.i.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.23.0.copyload.i.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.22.0.copyload.i.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.21.0.copyload.i.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.20.0.copyload.i.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.19.0.copyload.i.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.18.0.copyload.i.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.17.0.copyload.i.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.16.0.copyload.i.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.15.0.copyload.i.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.14.0.copyload.i.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.13.0.copyload.i.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.12.0.copyload.i.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.11.0.copyload.i.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.10.0.copyload.i.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.9.0.copyload.i.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.8.0.copyload.i.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.7.0.copyload.i.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.6.0.copyload.i.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.5.0.copyload.i.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.4.0.copyload.i.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1763
  %_92.sroa.0.0.copyload.i.i = load i8, ptr %start_bytes.i.i, align 1, !noalias !1763
  %_4.0.i.i.i.i.i.i.1.i.i = add i8 %_92.sroa.33.0.copyload.i.i, %_92.sroa.34.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.2.i.i = add i8 %_4.0.i.i.i.i.i.i.1.i.i, %_92.sroa.32.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.3.i.i = add i8 %_4.0.i.i.i.i.i.i.2.i.i, %_92.sroa.31.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.4.i.i = add i8 %_4.0.i.i.i.i.i.i.3.i.i, %_92.sroa.30.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.5.i.i = add i8 %_4.0.i.i.i.i.i.i.4.i.i, %_92.sroa.29.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.6.i.i = add i8 %_4.0.i.i.i.i.i.i.5.i.i, %_92.sroa.28.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.7.i.i = add i8 %_4.0.i.i.i.i.i.i.6.i.i, %_92.sroa.27.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.8.i.i = add i8 %_4.0.i.i.i.i.i.i.7.i.i, %_92.sroa.26.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.9.i.i = add i8 %_4.0.i.i.i.i.i.i.8.i.i, %_92.sroa.25.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.10.i.i = add i8 %_4.0.i.i.i.i.i.i.9.i.i, %_92.sroa.24.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.11.i.i = add i8 %_4.0.i.i.i.i.i.i.10.i.i, %_92.sroa.23.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.12.i.i = add i8 %_4.0.i.i.i.i.i.i.11.i.i, %_92.sroa.22.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.13.i.i = add i8 %_4.0.i.i.i.i.i.i.12.i.i, %_92.sroa.21.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.14.i.i = add i8 %_4.0.i.i.i.i.i.i.13.i.i, %_92.sroa.20.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.15.i.i = add i8 %_4.0.i.i.i.i.i.i.14.i.i, %_92.sroa.19.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.16.i.i = add i8 %_4.0.i.i.i.i.i.i.15.i.i, %_92.sroa.18.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.17.i.i = add i8 %_4.0.i.i.i.i.i.i.16.i.i, %_92.sroa.17.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.18.i.i = add i8 %_4.0.i.i.i.i.i.i.17.i.i, %_92.sroa.16.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.19.i.i = add i8 %_4.0.i.i.i.i.i.i.18.i.i, %_92.sroa.15.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.20.i.i = add i8 %_4.0.i.i.i.i.i.i.19.i.i, %_92.sroa.14.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.21.i.i = add i8 %_4.0.i.i.i.i.i.i.20.i.i, %_92.sroa.13.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.22.i.i = add i8 %_4.0.i.i.i.i.i.i.21.i.i, %_92.sroa.12.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.23.i.i = add i8 %_4.0.i.i.i.i.i.i.22.i.i, %_92.sroa.11.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.24.i.i = add i8 %_4.0.i.i.i.i.i.i.23.i.i, %_92.sroa.10.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.25.i.i = add i8 %_4.0.i.i.i.i.i.i.24.i.i, %_92.sroa.9.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.26.i.i = add i8 %_4.0.i.i.i.i.i.i.25.i.i, %_92.sroa.8.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.27.i.i = add i8 %_4.0.i.i.i.i.i.i.26.i.i, %_92.sroa.7.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.28.i.i = add i8 %_4.0.i.i.i.i.i.i.27.i.i, %_92.sroa.6.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.29.i.i = add i8 %_4.0.i.i.i.i.i.i.28.i.i, %_92.sroa.5.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.30.i.i = add i8 %_4.0.i.i.i.i.i.i.29.i.i, %_92.sroa.4.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.31.i.i = add i8 %_4.0.i.i.i.i.i.i.30.i.i, %_92.sroa.0.0.copyload.i.i
  %41 = add i64 %bytes_skipped.sroa.0.043.i.i, 32
  %_25.i.i = zext i8 %_4.0.i.i.i.i.i.i.31.i.i to i64
  %42 = sub i64 %remainder.sroa.0.145.i.i, %_25.i.i
  %_10.i.i229 = icmp ugt i64 %42, 32
  br i1 %_10.i.i229, label %bb4.i.i227, label %bb14.i.i230

bb10.i.i228:                                      ; preds = %bb10.i.i228, %bb5.i.i
  %iter.sroa.0.041.i.i = phi i64 [ 0, %bb5.i.i ], [ %_88.i.i.3, %bb10.i.i228 ]
  %_88.i.i = or disjoint i64 %iter.sroa.0.041.i.i, 1
  %43 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %iter.sroa.0.041.i.i
  %byte.i.i = load i8, ptr %43, align 1, !noalias !1763, !noundef !15
  %_22.i.i = icmp sgt i8 %byte.i.i, -65
  %44 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %iter.sroa.0.041.i.i
  %45 = zext i1 %_22.i.i to i8
  store i8 %45, ptr %44, align 1, !noalias !1763
  %_88.i.i.1 = or disjoint i64 %iter.sroa.0.041.i.i, 2
  %46 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i
  %byte.i.i.1 = load i8, ptr %46, align 1, !noalias !1763, !noundef !15
  %_22.i.i.1 = icmp sgt i8 %byte.i.i.1, -65
  %47 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i
  %48 = zext i1 %_22.i.i.1 to i8
  store i8 %48, ptr %47, align 1, !noalias !1763
  %_88.i.i.2 = or disjoint i64 %iter.sroa.0.041.i.i, 3
  %49 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.1
  %byte.i.i.2 = load i8, ptr %49, align 1, !noalias !1763, !noundef !15
  %_22.i.i.2 = icmp sgt i8 %byte.i.i.2, -65
  %50 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.1
  %51 = zext i1 %_22.i.i.2 to i8
  store i8 %51, ptr %50, align 1, !noalias !1763
  %_88.i.i.3 = add nuw nsw i64 %iter.sroa.0.041.i.i, 4
  %52 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.2
  %byte.i.i.3 = load i8, ptr %52, align 1, !noalias !1763, !noundef !15
  %_22.i.i.3 = icmp sgt i8 %byte.i.i.3, -65
  %53 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.2
  %54 = zext i1 %_22.i.i.3 to i8
  store i8 %54, ptr %53, align 1, !noalias !1763
  %exitcond.not.i.i.3 = icmp eq i64 %_88.i.i.3, 32
  br i1 %exitcond.not.i.i.3, label %bb2.i.i.i.i, label %bb10.i.i228

bb18.i.i:                                         ; preds = %bb14.i.i230, %bb19.i.i
  %_19.sroa.0.3 = phi ptr [ %_19.i33.i.i, %bb19.i.i ], [ %_19.i.i.i, %bb14.i.i230 ]
  %b.i.i = load i8, ptr %_19.sroa.0.3, align 1, !noalias !1763, !noundef !15
  %_36.i.i = icmp slt i8 %b.i.i, -64
  br i1 %_36.i.i, label %bb19.i.i, label %bb25.i.i

bb19.i.i:                                         ; preds = %bb18.i.i
  %_19.i33.i.i = getelementptr inbounds nuw i8, ptr %_19.sroa.0.3, i64 1
  %_30.not.i.i = icmp eq ptr %_7.i, %_19.i33.i.i
  br i1 %_30.not.i.i, label %bb25.i.i, label %bb18.i.i

bb27.i.i:                                         ; preds = %bb28.i.i, %bb27.lr.ph.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %remainder.sroa.0.0.i.i, %bb27.lr.ph.i.i ], [ %57, %bb28.i.i ]
  %_19.i385658.i.i = phi ptr [ %_19.sroa.0.0, %bb27.lr.ph.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %55 = ptrtoint ptr %_19.i385658.i.i to i64
  %56 = sub nuw i64 %40, %55
  %57 = add i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1763, !noundef !15
  %_130.i.i = zext i8 %b15.i.i to i64
  %58 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %58, align 1, !noalias !1763, !noundef !15
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %56, %slurp.i.i
  call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %57, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i": ; preds = %bb27.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1705
  br label %bb14

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb25.i.i
  %_19.sroa.0.1 = phi ptr [ %_19.sroa.0.0, %bb25.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1705
  %_7.i.i.i.i = icmp ne ptr %_19.sroa.0.1, %_7.i
  %spec.select238.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select238 = getelementptr inbounds nuw i8, ptr %_19.sroa.0.1, i64 %spec.select238.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb14

bb14.i.i.i:                                       ; preds = %bb5.critedge.i
  %x.i.i.i = load i8, ptr %_19.sroa.0.1, align 1, !noalias !1766, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select238, %_7.i
  call void @llvm.assume(i1 %_7.i10.i.i.i)
  %y.i.i.i = load i8, ptr %spec.select238, align 1, !noalias !1766, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %59 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb14

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb14

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select238, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1766, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %60 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb14

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select238, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1766, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %61 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb14

bb14:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb5.critedge.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i"
  %_0.sroa.0.0.i = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i" ], [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb5.critedge.i ], [ %61, %bb8.i.i.i ], [ %60, %bb6.i.i.i ], [ %59, %bb4.i.i.i ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i, label %bb2.i, label %bb15, !prof !1036

bb2.i:                                            ; preds = %bb14
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_52e9db55f758a9fd0ea560e0e1ed1b0c) #28
          to label %.noexc unwind label %cleanup5

.noexc:                                           ; preds = %bb2.i
  unreachable

bb15:                                             ; preds = %bb14
  %len.i231 = load i64, ptr %13, align 8, !alias.scope !1771, !noundef !15
  %_4.i.i232 = icmp ult i64 %_0.sroa.3.0.i.i600, %len.i231
  br i1 %_4.i.i232, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit", label %panic.i.i233.invoke

panic.i.i233.invoke:                              ; preds = %bb15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit", %bb21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit190", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit183", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit148", %bb43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit127", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit120", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit113", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit106", %bb29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit", %bb59
  %62 = phi i64 [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit" ], [ %_0.sroa.3.0.i.i52, %bb59 ], [ %iter2.sroa.0.0357, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit190" ], [ %_0.sroa.3.0.i.i37610, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit183" ], [ %iter2.sroa.0.0357, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit148" ], [ %_50, %bb43 ], [ %_55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit127" ], [ %_0.sroa.3.0.i.i37610, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit120" ], [ %_0.sroa.3.0.i.i37610, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit113" ], [ %iter2.sroa.0.0357, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit106" ], [ %_50, %bb29 ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit" ], [ %_0.sroa.3.0.i.i37610, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit" ], [ %_0.sroa.3.0.i.i37610, %bb21 ], [ %_0.sroa.3.0.i.i600, %bb15 ]
  %63 = phi i64 [ %len.i70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit" ], [ %len.i57, %bb59 ], [ %len.i191, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit190" ], [ %len.i142, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit183" ], [ %len.i177, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit148" ], [ %len.i142, %bb43 ], [ %len.i128, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit127" ], [ %len.i121, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit120" ], [ %len.i100, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit113" ], [ %len.i107, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit106" ], [ %len.i100, %bb29 ], [ %len.i89, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit" ], [ %len.i83, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit" ], [ %len.i, %bb21 ], [ %len.i231, %bb15 ]
  %64 = phi ptr [ @alloc_0c361921c4326690b9ce93226779b33f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit" ], [ @alloc_91479a01cc132b8bd99781168301012c, %bb59 ], [ @alloc_9eabe4c02e806b4c4a49072500e10a60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit190" ], [ @alloc_05772182099ba571316183f28f83cb4e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit183" ], [ @alloc_833de4ab19c33bc49b75250c28b0bd80, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit148" ], [ @alloc_3dfd38899e833380a761346a3692af03, %bb43 ], [ @alloc_b793e588748ec2f321b609fee2f396d6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit127" ], [ @alloc_379fd8bcd0d7e39858d041fe45a9f8e0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit120" ], [ @alloc_22aab7586859a65119dd883c4d7e02bc, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E.exit113" ], [ @alloc_3c6ad4a88b5ba7760ae5440133276ee4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE.exit106" ], [ @alloc_fe0b3e2f5d0159a1579c4a392d739c31, %bb29 ], [ @alloc_3151f122888d7b272b923b118ae66145, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE.exit" ], [ @alloc_e38a6f152e778ed38dd998059f98a411, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE.exit" ], [ @alloc_21fc98e8f7639f67e550184b9b3e3e35, %bb21 ], [ @alloc_9041fc24a6ac4007b2e50188934d5ed2, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %62, i64 noundef range(i64 0, 2305843009213693952) %63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %64) #28
          to label %panic.i.i233.cont unwind label %cleanup5

panic.i.i233.cont:                                ; preds = %panic.i.i233.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E.exit": ; preds = %bb15
  %_6.i234 = load ptr, ptr %12, align 8, !alias.scope !1771, !nonnull !15, !noundef !15
  %_0.i.i235 = getelementptr inbounds nuw i64, ptr %_6.i234, i64 %_0.sroa.3.0.i.i600
  %_15 = zext nneg i32 %_0.sroa.0.0.i to i64
  %65 = add nsw i64 %_15, -48
  store i64 %65, ptr %_0.i.i235, align 8
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1598 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1599, %_0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1599, %_0.i
  %66 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %66, i8 %iter.sroa.7.1598, i8 1
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select241 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1599, %spec.select241
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1599
  br i1 %or.cond, label %bb19.preheader, label %bb10

terminate:                                        ; preds = %cleanup5, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5fac88eee31658aE.exit.i", %bb71
  %67 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
