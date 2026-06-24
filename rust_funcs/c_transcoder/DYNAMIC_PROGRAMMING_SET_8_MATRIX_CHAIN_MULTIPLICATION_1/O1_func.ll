define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %m = alloca [24 x i8], align 8
  %p = alloca [8 x i8], align 8
  store i64 %0, ptr %p, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %m)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %_5 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1681, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hbc3947f1f1281c0cE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17hbc3947f1f1281c0cE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_4, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1681
  %5 = getelementptr inbounds nuw i8, ptr %_4, i64 16
  store i64 %_5, ptr %5, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %m, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_4, i64 noundef %_5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  %_0.i.i.i196 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i196, label %bb7.lr.ph, label %bb12.preheader

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hbc3947f1f1281c0cE.exit
  %6 = getelementptr inbounds nuw i8, ptr %m, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %m, i64 8
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb7

cleanup:                                          ; preds = %panic5.invoke, %panic.i.i117.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"(ptr noalias noundef align 8 dereferenceable(24) %m) #30
          to label %bb46 unwind label %terminate

bb12.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit121", %_ZN5alloc3vec9from_elem17hbc3947f1f1281c0cE.exit
  %_0.i.i.i16208 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i16208, label %bb14.lr.ph, label %bb15

bb14.lr.ph:                                       ; preds = %bb12.preheader
  %_27 = add nuw i32 %n, 1
  %9 = getelementptr inbounds nuw i8, ptr %m, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %m, i64 8
  br label %bb14

bb7:                                              ; preds = %bb7.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit121"
  %indvars.iv295 = phi i64 [ 1, %bb7.lr.ph ], [ %indvars.iv.next296, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit121" ]
  %len.i = load i64, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i12 = icmp ugt i64 %len.i, %indvars.iv295
  br i1 %_4.i.i12, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit", label %panic.i.i117.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %7, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %indvars.iv295
  %11 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i115 = load i64, ptr %11, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i116 = icmp ugt i64 %len.i115, %indvars.iv295
  br i1 %_4.i.i116, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit121", label %panic.i.i117.invoke

bb12.loopexit:                                    ; preds = %bb17.loopexit, %bb14
  %indvars.iv.next300 = add nuw nsw i32 %indvars.iv299, 1
  %exitcond303.not = icmp eq i32 %indvars.iv.next300, %n
  br i1 %exitcond303.not, label %bb15, label %bb14

bb14:                                             ; preds = %bb14.lr.ph, %bb12.loopexit
  %indvars.iv299 = phi i32 [ 2, %bb14.lr.ph ], [ %indvars.iv.next300, %bb12.loopexit ]
  %_26 = sub i32 %_27, %indvars.iv299
  %invariant.op = add nsw i32 %indvars.iv299, -1
  %_0.i.i.i35204 = icmp sgt i32 %_26, 1
  br i1 %_0.i.i.i35204, label %bb19, label %bb12.loopexit

bb15:                                             ; preds = %bb12.loopexit, %bb12.preheader
  %12 = getelementptr inbounds nuw i8, ptr %m, i64 16
  %len.i20 = load i64, ptr %12, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i21 = icmp ugt i64 %len.i20, 1
  br i1 %_4.i.i21, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit": ; preds = %bb15
  %13 = getelementptr inbounds nuw i8, ptr %m, i64 8
  %_6.i23 = load ptr, ptr %13, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_79 = add nsw i64 %_5, -1
  %14 = getelementptr inbounds nuw i8, ptr %_6.i23, i64 40
  %len.i26 = load i64, ptr %14, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i27 = icmp ult i64 %_79, %len.i26
  br i1 %_4.i.i27, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit"
  %15 = getelementptr inbounds nuw i8, ptr %_6.i23, i64 32
  %_6.i29 = load ptr, ptr %15, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i30 = getelementptr inbounds nuw i32, ptr %_6.i29, i64 %_79
  %_0 = load i32, ptr %_0.i.i30, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"(ptr noalias noundef align 8 dereferenceable(24) %m)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %m)
  ret i32 %_0

bb17.loopexit:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100.1", %bb37.1, %bb41, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit"
  %_0.i.i.i35 = icmp slt i32 %spec.select125207, %_26
  %16 = zext i1 %_0.i.i.i35 to i32
  %spec.select125 = add nuw nsw i32 %spec.select125207, %16
  br i1 %_0.i.i.i35, label %bb19, label %bb12.loopexit

bb19:                                             ; preds = %bb14, %bb17.loopexit
  %spec.select125207 = phi i32 [ %spec.select125, %bb17.loopexit ], [ 2, %bb14 ]
  %iter2.sroa.0.0206 = phi i32 [ %spec.select125207, %bb17.loopexit ], [ 1, %bb14 ]
  %_34 = add nuw i32 %iter2.sroa.0.0206, %indvars.iv299
  %j.reass = add i32 %iter2.sroa.0.0206, %invariant.op
  %_38 = zext nneg i32 %iter2.sroa.0.0206 to i64
  %len.i39 = load i64, ptr %9, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i40 = icmp ugt i64 %len.i39, %_38
  br i1 %_4.i.i40, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit45", label %panic.i.i117.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit45": ; preds = %bb19
  %_6.i42 = load ptr, ptr %10, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i43 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i42, i64 %_38
  %_39 = sext i32 %j.reass to i64
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i43, i64 16
  %len.i46 = load i64, ptr %17, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i47 = icmp ugt i64 %len.i46, %_39
  br i1 %_4.i.i47, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit", label %panic.i.i117.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit45"
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i43, i64 8
  %_6.i49 = load ptr, ptr %18, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i50 = getelementptr inbounds nuw i32, ptr %_6.i49, i64 %_39
  store i32 2147483647, ptr %_0.i.i50, align 4
  %_0.i.i.i55200 = icmp slt i32 %iter2.sroa.0.0206, %j.reass
  br i1 %_0.i.i.i55200, label %bb26.lr.ph, label %bb17.loopexit

bb26.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit"
  %_62 = add nsw i64 %_38, -1
  %_63 = icmp samesign ult i32 %iter2.sroa.0.0206, 3
  %_67 = icmp ugt i32 %_34, 2
  %19 = getelementptr inbounds nuw i32, ptr %p, i64 %_62
  %20 = getelementptr inbounds nuw i32, ptr %p, i64 %_39
  %21 = add i32 %iter2.sroa.0.0206, 1
  %22 = add i32 %indvars.iv299, %iter2.sroa.0.0206
  %wide.trip.count301 = zext i32 %22 to i64
  %len.i59 = load i64, ptr %9, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i60 = icmp ugt i64 %len.i59, %_38
  br i1 %_4.i.i60, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65": ; preds = %bb26.lr.ph
  %_6.i62 = load ptr, ptr %10, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i63 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i62, i64 %_38
  %_53 = zext nneg i32 %iter2.sroa.0.0206 to i64
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i63, i64 16
  %len.i66 = load i64, ptr %23, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i67 = icmp ugt i64 %len.i66, %_53
  br i1 %_4.i.i67, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i63, i64 8
  %_6.i69 = load ptr, ptr %24, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i70 = getelementptr inbounds nuw i32, ptr %_6.i69, i64 %_53
  %_49 = load i32, ptr %_0.i.i70, align 4, !noundef !15
  %_58 = add nuw nsw i64 %_53, 1
  %_4.i.i74 = icmp ult i64 %_58, %len.i59
  br i1 %_4.i.i74, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72"
  %_0.i.i77 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i62, i64 %_58
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i77, i64 16
  %len.i80 = load i64, ptr %25, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i81 = icmp ugt i64 %len.i80, %_39
  br i1 %_4.i.i81, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i77, i64 8
  %_6.i83 = load ptr, ptr %26, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i84 = getelementptr inbounds nuw i32, ptr %_6.i83, i64 %_39
  %_54 = load i32, ptr %_0.i.i84, align 4, !noundef !15
  %_48 = add i32 %_54, %_49
  br i1 %_63, label %bb32, label %panic5.invoke

bb32:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86"
  %_65 = icmp eq i32 %iter2.sroa.0.0206, 2
  %brmerge = select i1 %_65, i1 true, i1 %_67
  br i1 %brmerge, label %panic5.invoke.split.loop.exit403, label %bb34

bb34:                                             ; preds = %bb32
  %_61 = load i32, ptr %19, align 4, !noundef !15
  %27 = getelementptr inbounds nuw i32, ptr %p, i64 %_53
  %_64 = load i32, ptr %27, align 4, !noundef !15
  %_60 = mul i32 %_64, %_61
  %_66 = load i32, ptr %20, align 4, !noundef !15
  %_59 = mul i32 %_60, %_66
  %q = add i32 %_48, %_59
  %_4.i.i95 = icmp ugt i64 %len.i66, %_39
  br i1 %_4.i.i95, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100", label %panic.i.i117.invoke

panic5.invoke.split.loop.exit:                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86.1"
  %_53.mux.1.le = select i1 %_65.1, i64 %_53.1, i64 %_39
  %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.1.le = select i1 %_65.1, ptr @alloc_5a9b383c70a7b1dd16c6463a41b1abb9, ptr @alloc_6c3e1fd742bed77b62979487ae24177f
  br label %panic5.invoke

panic5.invoke.split.loop.exit403:                 ; preds = %bb32
  %_53.mux.le = select i1 %_65, i64 2, i64 %_39
  %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.le = select i1 %_65, ptr @alloc_5a9b383c70a7b1dd16c6463a41b1abb9, ptr @alloc_6c3e1fd742bed77b62979487ae24177f
  br label %panic5.invoke

panic5.invoke:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86", %panic5.invoke.split.loop.exit403, %panic5.invoke.split.loop.exit
  %28 = phi i64 [ %_53.mux.1.le, %panic5.invoke.split.loop.exit ], [ %_53.mux.le, %panic5.invoke.split.loop.exit403 ], [ %_62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86" ]
  %29 = phi ptr [ %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.1.le, %panic5.invoke.split.loop.exit ], [ %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.le, %panic5.invoke.split.loop.exit403 ], [ @alloc_2ae73ff7fcc4835fbf62e7ff24662534, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %28, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %29) #28
          to label %panic5.cont unwind label %cleanup

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100": ; preds = %bb34
  %_0.i.i98 = getelementptr inbounds nuw i32, ptr %_6.i69, i64 %_39
  %_69 = load i32, ptr %_0.i.i98, align 4, !noundef !15
  %_68 = icmp slt i32 %q, %_69
  br i1 %_68, label %bb37, label %bb41

bb37:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100"
  store i32 %q, ptr %_0.i.i98, align 4
  br label %bb41

bb41:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100", %bb37
  %indvars.iv.next = add nuw nsw i64 %_38, 2
  %exitcond302.not = icmp eq i64 %indvars.iv.next, %wide.trip.count301
  br i1 %exitcond302.not, label %bb17.loopexit, label %bb26.1

bb26.1:                                           ; preds = %bb41
  %len.i59.1 = load i64, ptr %9, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i60.1 = icmp ugt i64 %len.i59.1, %_38
  br i1 %_4.i.i60.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65.1", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65.1": ; preds = %bb26.1
  %_6.i62.1 = load ptr, ptr %10, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i63.1 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i62.1, i64 %_38
  %_53.1 = zext nneg i32 %21 to i64
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i63.1, i64 16
  %len.i66.1 = load i64, ptr %30, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i67.1 = icmp ugt i64 %len.i66.1, %_53.1
  br i1 %_4.i.i67.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72.1", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72.1": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65.1"
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i63.1, i64 8
  %_6.i69.1 = load ptr, ptr %31, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i70.1 = getelementptr inbounds nuw i32, ptr %_6.i69.1, i64 %_53.1
  %_49.1 = load i32, ptr %_0.i.i70.1, align 4, !noundef !15
  %_58.1 = add nuw nsw i64 %_53.1, 1
  %_4.i.i74.1 = icmp ult i64 %_58.1, %len.i59.1
  br i1 %_4.i.i74.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79.1", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79.1": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72.1"
  %_0.i.i77.1 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i62.1, i64 %_58.1
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i77.1, i64 16
  %len.i80.1 = load i64, ptr %32, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i81.1 = icmp ugt i64 %len.i80.1, %_39
  br i1 %_4.i.i81.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86.1", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86.1": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79.1"
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i77.1, i64 8
  %_6.i83.1 = load ptr, ptr %33, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i84.1 = getelementptr inbounds nuw i32, ptr %_6.i83.1, i64 %_39
  %_54.1 = load i32, ptr %_0.i.i84.1, align 4, !noundef !15
  %_48.1 = add i32 %_54.1, %_49.1
  %_65.1 = icmp ugt i32 %21, 1
  %brmerge.1 = select i1 %_65.1, i1 true, i1 %_67
  br i1 %brmerge.1, label %panic5.invoke.split.loop.exit, label %bb34.1

bb34.1:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit86.1"
  %_61.1 = load i32, ptr %19, align 4, !noundef !15
  %34 = getelementptr inbounds nuw i32, ptr %p, i64 %_53.1
  %_64.1 = load i32, ptr %34, align 4, !noundef !15
  %_60.1 = mul i32 %_64.1, %_61.1
  %_66.1 = load i32, ptr %20, align 4, !noundef !15
  %_59.1 = mul i32 %_60.1, %_66.1
  %q.1 = add i32 %_48.1, %_59.1
  %_4.i.i95.1 = icmp ugt i64 %len.i66.1, %_39
  br i1 %_4.i.i95.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100.1", label %panic.i.i117.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100.1": ; preds = %bb34.1
  %_0.i.i98.1 = getelementptr inbounds nuw i32, ptr %_6.i69.1, i64 %_39
  %_69.1 = load i32, ptr %_0.i.i98.1, align 4, !noundef !15
  %_68.1 = icmp slt i32 %q.1, %_69.1
  br i1 %_68.1, label %bb37.1, label %bb17.loopexit

bb37.1:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit100.1"
  store i32 %q.1, ptr %_0.i.i98.1, align 4
  br label %bb17.loopexit

panic.i.i117.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit", %bb7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit45", %bb19, %bb34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65", %bb26.lr.ph, %bb26.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65.1", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72.1", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79.1", %bb34.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit", %bb15
  %35 = phi i64 [ 1, %bb15 ], [ %_79, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit" ], [ %_39, %bb34 ], [ %_39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79" ], [ %_58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72" ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65" ], [ %_38, %bb26.lr.ph ], [ %_38, %bb26.1 ], [ %_53.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65.1" ], [ %_58.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72.1" ], [ %_39, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79.1" ], [ %_39, %bb34.1 ], [ %_39, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit45" ], [ %_38, %bb19 ], [ %indvars.iv295, %bb7 ], [ %indvars.iv295, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit" ]
  %36 = phi i64 [ %len.i20, %bb15 ], [ %len.i26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit" ], [ %len.i66, %bb34 ], [ %len.i80, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79" ], [ %len.i59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72" ], [ %len.i66, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65" ], [ %len.i59, %bb26.lr.ph ], [ %len.i59.1, %bb26.1 ], [ %len.i66.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65.1" ], [ %len.i59.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72.1" ], [ %len.i80.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79.1" ], [ %len.i66.1, %bb34.1 ], [ %len.i46, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit45" ], [ %len.i39, %bb19 ], [ %len.i115, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit" ], [ %len.i, %bb7 ]
  %37 = phi ptr [ @alloc_bcb49e920a3ba87d9e484cc33a98c524, %bb15 ], [ @alloc_5554d71ab0281b044ddf3f976bc7046b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit" ], [ @alloc_46107255d94b854bcb82862ca3370e87, %bb34 ], [ @alloc_7548566ae303f2ff03f66129afdc3ba3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79" ], [ @alloc_239f04e72e439d78c92b38a8baf4dab2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72" ], [ @alloc_d0443c52d7b59269158243a571eac4b5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65" ], [ @alloc_35801a12c37c78919d3cbe6956af5eb3, %bb26.lr.ph ], [ @alloc_35801a12c37c78919d3cbe6956af5eb3, %bb26.1 ], [ @alloc_d0443c52d7b59269158243a571eac4b5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit65.1" ], [ @alloc_239f04e72e439d78c92b38a8baf4dab2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E.exit72.1" ], [ @alloc_7548566ae303f2ff03f66129afdc3ba3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E.exit79.1" ], [ @alloc_46107255d94b854bcb82862ca3370e87, %bb34.1 ], [ @alloc_70f436f01bd9ac7c881a80a7ceeab435, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit45" ], [ @alloc_b56f14a803ebf901c777b26987ed4eed, %bb19 ], [ @alloc_2d43b99c8c45744d9d7977b95c4474e2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit" ], [ @alloc_30bd5d6be587ab8ee2ed8b272743aeff, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483649) %35, i64 noundef range(i64 0, 2305843009213693952) %36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %37) #27
          to label %panic.i.i117.cont unwind label %cleanup

panic.i.i117.cont:                                ; preds = %panic.i.i117.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E.exit121": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E.exit"
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i118 = load ptr, ptr %38, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i119 = getelementptr inbounds nuw i32, ptr %_6.i118, i64 %indvars.iv295
  store i32 0, ptr %_0.i.i119, align 4
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count
  br i1 %exitcond.not, label %bb12.preheader, label %bb7

terminate:                                        ; preds = %cleanup
  %39 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb46:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
