define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %cps = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1675, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cps)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %_6 = add nuw i64 %_0.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb48:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %9, %cleanup3 ], [ %1, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E"(ptr noalias noundef align 8 dereferenceable(24) %str) #30
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17hca758c718855457cE.exit, %bb14.i.i, %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit"
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb48

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1684, !noundef !15
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1035, !noalias !1684, !noundef !15
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hca758c718855457cE.exit, !prof !1036

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1684
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28
          to label %.noexc9 unwind label %cleanup

.noexc9:                                          ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17hca758c718855457cE.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1684, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1684
  %5 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1684
  %6 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %6, align 8, !alias.scope !1684
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0259912565d1c6d8E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %cps, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_6)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %_ZN5alloc3vec9from_elem17hca758c718855457cE.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %_0.i.i.i280.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i280.not, label %bb14.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb3
  %7 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  br label %bb8

cleanup3:                                         ; preds = %bb3.i.i52.invoke, %panic.i.i167.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr noalias noundef align 8 dereferenceable(24) %cps) #30
          to label %bb48 unwind label %terminate

bb14.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit171", %bb3
  %_0.i.i.i32284 = icmp ne i64 %_0.i, 0
  %_0.i1.i.i35285 = zext i1 %_0.i.i.i32284 to i64
  %10 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %_0.i.not.i.i507 = icmp samesign ult i64 %_0.i, 2
  br i1 %_0.i.not.i.i507, label %bb17, label %bb19.preheader.lr.ph

bb19.preheader.lr.ph:                             ; preds = %bb14.preheader
  %.not = icmp eq i64 %_0.i, 2
  %iter1.sroa.7.1513 = zext i1 %.not to i8
  %_0.i3.i.i508.not = icmp eq i64 %_0.i, 2
  %iter1.sroa.0.1512 = select i1 %_0.i3.i.i508.not, i64 2, i64 3
  br label %bb19.preheader

bb8:                                              ; preds = %bb8.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit171"
  %spec.select283 = phi i64 [ 1, %bb8.lr.ph ], [ %spec.select, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit171" ]
  %iter.sroa.0.0282 = phi i64 [ 0, %bb8.lr.ph ], [ %spec.select283, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit171" ]
  %len.i = load i64, ptr %7, align 8, !alias.scope !1685, !noalias !1688, !noundef !15
  %_4.i.i11 = icmp ult i64 %iter.sroa.0.0282, %len.i
  br i1 %_4.i.i11, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit", label %panic.i.i167.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %8, align 8, !alias.scope !1685, !noalias !1688, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %iter.sroa.0.0282
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i165 = load i64, ptr %15, align 8, !alias.scope !1690, !noalias !1693, !noundef !15
  %_4.i.i166 = icmp ult i64 %iter.sroa.0.0282, %len.i165
  br i1 %_4.i.i166, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit171", label %panic.i.i167.invoke

bb14.loopexit:                                    ; preds = %bb42, %bb19.preheader
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.1515 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter1.sroa.0.1514, %_0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter1.sroa.0.1514, %_0.i
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select175 = zext i1 %narrow to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1514, %spec.select175
  %16 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %16, i8 %iter1.sroa.7.1515, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter1.sroa.0.1514
  br i1 %or.cond, label %bb17, label %bb19.preheader

bb19.preheader:                                   ; preds = %bb19.preheader.lr.ph, %bb14.loopexit
  %_0.sroa.3.0.i.i516 = phi i64 [ 2, %bb19.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb14.loopexit ]
  %iter1.sroa.7.1515 = phi i8 [ %iter1.sroa.7.1513, %bb19.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb14.loopexit ]
  %iter1.sroa.0.1514 = phi i64 [ %iter1.sroa.0.1512, %bb19.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb14.loopexit ]
  br i1 %_0.i.i.i32284, label %bb21, label %bb14.loopexit

bb17:                                             ; preds = %bb14.loopexit, %bb14.preheader
  %17 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %len.i17 = load i64, ptr %17, align 8, !alias.scope !1695, !noalias !1698, !noundef !15
  %_4.i.i18.not = icmp eq i64 %len.i17, 0
  br i1 %_4.i.i18.not, label %panic.i.i167.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit": ; preds = %bb17
  %18 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %_6.i20 = load ptr, ptr %18, align 8, !alias.scope !1695, !noalias !1698, !nonnull !15, !noundef !15
  %_74 = add nsw i64 %_0.i, -1
  %19 = getelementptr inbounds nuw i8, ptr %_6.i20, i64 16
  %len.i23 = load i64, ptr %19, align 8, !alias.scope !1700, !noalias !1703, !noundef !15
  %_4.i.i24 = icmp ult i64 %_74, %len.i23
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit"
  %20 = getelementptr inbounds nuw i8, ptr %_6.i20, i64 8
  %_6.i26 = load ptr, ptr %20, align 8, !alias.scope !1700, !noalias !1703, !nonnull !15, !noundef !15
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_74
  %_0 = load i32, ptr %_0.i.i27, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr noalias noundef align 8 dereferenceable(24) %cps)
          to label %bb45 unwind label %cleanup

bb45:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cps)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb45
  %21 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

common.resume:                                    ; preds = %bb48, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %21, %cleanup.i.i ], [ %.pn, %bb48 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E.exit": ; preds = %bb45
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0

bb21:                                             ; preds = %bb19.preheader, %bb42
  %spec.select173287 = phi i64 [ %spec.select173, %bb42 ], [ %_0.i1.i.i35285, %bb19.preheader ]
  %iter2.sroa.0.0286 = phi i64 [ %spec.select173287, %bb42 ], [ 0, %bb19.preheader ]
  %_31 = add i64 %iter2.sroa.0.0286, %_0.sroa.3.0.i.i516
  %k = add i64 %_31, -1
  %_36 = add nuw i64 %iter2.sroa.0.0286, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %_8.i = load ptr, ptr %10, align 8, !alias.scope !1705, !noalias !1708, !nonnull !15, !noundef !15
  %len.i37 = load i64, ptr %0, align 8, !alias.scope !1705, !noalias !1708, !noundef !15
  %_11.i.i.i = icmp eq i64 %iter2.sroa.0.0286, 0
  br i1 %_11.i.i.i, label %bb15.i.i.i, label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %bb21
  %_12.not.i.i.i = icmp ult i64 %iter2.sroa.0.0286, %len.i37
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %23 = icmp eq i64 %iter2.sroa.0.0286, %len.i37
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb9.i.i.i
  %24 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter2.sroa.0.0286
  %self.i.i.i = load i8, ptr %24, align 1, !alias.scope !1710, !noalias !1715, !noundef !15
  %25 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %23, %bb10.i.i.i ], [ %25, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb15.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb15.i.i.i:                                       ; preds = %bb21, %bb13.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_36, %len.i37
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %26 = icmp eq i64 %_36, %len.i37
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %27 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_36
  %self2.i.i.i = load i8, ptr %27, align 1, !alias.scope !1710, !noalias !1715, !noundef !15
  %28 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %26, %bb16.i.i.i ], [ %28, %bb18.i.i.i ]
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter2.sroa.0.0286
  %spec.select397 = select i1 %_7.sroa.0.0.in.i.i.i, ptr %data.i.i.i, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb19.i.i.i, %bb13.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ null, %bb13.i.i.i ], [ %spec.select397, %bb19.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i52.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit", !prof !1036

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %_3.not.i.i.i41 = icmp eq i64 %_31, 0
  br i1 %_3.not.i.i.i41, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49", label %bb1.i.i.i42

bb1.i.i.i42:                                      ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit"
  %_11.i.i.i43 = icmp eq i64 %k, 0
  br i1 %_11.i.i.i43, label %bb15.i.i.i55, label %bb9.i.i.i44

bb9.i.i.i44:                                      ; preds = %bb1.i.i.i42
  %_12.not.i.i.i45 = icmp ult i64 %k, %len.i37
  br i1 %_12.not.i.i.i45, label %bb12.i.i.i64, label %bb10.i.i.i46

bb10.i.i.i46:                                     ; preds = %bb9.i.i.i44
  %29 = icmp eq i64 %k, %len.i37
  br label %bb13.i.i.i47

bb12.i.i.i64:                                     ; preds = %bb9.i.i.i44
  %30 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %k
  %self.i.i.i65 = load i8, ptr %30, align 1, !alias.scope !1717, !noalias !1722, !noundef !15
  %31 = icmp sgt i8 %self.i.i.i65, -65
  br label %bb13.i.i.i47

bb13.i.i.i47:                                     ; preds = %bb12.i.i.i64, %bb10.i.i.i46
  %_6.sroa.0.0.in.i.i.i48 = phi i1 [ %29, %bb10.i.i.i46 ], [ %31, %bb12.i.i.i64 ]
  br i1 %_6.sroa.0.0.in.i.i.i48, label %bb15.i.i.i55, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49"

bb15.i.i.i55:                                     ; preds = %bb1.i.i.i42, %bb13.i.i.i47
  %_19.not.i.i.i56 = icmp ult i64 %_31, %len.i37
  br i1 %_19.not.i.i.i56, label %bb18.i.i.i62, label %bb16.i.i.i57

bb16.i.i.i57:                                     ; preds = %bb15.i.i.i55
  %32 = icmp eq i64 %_31, %len.i37
  br label %bb19.i.i.i58

bb18.i.i.i62:                                     ; preds = %bb15.i.i.i55
  %33 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_31
  %self2.i.i.i63 = load i8, ptr %33, align 1, !alias.scope !1717, !noalias !1722, !noundef !15
  %34 = icmp sgt i8 %self2.i.i.i63, -65
  br label %bb19.i.i.i58

bb19.i.i.i58:                                     ; preds = %bb18.i.i.i62, %bb16.i.i.i57
  %_7.sroa.0.0.in.i.i.i59 = phi i1 [ %32, %bb16.i.i.i57 ], [ %34, %bb18.i.i.i62 ]
  %data.i.i.i61 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %k
  %spec.select177 = select i1 %_7.sroa.0.0.in.i.i.i59, ptr %data.i.i.i61, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49": ; preds = %bb19.i.i.i58, %bb13.i.i.i47, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit"
  %_0.sroa.0.0.i.i.i50 = phi ptr [ null, %bb13.i.i.i47 ], [ null, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit" ], [ %spec.select177, %bb19.i.i.i58 ]
  %.not.i.i51 = icmp eq ptr %_0.sroa.0.0.i.i.i50, null
  br i1 %.not.i.i51, label %bb3.i.i52.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit67", !prof !1036

bb3.i.i52.invoke:                                 ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %35 = phi i64 [ %iter2.sroa.0.0286, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %k, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49" ]
  %36 = phi i64 [ %_36, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_31, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49" ]
  %37 = phi ptr [ @alloc_26afdd522f55b1e0eba86a1f9263dd5a, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ @alloc_6e7aa3ae607030d3a785625c1a237d9f, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %len.i37, i64 noundef %35, i64 noundef %36, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %37) #27
          to label %bb3.i.i52.cont unwind label %cleanup3

bb3.i.i52.cont:                                   ; preds = %bb3.i.i52.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit67": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i49"
  %lhsc = load i8, ptr %_0.sroa.0.0.i.i.i, align 1
  %rhsc = load i8, ptr %_0.sroa.0.0.i.i.i50, align 1
  %38 = icmp eq i8 %lhsc, %rhsc
  br i1 %38, label %bb26, label %bb33

bb33:                                             ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit67"
  %len.i68 = load i64, ptr %11, align 8, !alias.scope !1727, !noalias !1730, !noundef !15
  %_4.i.i69 = icmp ult i64 %iter2.sroa.0.0286, %len.i68
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit74", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit74": ; preds = %bb33
  %_6.i71 = load ptr, ptr %12, align 8, !alias.scope !1727, !noalias !1730, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i71, i64 %iter2.sroa.0.0286
  %_59 = add i64 %_31, -2
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i72, i64 16
  %len.i82 = load i64, ptr %39, align 8, !alias.scope !1732, !noalias !1735, !noundef !15
  %_4.i.i83 = icmp ult i64 %_59, %len.i82
  br i1 %_4.i.i83, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit88", label %panic.i.i167.invoke

bb26:                                             ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E.exit67"
  %len.i75 = load i64, ptr %13, align 8, !alias.scope !1737, !noalias !1740, !noundef !15
  %_4.i.i76 = icmp ult i64 %iter2.sroa.0.0286, %len.i75
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit81", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit81": ; preds = %bb26
  %_6.i78 = load ptr, ptr %14, align 8, !alias.scope !1737, !noalias !1740, !nonnull !15, !noundef !15
  %_0.i.i79 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i78, i64 %iter2.sroa.0.0286
  %_46 = add i64 %_31, -2
  %40 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 16
  %len.i130 = load i64, ptr %40, align 8, !alias.scope !1742, !noalias !1745, !noundef !15
  %_4.i.i131 = icmp ult i64 %_46, %len.i130
  br i1 %_4.i.i131, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit136", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit88": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit74"
  %41 = getelementptr inbounds nuw i8, ptr %_0.i.i72, i64 8
  %_6.i85 = load ptr, ptr %41, align 8, !alias.scope !1732, !noalias !1735, !nonnull !15, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %_59
  %_55 = load i32, ptr %_0.i.i86, align 4, !noundef !15
  %_4.i.i90 = icmp ult i64 %_36, %len.i68
  br i1 %_4.i.i90, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit95", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit95": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit88"
  %_0.i.i93 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i71, i64 %_36
  %42 = getelementptr inbounds nuw i8, ptr %_0.i.i93, i64 16
  %len.i96 = load i64, ptr %42, align 8, !alias.scope !1747, !noalias !1750, !noundef !15
  %_4.i.i97 = icmp ult i64 %k, %len.i96
  br i1 %_4.i.i97, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit102", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit102": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit95"
  %43 = getelementptr inbounds nuw i8, ptr %_0.i.i93, i64 8
  %_6.i99 = load ptr, ptr %43, align 8, !alias.scope !1747, !noalias !1750, !nonnull !15, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw i32, ptr %_6.i99, i64 %k
  %_60 = load i32, ptr %_0.i.i100, align 4, !noundef !15
  %_54 = add i32 %_60, %_55
  %_4.i.i111 = icmp ult i64 %_59, %len.i96
  br i1 %_4.i.i111, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit116", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit116": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit102"
  %_4.i.i125 = icmp ult i64 %k, %len.i82
  br i1 %_4.i.i125, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit", label %panic.i.i167.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit116"
  %_0.i.i114 = getelementptr inbounds nuw i32, ptr %_6.i99, i64 %_59
  %_64 = load i32, ptr %_0.i.i114, align 4, !noundef !15
  %_0.i.i128 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %k
  %44 = sub i32 %_54, %_64
  store i32 %44, ptr %_0.i.i128, align 4
  br label %bb42

bb42:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit164", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit"
  %_0.i.i.i32 = icmp ult i64 %spec.select173287, %_0.i
  %_0.i1.i.i35 = zext i1 %_0.i.i.i32 to i64
  %spec.select173 = add nuw i64 %spec.select173287, %_0.i1.i.i35
  br i1 %_0.i.i.i32, label %bb21, label %bb14.loopexit

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit136": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit81"
  %45 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 8
  %_6.i133 = load ptr, ptr %45, align 8, !alias.scope !1742, !noalias !1745, !nonnull !15, !noundef !15
  %_0.i.i134 = getelementptr inbounds nuw i32, ptr %_6.i133, i64 %_46
  %_42 = load i32, ptr %_0.i.i134, align 4, !noundef !15
  %_4.i.i138 = icmp ult i64 %_36, %len.i75
  br i1 %_4.i.i138, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit143", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit143": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit136"
  %_0.i.i141 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i78, i64 %_36
  %46 = getelementptr inbounds nuw i8, ptr %_0.i.i141, i64 16
  %len.i144 = load i64, ptr %46, align 8, !alias.scope !1752, !noalias !1755, !noundef !15
  %_4.i.i145 = icmp ult i64 %k, %len.i144
  br i1 %_4.i.i145, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit150", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit150": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit143"
  %_4.i.i159 = icmp ult i64 %k, %len.i130
  br i1 %_4.i.i159, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit164", label %panic.i.i167.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit164": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit150"
  %47 = getelementptr inbounds nuw i8, ptr %_0.i.i141, i64 8
  %_6.i147 = load ptr, ptr %47, align 8, !alias.scope !1752, !noalias !1755, !nonnull !15, !noundef !15
  %_0.i.i148 = getelementptr inbounds nuw i32, ptr %_6.i147, i64 %k
  %_47 = load i32, ptr %_0.i.i148, align 4, !noundef !15
  %_0.i.i162 = getelementptr inbounds nuw i32, ptr %_6.i133, i64 %k
  %_41 = add i32 %_42, 1
  %48 = add i32 %_41, %_47
  store i32 %48, ptr %_0.i.i162, align 4
  br label %bb42

panic.i.i167.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit", %bb8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit150", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit143", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit136", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit116", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit102", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit95", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit88", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit74", %bb26, %bb33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit", %bb17
  %49 = phi i64 [ 0, %bb17 ], [ %_74, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit150" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit143" ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit136" ], [ %_46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit81" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit116" ], [ %_59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit102" ], [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit95" ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit88" ], [ %_59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit74" ], [ %iter2.sroa.0.0286, %bb26 ], [ %iter2.sroa.0.0286, %bb33 ], [ %iter.sroa.0.0282, %bb8 ], [ %iter.sroa.0.0282, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit" ]
  %50 = phi i64 [ %len.i17, %bb17 ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit" ], [ %len.i130, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit150" ], [ %len.i144, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit143" ], [ %len.i75, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit136" ], [ %len.i130, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit81" ], [ %len.i82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit116" ], [ %len.i96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit102" ], [ %len.i96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit95" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit88" ], [ %len.i82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit74" ], [ %len.i75, %bb26 ], [ %len.i68, %bb33 ], [ %len.i165, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit" ], [ %len.i, %bb8 ]
  %51 = phi ptr [ @alloc_8ce85e97d646e96dc23fcb202c1e5c01, %bb17 ], [ @alloc_d236b0242df7c5803f09a1e9b6ec0106, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit" ], [ @alloc_e836aa6bf5e61509e32ee53ca7c0ef3b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit150" ], [ @alloc_b1503b2cc08369785ac8374ef82ebf57, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit143" ], [ @alloc_26c45d637ab9d102ba3aa3ed144a05e4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit136" ], [ @alloc_64422b2f142978549256c8b72bb77199, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit81" ], [ @alloc_c1b99c8b01f4c49c71ca97df7d7400df, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit116" ], [ @alloc_05e0b3f4033e5ab48795dae405be3b68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit102" ], [ @alloc_16255c1547d82634905aebedaa0978a8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit95" ], [ @alloc_2119ae80cf6501eafd3d1cf294117eb1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E.exit88" ], [ @alloc_d4df6d254994bb3043a805c3828c52e3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E.exit74" ], [ @alloc_ed5a02914ad19a6a55b0ab93a8b24f75, %bb26 ], [ @alloc_de1499e29279aa925af3731188568020, %bb33 ], [ @alloc_620dfc3b86741debbba8ca00006e8648, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit" ], [ @alloc_79af2461bd0480297561f96066ec1843, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %49, i64 noundef range(i64 0, 2305843009213693952) %50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %51) #27
          to label %panic.i.i167.cont unwind label %cleanup3

panic.i.i167.cont:                                ; preds = %panic.i.i167.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE.exit171": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE.exit"
  %52 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i168 = load ptr, ptr %52, align 8, !alias.scope !1690, !noalias !1693, !nonnull !15, !noundef !15
  %_0.i.i169 = getelementptr inbounds nuw i32, ptr %_6.i168, i64 %iter.sroa.0.0282
  store i32 1, ptr %_0.i.i169, align 4
  %_0.i.i.i = icmp ult i64 %spec.select283, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select283, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb8, label %bb14.preheader

terminate:                                        ; preds = %bb48, %cleanup3
  %53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}
