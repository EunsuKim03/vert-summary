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
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hf22cdc516ef73a09E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17hf22cdc516ef73a09E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1681
  %5 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %5, align 8, !alias.scope !1681
  %_9 = sext i32 %k to i64
  %_8 = add nsw i64 %_9, 1
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hedc74ae304ce4e99E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %profit, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %_0.i.i.i99 = icmp sgt i32 %n, 1
  %spec.select100 = select i1 %_0.i.i.i99, i32 2, i32 1
  %6 = getelementptr inbounds nuw i8, ptr %profit, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %profit, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  %_38 = load i32, ptr %price, align 8
  br label %bb5

cleanup:                                          ; preds = %panic.i.i62.invoke, %panic
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17ha7b4e261e82a415dE"(ptr noalias noundef align 8 dereferenceable(24) %profit) #30
          to label %bb34 unwind label %terminate

bb5:                                              ; preds = %bb5.backedge, %_ZN5alloc3vec9from_elem17hf22cdc516ef73a09E.exit
  %iter.sroa.0.0 = phi i32 [ 1, %_ZN5alloc3vec9from_elem17hf22cdc516ef73a09E.exit ], [ %iter.sroa.0.1, %bb5.backedge ]
  %iter.sroa.7.0 = phi i8 [ 0, %_ZN5alloc3vec9from_elem17hf22cdc516ef73a09E.exit ], [ %iter.sroa.7.1, %bb5.backedge ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %k
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hc06584ef492d1df7E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb5
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %k
  %11 = zext i1 %_0.i3.i.i to i32
  %spec.select71 = add nsw i32 %iter.sroa.0.0, %11
  %spec.select72 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %12 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hc06584ef492d1df7E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hc06584ef492d1df7E.exit": ; preds = %bb2.i.i, %bb5
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb5 ], [ %spec.select71, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb5 ], [ %spec.select72, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb5 ], [ %12, %bb2.i.i ]
  br i1 %or.cond, label %bb9, label %bb11.preheader

bb11.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hc06584ef492d1df7E.exit"
  br i1 %_0.i.i.i99, label %bb16.preheader.lr.ph, label %bb5.backedge

bb5.backedge:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h248d9376b938329eE.exit", %bb11.preheader
  br label %bb5

bb16.preheader.lr.ph:                             ; preds = %bb11.preheader
  %_45 = add nsw i64 %_0.sroa.3.0.i.i, -1
  br label %bb16.preheader

bb9:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hc06584ef492d1df7E.exit"
  %13 = getelementptr inbounds nuw i8, ptr %profit, i64 16
  %len.i = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i = icmp ugt i64 %len.i, %_9
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit", label %panic.i.i62.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit": ; preds = %bb9
  %14 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  %_6.i = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_9
  %_61 = add nsw i64 %_7, -1
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i9 = load i64, ptr %15, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i10 = icmp ult i64 %_61, %len.i9
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit", label %panic.i.i62.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit"
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i12 = load ptr, ptr %16, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_61
  %_0 = load i32, ptr %_0.i.i13, align 4, !noundef !15
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17ha7b4e261e82a415dE"(ptr noalias noundef align 8 dereferenceable(24) %profit)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %profit)
  ret i32 %_0

bb16.preheader:                                   ; preds = %bb16.preheader.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h248d9376b938329eE.exit"
  %spec.select102 = phi i32 [ %spec.select100, %bb16.preheader.lr.ph ], [ %spec.select, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h248d9376b938329eE.exit" ]
  %iter1.sroa.0.0101 = phi i32 [ 1, %bb16.preheader.lr.ph ], [ %spec.select102, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h248d9376b938329eE.exit" ]
  %_36 = zext nneg i32 %iter1.sroa.0.0101 to i64
  %_37 = icmp samesign ult i32 %iter1.sroa.0.0101, 2
  %_6.i56 = load ptr, ptr %7, align 8, !nonnull !15
  %_0.i.i57 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i56, i64 %_45
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i57, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i57, i64 8
  br i1 %_37, label %bb16.preheader.split, label %panic

bb16.preheader.split:                             ; preds = %bb16.preheader
  %len.i53 = load i64, ptr %6, align 8
  %_4.i.i54 = icmp ult i64 %_45, %len.i53
  %19 = getelementptr inbounds nuw i32, ptr %price, i64 %_36
  %_35 = load i32, ptr %19, align 4, !noundef !15
  %_34 = sub i32 %_35, %_38
  br i1 %_4.i.i54, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit59", label %panic.i.i62.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit33": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit66"
  %_6.i30 = load ptr, ptr %9, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i31 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i30, i64 %_0.sroa.3.0.i.i
  %_54 = zext nneg i32 %iter1.sroa.0.0101 to i64
  %_53 = add nsw i64 %_54, -1
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i31, i64 16
  %len.i34 = load i64, ptr %20, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i35 = icmp ult i64 %_53, %len.i34
  br i1 %_4.i.i35, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit40", label %panic.i.i62.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit40": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit33"
  %_4.i.i48 = icmp ugt i64 %len.i34, %_54
  br i1 %_4.i.i48, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h248d9376b938329eE.exit", label %panic.i.i62.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h248d9376b938329eE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit40"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i31, i64 8
  %_6.i37 = load ptr, ptr %21, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i38 = getelementptr inbounds nuw i32, ptr %_6.i37, i64 %_53
  %_48 = load i32, ptr %_0.i.i38, align 4, !noundef !15
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %_33, i32 %_48)
  %_0.i.i51 = getelementptr inbounds nuw i32, ptr %_6.i37, i64 %_54
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i51, align 4
  %_0.i.i.i = icmp slt i32 %spec.select102, %n
  %22 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select102, %22
  br i1 %_0.i.i.i, label %bb16.preheader, label %bb5.backedge

panic:                                            ; preds = %bb16.preheader
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_36, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_35486b20b5ff856ebd8392742e3b3ccd) #28
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit59": ; preds = %bb16.preheader.split
  %len.i60 = load i64, ptr %17, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i61.not = icmp eq i64 %len.i60, 0
  br i1 %_4.i.i61.not, label %panic.i.i62.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit66"

panic.i.i62.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit59", %bb16.preheader.split, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit40", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit33", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit66", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit", %bb9
  %23 = phi i64 [ %_9, %bb9 ], [ %_61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit59" ], [ %_45, %bb16.preheader.split ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit40" ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit33" ], [ %_0.sroa.3.0.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit66" ]
  %24 = phi i64 [ %len.i, %bb9 ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit" ], [ %len.i60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit59" ], [ %len.i53, %bb16.preheader.split ], [ %len.i34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit40" ], [ %len.i34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit33" ], [ %len.i27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit66" ]
  %25 = phi ptr [ @alloc_f8d9581fe936e953ac51a7e8b5687314, %bb9 ], [ @alloc_b274709009eb3d9c8a1df5bbf890cf53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit" ], [ @alloc_209afce7b4c06ca5af88a1c704ecd021, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit59" ], [ @alloc_28aa43d5f64527ce4a67b49f9d52d122, %bb16.preheader.split ], [ @alloc_8e894ee9319548fe6c2e6bef8a98c9b5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit40" ], [ @alloc_cee765cebe5878ed92c5ed05969ec737, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit33" ], [ @alloc_ef9d9bf0a09eaaed94e6d012d83d0504, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit66" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %23, i64 noundef range(i64 0, 2305843009213693952) %24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %25) #27
          to label %panic.i.i62.cont unwind label %cleanup

panic.i.i62.cont:                                 ; preds = %panic.i.i62.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E.exit66": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit59"
  %_6.i63 = load ptr, ptr %18, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_41 = load i32, ptr %_6.i63, align 4, !noundef !15
  %_33 = add i32 %_34, %_41
  %len.i27 = load i64, ptr %8, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i28 = icmp ult i64 %_0.sroa.3.0.i.i, %len.i27
  br i1 %_4.i.i28, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE.exit33", label %panic.i.i62.invoke

terminate:                                        ; preds = %cleanup
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb34:                                             ; preds = %cleanup
  resume { ptr, i32 } %10
}
