define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %B = alloca [8 x i8], align 8
  %A = alloca [8 x i8], align 8
  store i64 %0, ptr %A, align 8
  store i64 %1, ptr %B, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_6)
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_7, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1035, !noalias !1681, !noundef !15
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h423b000839164473E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h423b000839164473E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_6, align 8, !alias.scope !1681
  %5 = getelementptr inbounds nuw i8, ptr %_6, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1681
  %6 = getelementptr inbounds nuw i8, ptr %_6, i64 16
  store i64 %_7, ptr %6, align 8, !alias.scope !1681
  %_10 = sext i32 %n to i64
  %_9 = add nsw i64 %_10, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2efdfed3eb9e7deaE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_6, i64 noundef %_9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_6)
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i143 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i143, label %bb9, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h423b000839164473E.exit
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.1149 = zext i1 %.not to i8
  %_0.i3.i.i144.not = icmp eq i32 %n, 1
  %iter.sroa.0.1148 = select i1 %_0.i3.i.i144.not, i32 1, i32 2
  br label %bb12.preheader

cleanup:                                          ; preds = %panic2.invoke, %panic.i.i48.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb27 unwind label %terminate

bb5.loopexit:                                     ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25bad6393eb89dafE.exit25"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1152 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1151, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1151, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1151, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1152, i8 1
  br i1 %or.cond, label %bb9, label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb5.loopexit
  %iter.sroa.7.1152 = phi i8 [ %iter.sroa.7.1149, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1151 = phi i32 [ %iter.sroa.0.1148, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %iter.sroa.0.0150 = phi i32 [ 1, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1151, %bb5.loopexit ]
  %_31 = zext nneg i32 %iter.sroa.0.0150 to i64
  %_30 = add nsw i64 %_31, -1
  %_38 = icmp ugt i32 %iter.sroa.0.0150, 2
  %11 = getelementptr inbounds nuw i32, ptr %B, i64 %_30
  br label %bb12

bb9:                                              ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h423b000839164473E.exit
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %12, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, %_10
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit": ; preds = %bb9
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_10
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i7 = load i64, ptr %14, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i8 = icmp ugt i64 %len.i7, %_8
  br i1 %_4.i.i8, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E.exit", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit"
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i10 = load ptr, ptr %15, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i11 = getelementptr inbounds nuw i32, ptr %_6.i10, i64 %_8
  %_0 = load i32, ptr %_0.i.i11, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb12.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0446192730943029E.exit"
  %iter1.sroa.0.0 = phi i32 [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0446192730943029E.exit" ], [ %iter.sroa.0.0150, %bb12.preheader ]
  %iter1.sroa.7.0 = phi i8 [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0446192730943029E.exit" ], [ 0, %bb12.preheader ]
  %_10.i.i13 = trunc nuw i8 %iter1.sroa.7.0 to i1
  %_0.i.not.i.i18 = icmp sgt i32 %iter1.sroa.0.0, %m
  %or.cond55 = select i1 %_10.i.i13, i1 true, i1 %_0.i.not.i.i18
  br i1 %or.cond55, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25bad6393eb89dafE.exit25", label %bb2.i.i19

bb2.i.i19:                                        ; preds = %bb12
  %_0.i3.i.i20 = icmp slt i32 %iter1.sroa.0.0, %m
  %16 = zext i1 %_0.i3.i.i20 to i32
  %spec.select53 = add nsw i32 %iter1.sroa.0.0, %16
  %spec.select54 = select i1 %_0.i3.i.i20, i8 %iter1.sroa.7.0, i8 1
  %17 = sext i32 %iter1.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25bad6393eb89dafE.exit25"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25bad6393eb89dafE.exit25": ; preds = %bb2.i.i19, %bb12
  %iter1.sroa.0.1 = phi i32 [ %iter1.sroa.0.0, %bb12 ], [ %spec.select53, %bb2.i.i19 ]
  %iter1.sroa.7.1 = phi i8 [ %iter1.sroa.7.0, %bb12 ], [ %spec.select54, %bb2.i.i19 ]
  %_0.sroa.3.0.i.i22 = phi i64 [ 0, %bb12 ], [ %17, %bb2.i.i19 ]
  br i1 %or.cond55, label %bb5.loopexit, label %bb14

bb14:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25bad6393eb89dafE.exit25"
  %len.i26 = load i64, ptr %7, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i27 = icmp ult i64 %_30, %len.i26
  br i1 %_4.i.i27, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit32", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit32": ; preds = %bb14
  %_6.i29 = load ptr, ptr %8, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i30 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i29, i64 %_30
  %_32 = add nsw i64 %_0.sroa.3.0.i.i22, -1
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i30, i64 16
  %len.i33 = load i64, ptr %18, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i34 = icmp ult i64 %_32, %len.i33
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E.exit39", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E.exit39": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit32"
  %_36 = icmp ugt i64 %_32, 1
  %brmerge = select i1 %_36, i1 true, i1 %_38
  br i1 %brmerge, label %panic2.invoke, label %bb19

bb19:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E.exit39"
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i30, i64 8
  %_6.i36 = load ptr, ptr %19, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i37 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_32
  %_26 = load i32, ptr %_0.i.i37, align 4, !noundef !15
  %20 = getelementptr inbounds nuw i32, ptr %A, i64 %_32
  %_35 = load i32, ptr %20, align 4, !noundef !15
  %_37 = load i32, ptr %11, align 4, !noundef !15
  %_34 = mul i32 %_37, %_35
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %_34, i32 %_26)
  %_4.i.i41 = icmp ugt i64 %len.i26, %_31
  br i1 %_4.i.i41, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E.exit", label %panic.i.i48.invoke

panic2.invoke:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E.exit39"
  %alloc_1ba2814f37f2d13717660e56bee9b61f.mux = select i1 %_36, ptr @alloc_1ba2814f37f2d13717660e56bee9b61f, ptr @alloc_c259ae0edd27e98661744ff63fef8537
  %_32.mux = select i1 %_36, i64 %_32, i64 %_30
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_32.mux, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %alloc_1ba2814f37f2d13717660e56bee9b61f.mux) #28
          to label %panic2.cont unwind label %cleanup

panic2.cont:                                      ; preds = %panic2.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E.exit": ; preds = %bb19
  %_0.i.i44 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i29, i64 %_31
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i44, i64 16
  %len.i46 = load i64, ptr %21, align 8, !alias.scope !1702, !noundef !15
  %_4.i.i47 = icmp ult i64 %_0.sroa.3.0.i.i22, %len.i46
  br i1 %_4.i.i47, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0446192730943029E.exit", label %panic.i.i48.invoke

panic.i.i48.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E.exit", %bb19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit32", %bb14, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit", %bb9
  %22 = phi i64 [ %_10, %bb9 ], [ %_8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit" ], [ %_0.sroa.3.0.i.i22, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E.exit" ], [ %_31, %bb19 ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit32" ], [ %_30, %bb14 ]
  %23 = phi i64 [ %len.i, %bb9 ], [ %len.i7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit" ], [ %len.i46, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E.exit" ], [ %len.i26, %bb19 ], [ %len.i33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit32" ], [ %len.i26, %bb14 ]
  %24 = phi ptr [ @alloc_cb52d429e2dce7656763cec6d8dda9c7, %bb9 ], [ @alloc_5c967810f868ed812be24b4df1e076e3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit" ], [ @alloc_8ad2094554c434cc4d1fccc83d887e49, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E.exit" ], [ @alloc_37b0748993523ed2d57b6614aab8d926, %bb19 ], [ @alloc_e77b3bc922347aba9c581db160d3d686, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E.exit32" ], [ @alloc_4c01ead1c2d45492ad555d8479d12bc6, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %22, i64 noundef range(i64 0, 2305843009213693952) %23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %24) #27
          to label %panic.i.i48.cont unwind label %cleanup

panic.i.i48.cont:                                 ; preds = %panic.i.i48.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0446192730943029E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E.exit"
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i44, i64 8
  %_6.i49 = load ptr, ptr %25, align 8, !alias.scope !1702, !nonnull !15, !noundef !15
  %_0.i.i50 = getelementptr inbounds nuw i32, ptr %_6.i49, i64 %_0.sroa.3.0.i.i22
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i50, align 4
  br label %bb12

terminate:                                        ; preds = %cleanup
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb27:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
