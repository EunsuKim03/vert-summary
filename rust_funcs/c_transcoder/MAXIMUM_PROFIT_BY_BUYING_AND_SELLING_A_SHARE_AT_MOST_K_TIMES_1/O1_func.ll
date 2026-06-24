define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %profit = alloca [24 x i8], align 8
  %price = alloca [8 x i8], align 8
  store i64 %0, ptr %price, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %profit)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1681, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h709428d803c2c2fbE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h709428d803c2c2fbE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1681
  %5 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %5, align 8, !alias.scope !1681
  %_9 = add i32 %k, 1
  %_8 = sext i32 %_9 to i64
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %profit, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %_12 = sext i32 %k to i64
  %_0.i.i.i98 = icmp ugt i32 %n, 1
  %spec.select100 = select i1 %_0.i.i.i98, i64 2, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %profit, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  %_0.i.not.i.i188 = icmp eq i32 %k, 0
  br i1 %_0.i.not.i.i188, label %bb9, label %bb11.preheader.lr.ph

bb11.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h709428d803c2c2fbE.exit
  %.not = icmp eq i32 %k, 1
  %iter.sroa.7.1194 = zext i1 %.not to i8
  %_0.i3.i.i189.not = icmp eq i32 %k, 1
  %iter.sroa.0.1193 = select i1 %_0.i3.i.i189.not, i64 1, i64 2
  br label %bb11.preheader

cleanup:                                          ; preds = %panic2.invoke, %panic.i.i53.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE"(ptr noalias noundef align 8 dereferenceable(24) %profit) #30
          to label %bb29 unwind label %terminate

bb5.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E.exit", %bb11.preheader
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1196 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1195, %_12
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1195, %_12
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select58 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1195, %spec.select58
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.1196, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1195
  br i1 %or.cond, label %bb9, label %bb11.preheader

bb11.preheader:                                   ; preds = %bb11.preheader.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i197 = phi i64 [ 1, %bb11.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1196 = phi i8 [ %iter.sroa.7.1194, %bb11.preheader.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1195 = phi i64 [ %iter.sroa.0.1193, %bb11.preheader.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  br i1 %_0.i.i.i98, label %bb13.lr.ph, label %bb5.loopexit

bb13.lr.ph:                                       ; preds = %bb11.preheader
  %_32 = add i64 %_0.sroa.3.0.i.i197, -1
  br label %bb13

bb9:                                              ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h709428d803c2c2fbE.exit
  %10 = getelementptr inbounds nuw i8, ptr %profit, i64 16
  %len.i = load i64, ptr %10, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, %_12
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit", label %panic.i.i53.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit": ; preds = %bb9
  %11 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  %_6.i = load ptr, ptr %11, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_6.i, i64 %_12
  %_54 = add nsw i64 %_7, -1
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i6 = load i64, ptr %12, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i7 = icmp ult i64 %_54, %len.i6
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit", label %panic.i.i53.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit"
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i9 = load ptr, ptr %13, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i10 = getelementptr inbounds nuw float, ptr %_6.i9, i64 %_54
  %_50 = load float, ptr %_0.i.i10, align 4, !noundef !15
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_50)
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE"(ptr noalias noundef align 8 dereferenceable(24) %profit)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %profit)
  ret i32 %_0

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E.exit"
  %spec.select103 = phi i64 [ %spec.select100, %bb13.lr.ph ], [ %spec.select, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E.exit" ]
  %prev_diff.sroa.0.0102 = phi float [ 0xFFF0000000000000, %bb13.lr.ph ], [ %17, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E.exit" ]
  %iter1.sroa.0.0101 = phi i64 [ 1, %bb13.lr.ph ], [ %spec.select103, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E.exit" ]
  %len.i17 = load i64, ptr %6, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i18 = icmp ult i64 %_32, %len.i17
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit23", label %panic.i.i53.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit23": ; preds = %bb13
  %_6.i20 = load ptr, ptr %7, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i21 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_6.i20, i64 %_32
  %_33 = add nsw i64 %iter1.sroa.0.0101, -1
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i21, i64 16
  %len.i24 = load i64, ptr %14, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i25 = icmp ult i64 %_33, %len.i24
  br i1 %_4.i.i25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit30", label %panic.i.i53.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit30": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit23"
  %_36 = icmp ult i64 %iter1.sroa.0.0101, 3
  br i1 %_36, label %bb17, label %panic2.invoke

bb17:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit30"
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i21, i64 8
  %_6.i27 = load ptr, ptr %15, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i28 = getelementptr inbounds nuw float, ptr %_6.i27, i64 %_33
  %_28 = load float, ptr %_0.i.i28, align 4, !noundef !15
  %16 = getelementptr inbounds nuw i32, ptr %price, i64 %_33
  %_35 = load i32, ptr %16, align 4, !noundef !15
  %_34 = sitofp i32 %_35 to float
  %_27 = fsub float %_28, %_34
  %17 = call noundef float @llvm.maxnum.f32(float %prev_diff.sroa.0.0102, float %_27)
  %_4.i.i32 = icmp ult i64 %_0.sroa.3.0.i.i197, %len.i17
  br i1 %_4.i.i32, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit37", label %panic.i.i53.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit37": ; preds = %bb17
  %_0.i.i35 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_6.i20, i64 %_0.sroa.3.0.i.i197
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 16
  %len.i38 = load i64, ptr %18, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i39 = icmp ult i64 %_33, %len.i38
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit44", label %panic.i.i53.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit44": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit37"
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i35, i64 8
  %_6.i41 = load ptr, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_45.not = icmp eq i64 %iter1.sroa.0.0101, 2
  br i1 %_45.not, label %panic2.invoke, label %bb21

bb21:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit44"
  %_4.i.i52 = icmp samesign ult i64 %iter1.sroa.0.0101, %len.i38
  br i1 %_4.i.i52, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E.exit", label %panic.i.i53.invoke

panic2.invoke:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit44", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit30"
  %20 = phi i64 [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit30" ], [ %iter1.sroa.0.0101, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit44" ]
  %21 = phi ptr [ @alloc_ef0fd2869febe85ed63148ce4aa58f98, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit30" ], [ @alloc_2f1ef89464b49e556dec7c217a556b4f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE.exit44" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %20, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %21) #28
          to label %panic2.cont unwind label %cleanup

panic2.cont:                                      ; preds = %panic2.invoke
  unreachable

panic.i.i53.invoke:                               ; preds = %bb21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit37", %bb17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit23", %bb13, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit", %bb9
  %22 = phi i64 [ %_12, %bb9 ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit" ], [ %iter1.sroa.0.0101, %bb21 ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit37" ], [ %_0.sroa.3.0.i.i197, %bb17 ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit23" ], [ %_32, %bb13 ]
  %23 = phi i64 [ %len.i, %bb9 ], [ %len.i6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit" ], [ %len.i38, %bb21 ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit37" ], [ %len.i17, %bb17 ], [ %len.i24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit23" ], [ %len.i17, %bb13 ]
  %24 = phi ptr [ @alloc_08b15ba745e096f233db07e44cac1c7d, %bb9 ], [ @alloc_2f1c40cee7905a5751ec2e9288d1776f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit" ], [ @alloc_5f1a9a46a1465fe21f934874788cad0a, %bb21 ], [ @alloc_c2efa849385477082ff783fe117a7bd1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit37" ], [ @alloc_7e1d96c9ada9fd68c25f18d9308a6762, %bb17 ], [ @alloc_4a59789a91ddccce0310684cec7e115b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E.exit23" ], [ @alloc_d99236fc3e93b89f3e99046d9e0e6aef, %bb13 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %22, i64 noundef range(i64 0, 2305843009213693952) %23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %24) #27
          to label %panic.i.i53.cont unwind label %cleanup

panic.i.i53.cont:                                 ; preds = %panic.i.i53.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E.exit": ; preds = %bb21
  %_0.i.i42 = getelementptr inbounds nuw float, ptr %_6.i41, i64 %_33
  %_38 = load float, ptr %_0.i.i42, align 4, !noundef !15
  %25 = getelementptr inbounds nuw i32, ptr %price, i64 %iter1.sroa.0.0101
  %_44 = load i32, ptr %25, align 4, !noundef !15
  %_43 = sitofp i32 %_44 to float
  %_42 = fadd float %17, %_43
  %26 = call noundef float @llvm.maxnum.f32(float %_38, float %_42)
  %_0.i.i55 = getelementptr inbounds nuw float, ptr %_6.i41, i64 %iter1.sroa.0.0101
  store float %26, ptr %_0.i.i55, align 4
  %_0.i.i.i = icmp ult i64 %spec.select103, %_7
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select103, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb13, label %bb5.loopexit

terminate:                                        ; preds = %cleanup
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb29:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
