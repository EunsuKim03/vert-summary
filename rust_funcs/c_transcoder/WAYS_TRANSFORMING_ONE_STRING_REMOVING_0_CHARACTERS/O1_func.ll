define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %a, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %b) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1675, !noundef !15
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %_0.i11 = load i64, ptr %1, align 8, !alias.scope !1678, !noundef !15
  %_2.i12 = icmp ult i64 %_0.i11, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i12)
  %_7 = icmp eq i64 %_0.i11, 0
  br i1 %_7, label %bb3, label %bb4

bb66:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %24, %cleanup2 ], [ %2, %cleanup ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b, i64 noundef 4, i64 noundef 4)
          to label %bb67 unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit, %bb14.i.i, %bb4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb66

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_9)
  %_10 = add nuw nsw i64 %_0.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1687
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_10, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1687, !noundef !15
  %3 = trunc nuw i64 %_17.i.i to i1
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %4, align 8, !range !1035, !noalias !1687, !noundef !15
  %5 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %3, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit, !prof !1036

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %5, align 8, !noalias !1687
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28
          to label %.noexc13 unwind label %cleanup

.noexc13:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %5, align 8, !noalias !1687, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1687
  store i64 %err.0.i.i, ptr %_9, align 8, !alias.scope !1687
  %6 = getelementptr inbounds nuw i8, ptr %_9, i64 8
  store ptr %res.1.i.i, ptr %6, align 8, !alias.scope !1687
  %7 = getelementptr inbounds nuw i8, ptr %_9, i64 16
  store i64 %_10, ptr %7, align 8, !alias.scope !1687
  %_11 = add nuw nsw i64 %_0.i11, 1
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h23b505eab079eff0E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_9, i64 noundef %_11)
          to label %bb6 unwind label %cleanup

bb3:                                              ; preds = %start
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b, i64 noundef 4, i64 noundef 4)
          to label %bb64 unwind label %cleanup3

bb6:                                              ; preds = %_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_9)
  %8 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %20 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb14.preheader

cleanup2:                                         ; preds = %panic.i.i211.invoke
  %24 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb66 unwind label %terminate

bb8.loopexit:                                     ; preds = %bb58, %bb14.preheader
  %_0.i.i.i = icmp ult i64 %spec.select330, %_0.i11
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select330, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb14.preheader, label %bb12

bb14.preheader:                                   ; preds = %bb6, %bb8.loopexit
  %spec.select330 = phi i64 [ 1, %bb6 ], [ %spec.select, %bb8.loopexit ]
  %iter.sroa.0.0329 = phi i64 [ 0, %bb6 ], [ %spec.select330, %bb8.loopexit ]
  %_0.i.i.i32324 = icmp ult i64 %iter.sroa.0.0329, %_0.i
  br i1 %_0.i.i.i32324, label %bb16.lr.ph, label %bb8.loopexit

bb16.lr.ph:                                       ; preds = %bb14.preheader
  %spec.select217326 = add nuw nsw i64 %iter.sroa.0.0329, 1
  %_26 = icmp eq i64 %iter.sroa.0.0329, 0
  %_78 = add nsw i64 %iter.sroa.0.0329, -1
  br label %bb16

bb12:                                             ; preds = %bb8.loopexit
  %_93 = add nsw i64 %_0.i11, -1
  %25 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %25, align 8, !alias.scope !1688, !noalias !1691, !noundef !15
  %_4.i.i17 = icmp ult i64 %_93, %len.i
  br i1 %_4.i.i17, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit": ; preds = %bb12
  %26 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %26, align 8, !alias.scope !1688, !noalias !1691, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_93
  %_94 = add nsw i64 %_0.i, -1
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i19 = load i64, ptr %27, align 8, !alias.scope !1693, !noalias !1696, !noundef !15
  %_4.i.i20 = icmp ult i64 %_94, %len.i19
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i22 = load ptr, ptr %28, align 8, !alias.scope !1693, !noalias !1696, !nonnull !15, !noundef !15
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i22, i64 %_94
  %29 = load i32, ptr %_0.i.i23, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
          to label %bb61 unwind label %cleanup

bb61:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b, i64 noundef 4, i64 noundef 4)
          to label %bb64 unwind label %cleanup3

bb67:                                             ; preds = %bb66, %cleanup3
  %.pn9 = phi { ptr, i32 } [ %30, %cleanup3 ], [ %.pn, %bb66 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
          to label %bb68 unwind label %terminate

cleanup3:                                         ; preds = %bb61, %bb3
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %bb67

bb64:                                             ; preds = %bb61, %bb3
  %_0.sroa.0.0 = phi i32 [ 1, %bb3 ], [ %29, %bb61 ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
  ret i32 %_0.sroa.0.0

bb16:                                             ; preds = %bb16.lr.ph, %bb58
  %spec.select217328 = phi i64 [ %spec.select217326, %bb16.lr.ph ], [ %spec.select217, %bb58 ]
  %iter1.sroa.0.0327 = phi i64 [ %iter.sroa.0.0329, %bb16.lr.ph ], [ %spec.select217328, %bb58 ]
  br i1 %_26, label %bb18, label %bb42

bb42:                                             ; preds = %bb16
  %len.i37 = load i64, ptr %0, align 8, !alias.scope !1698, !noalias !1701, !noundef !15
  %_4.i.i38 = icmp ult i64 %iter1.sroa.0.0327, %len.i37
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit": ; preds = %bb42
  %len.i43 = load i64, ptr %1, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i44 = icmp ult i64 %iter.sroa.0.0329, %len.i43
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit49", label %panic.i.i211.invoke

bb18:                                             ; preds = %bb16
  %_27 = icmp eq i64 %iter1.sroa.0.0327, 0
  %len.i125 = load i64, ptr %0, align 8, !noalias !15, !noundef !15
  br i1 %_27, label %bb19, label %bb27

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit49": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit"
  %_6.i40 = load ptr, ptr %8, align 8, !alias.scope !1698, !noalias !1701, !nonnull !15, !noundef !15
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i40, i64 %iter1.sroa.0.0327
  %_63 = load i32, ptr %_0.i.i41, align 4, !range !1708, !noundef !15
  %_6.i46 = load ptr, ptr %9, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i46, i64 %iter.sroa.0.0329
  %_66 = load i32, ptr %_0.i.i47, align 4, !range !1708, !noundef !15
  %_62 = icmp eq i32 %_63, %_66
  br i1 %_62, label %bb45, label %bb52

bb52:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit49"
  %len.i50 = load i64, ptr %10, align 8, !alias.scope !1709, !noalias !1712, !noundef !15
  %_4.i.i51 = icmp ult i64 %iter.sroa.0.0329, %len.i50
  br i1 %_4.i.i51, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit56", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit56": ; preds = %bb52
  %_6.i53 = load ptr, ptr %11, align 8, !alias.scope !1709, !noalias !1712, !nonnull !15, !noundef !15
  %_0.i.i54 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i53, i64 %iter.sroa.0.0329
  %_86 = add nsw i64 %iter1.sroa.0.0327, -1
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i54, i64 16
  %len.i64 = load i64, ptr %31, align 8, !alias.scope !1714, !noalias !1717, !noundef !15
  %_4.i.i65 = icmp ult i64 %_86, %len.i64
  br i1 %_4.i.i65, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit70", label %panic.i.i211.invoke

bb45:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit49"
  %len.i57 = load i64, ptr %12, align 8, !alias.scope !1719, !noalias !1722, !noundef !15
  %_4.i.i58 = icmp ult i64 %iter.sroa.0.0329, %len.i57
  br i1 %_4.i.i58, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit63", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit63": ; preds = %bb45
  %_6.i60 = load ptr, ptr %13, align 8, !alias.scope !1719, !noalias !1722, !nonnull !15, !noundef !15
  %_0.i.i61 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i60, i64 %iter.sroa.0.0329
  %_73 = add nsw i64 %iter1.sroa.0.0327, -1
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i61, i64 16
  %len.i83 = load i64, ptr %32, align 8, !alias.scope !1724, !noalias !1727, !noundef !15
  %_4.i.i84 = icmp ult i64 %_73, %len.i83
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit89", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit70": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit56"
  %_4.i.i78 = icmp ult i64 %iter1.sroa.0.0327, %len.i64
  br i1 %_4.i.i78, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit", label %panic.i.i211.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit70"
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i54, i64 8
  %_6.i67 = load ptr, ptr %33, align 8, !alias.scope !1714, !noalias !1717, !nonnull !15, !noundef !15
  %_0.i.i68 = getelementptr inbounds nuw i32, ptr %_6.i67, i64 %_86
  %_82 = load i32, ptr %_0.i.i68, align 4, !noundef !15
  %_0.i.i81 = getelementptr inbounds nuw i32, ptr %_6.i67, i64 %iter1.sroa.0.0327
  store i32 %_82, ptr %_0.i.i81, align 4
  br label %bb58

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit89": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit63"
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i61, i64 8
  %_6.i86 = load ptr, ptr %34, align 8, !alias.scope !1724, !noalias !1727, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_73
  %_69 = load i32, ptr %_0.i.i87, align 4, !noundef !15
  %_4.i.i91 = icmp ult i64 %_78, %len.i57
  br i1 %_4.i.i91, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit96", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit96": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit89"
  %_0.i.i94 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i60, i64 %_78
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i94, i64 16
  %len.i97 = load i64, ptr %35, align 8, !alias.scope !1729, !noalias !1732, !noundef !15
  %_4.i.i98 = icmp ult i64 %_73, %len.i97
  br i1 %_4.i.i98, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit103", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit103": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit96"
  %_4.i.i112 = icmp ult i64 %iter1.sroa.0.0327, %len.i83
  br i1 %_4.i.i112, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit117", label %panic.i.i211.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit117": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit103"
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i94, i64 8
  %_6.i100 = load ptr, ptr %36, align 8, !alias.scope !1729, !noalias !1732, !nonnull !15, !noundef !15
  %_0.i.i101 = getelementptr inbounds nuw i32, ptr %_6.i100, i64 %_73
  %_74 = load i32, ptr %_0.i.i101, align 4, !noundef !15
  %_0.i.i115 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %iter1.sroa.0.0327
  %37 = add i32 %_74, %_69
  store i32 %37, ptr %_0.i.i115, align 4
  br label %bb58

bb58:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit215", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit194", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit173", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit117"
  %_0.i.i.i32 = icmp ult i64 %spec.select217328, %_0.i
  %_0.i1.i.i35 = zext i1 %_0.i.i.i32 to i64
  %spec.select217 = add nuw i64 %spec.select217328, %_0.i1.i.i35
  br i1 %_0.i.i.i32, label %bb16, label %bb8.loopexit

bb27:                                             ; preds = %bb18
  %_4.i.i119 = icmp ult i64 %iter1.sroa.0.0327, %len.i125
  br i1 %_4.i.i119, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit124", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit124": ; preds = %bb27
  %len.i132 = load i64, ptr %1, align 8, !alias.scope !1734, !noalias !1737, !noundef !15
  %_4.i.i133.not = icmp eq i64 %len.i132, 0
  br i1 %_4.i.i133.not, label %panic.i.i211.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit138"

bb19:                                             ; preds = %bb18
  %_4.i.i126.not = icmp eq i64 %len.i125, 0
  br i1 %_4.i.i126.not, label %panic.i.i211.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit131"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit131": ; preds = %bb19
  %len.i195 = load i64, ptr %1, align 8, !alias.scope !1739, !noalias !1742, !noundef !15
  %_4.i.i196.not = icmp eq i64 %len.i195, 0
  br i1 %_4.i.i196.not, label %panic.i.i211.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit201"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit138": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit124"
  %_6.i121 = load ptr, ptr %14, align 8, !alias.scope !1744, !noalias !1747, !nonnull !15, !noundef !15
  %_0.i.i122 = getelementptr inbounds nuw i32, ptr %_6.i121, i64 %iter1.sroa.0.0327
  %_40 = load i32, ptr %_0.i.i122, align 4, !range !1708, !noundef !15
  %_6.i135 = load ptr, ptr %15, align 8, !alias.scope !1734, !noalias !1737, !nonnull !15, !noundef !15
  %_43 = load i32, ptr %_6.i135, align 4, !range !1708, !noundef !15
  %_39 = icmp eq i32 %_40, %_43
  br i1 %_39, label %bb30, label %bb35

bb35:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit138"
  %len.i139 = load i64, ptr %16, align 8, !alias.scope !1749, !noalias !1752, !noundef !15
  %_4.i.i140.not = icmp eq i64 %len.i139, 0
  br i1 %_4.i.i140.not, label %panic.i.i211.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit145"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit145": ; preds = %bb35
  %_6.i142 = load ptr, ptr %17, align 8, !alias.scope !1749, !noalias !1752, !nonnull !15, !noundef !15
  %_58 = add nsw i64 %iter1.sroa.0.0327, -1
  %38 = getelementptr inbounds nuw i8, ptr %_6.i142, i64 16
  %len.i153 = load i64, ptr %38, align 8, !alias.scope !1754, !noalias !1757, !noundef !15
  %_4.i.i154 = icmp ult i64 %_58, %len.i153
  br i1 %_4.i.i154, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit159", label %panic.i.i211.invoke

bb30:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit138"
  %len.i146 = load i64, ptr %18, align 8, !alias.scope !1759, !noalias !1762, !noundef !15
  %_4.i.i147.not = icmp eq i64 %len.i146, 0
  br i1 %_4.i.i147.not, label %panic.i.i211.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit152"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit152": ; preds = %bb30
  %_6.i149 = load ptr, ptr %19, align 8, !alias.scope !1759, !noalias !1762, !nonnull !15, !noundef !15
  %_50 = add nsw i64 %iter1.sroa.0.0327, -1
  %39 = getelementptr inbounds nuw i8, ptr %_6.i149, i64 16
  %len.i174 = load i64, ptr %39, align 8, !alias.scope !1764, !noalias !1767, !noundef !15
  %_4.i.i175 = icmp ult i64 %_50, %len.i174
  br i1 %_4.i.i175, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit180", label %panic.i.i211.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit159": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit145"
  %_4.i.i168 = icmp ult i64 %iter1.sroa.0.0327, %len.i153
  br i1 %_4.i.i168, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit173", label %panic.i.i211.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit173": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit159"
  %40 = getelementptr inbounds nuw i8, ptr %_6.i142, i64 8
  %_6.i156 = load ptr, ptr %40, align 8, !alias.scope !1754, !noalias !1757, !nonnull !15, !noundef !15
  %_0.i.i157 = getelementptr inbounds nuw i32, ptr %_6.i156, i64 %_58
  %_54 = load i32, ptr %_0.i.i157, align 4, !noundef !15
  %_0.i.i171 = getelementptr inbounds nuw i32, ptr %_6.i156, i64 %iter1.sroa.0.0327
  store i32 %_54, ptr %_0.i.i171, align 4
  br label %bb58

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit180": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit152"
  %_4.i.i189 = icmp ult i64 %iter1.sroa.0.0327, %len.i174
  br i1 %_4.i.i189, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit194", label %panic.i.i211.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit194": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit180"
  %41 = getelementptr inbounds nuw i8, ptr %_6.i149, i64 8
  %_6.i177 = load ptr, ptr %41, align 8, !alias.scope !1764, !noalias !1767, !nonnull !15, !noundef !15
  %_0.i.i178 = getelementptr inbounds nuw i32, ptr %_6.i177, i64 %_50
  %_46 = load i32, ptr %_0.i.i178, align 4, !noundef !15
  %_0.i.i192 = getelementptr inbounds nuw i32, ptr %_6.i177, i64 %iter1.sroa.0.0327
  %42 = add i32 %_46, 1
  store i32 %42, ptr %_0.i.i192, align 4
  br label %bb58

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit201": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit131"
  %_6.i128 = load ptr, ptr %20, align 8, !alias.scope !1769, !noalias !1772, !nonnull !15, !noundef !15
  %_30 = load i32, ptr %_6.i128, align 4, !range !1708, !noundef !15
  %_6.i198 = load ptr, ptr %21, align 8, !alias.scope !1739, !noalias !1742, !nonnull !15, !noundef !15
  %_33 = load i32, ptr %_6.i198, align 4, !range !1708, !noundef !15
  %_29 = icmp eq i32 %_30, %_33
  %. = zext i1 %_29 to i32
  %len.i202 = load i64, ptr %22, align 8, !alias.scope !1774, !noalias !1777, !noundef !15
  %_4.i.i203.not = icmp eq i64 %len.i202, 0
  br i1 %_4.i.i203.not, label %panic.i.i211.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit208"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit208": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit201"
  %_6.i205 = load ptr, ptr %23, align 8, !alias.scope !1774, !noalias !1777, !nonnull !15, !noundef !15
  %43 = getelementptr inbounds nuw i8, ptr %_6.i205, i64 16
  %len.i209 = load i64, ptr %43, align 8, !alias.scope !1779, !noalias !1782, !noundef !15
  %_4.i.i210.not = icmp eq i64 %len.i209, 0
  br i1 %_4.i.i210.not, label %panic.i.i211.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit215"

panic.i.i211.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit208", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit201", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit131", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit180", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit152", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit159", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit145", %bb30, %bb35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit124", %bb19, %bb27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit103", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit96", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit89", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit63", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit70", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit56", %bb45, %bb52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit", %bb42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit", %bb12
  %44 = phi i64 [ %_93, %bb12 ], [ %_94, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit208" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit201" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit131" ], [ %iter1.sroa.0.0327, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit180" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit152" ], [ %iter1.sroa.0.0327, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit159" ], [ %_58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit145" ], [ 0, %bb30 ], [ 0, %bb35 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit124" ], [ 0, %bb19 ], [ %iter1.sroa.0.0327, %bb27 ], [ %iter1.sroa.0.0327, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit103" ], [ %_73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit96" ], [ %_78, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit89" ], [ %_73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit63" ], [ %iter1.sroa.0.0327, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit70" ], [ %_86, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit56" ], [ %iter.sroa.0.0329, %bb45 ], [ %iter.sroa.0.0329, %bb52 ], [ %iter.sroa.0.0329, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit" ], [ %iter1.sroa.0.0327, %bb42 ]
  %45 = phi i64 [ %len.i, %bb12 ], [ %len.i19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit" ], [ %len.i209, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit208" ], [ %len.i202, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit201" ], [ %len.i195, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit131" ], [ %len.i174, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit180" ], [ %len.i174, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit152" ], [ %len.i153, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit159" ], [ %len.i153, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit145" ], [ %len.i146, %bb30 ], [ %len.i139, %bb35 ], [ %len.i132, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit124" ], [ %len.i125, %bb19 ], [ %len.i125, %bb27 ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit103" ], [ %len.i97, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit96" ], [ %len.i57, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit89" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit63" ], [ %len.i64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit70" ], [ %len.i64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit56" ], [ %len.i57, %bb45 ], [ %len.i50, %bb52 ], [ %len.i43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit" ], [ %len.i37, %bb42 ]
  %46 = phi ptr [ @alloc_0a16c3125cc6bab935142c91cea93e80, %bb12 ], [ @alloc_dd67ea89b5644bb05725e50b4df6688b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit" ], [ @alloc_61bb65203435de9b41df5c621b38036f, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit208" ], [ @alloc_df949329c11abe3c58bdc361191879eb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit201" ], [ @alloc_f98e6e646c05a6c5e37cccb30b8b88bb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit131" ], [ @alloc_8694ea0f3961cc7bf551d46849a0c483, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit180" ], [ @alloc_bdb8c5fb7c5ef3cafe4826a03b716226, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit152" ], [ @alloc_c9a3d92d01657868b6dab2e71a680de4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit159" ], [ @alloc_385247ccc61107d393044313eb115c52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit145" ], [ @alloc_8673982a8796fe66743bf99b6aac8bb1, %bb30 ], [ @alloc_dbdc8ef9ca32770a7b4e69e792ad1d31, %bb35 ], [ @alloc_feee86c2e45536296ad46361c6a49bea, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit124" ], [ @alloc_52da8339862be3aca76782067f628214, %bb19 ], [ @alloc_6c4d6176fcff5f01f8d5160623672307, %bb27 ], [ @alloc_92c9b73a7ed86c6283c9f63cf655c7a2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit103" ], [ @alloc_0672ea045b4da33727945e5e13cffe53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit96" ], [ @alloc_8279e950242aa569aff7a93911db9c8e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit89" ], [ @alloc_1b48e366bc3a9f420850e7d5d1babf90, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit63" ], [ @alloc_9fce28314282ad78b81c2c988896b426, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit70" ], [ @alloc_c655c6356d30e8de6bd36a6ed9a9fa33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit56" ], [ @alloc_e4c31eaea05db6f83371620805c4a253, %bb45 ], [ @alloc_071548ff8d4fec0d7784fbb777fc5790, %bb52 ], [ @alloc_4165738a2498148db73988ae2d8cadbc, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E.exit" ], [ @alloc_e2c25de43ad76fbeffb4a359d9df634f, %bb42 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %44, i64 noundef range(i64 0, 2305843009213693952) %45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %46) #27
          to label %panic.i.i211.cont unwind label %cleanup2

panic.i.i211.cont:                                ; preds = %panic.i.i211.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit215": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit208"
  %47 = getelementptr inbounds nuw i8, ptr %_6.i205, i64 8
  %_6.i212 = load ptr, ptr %47, align 8, !alias.scope !1779, !noalias !1782, !nonnull !15, !noundef !15
  store i32 %., ptr %_6.i212, align 4
  br label %bb58

terminate:                                        ; preds = %bb67, %bb66, %cleanup2
  %48 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb68:                                             ; preds = %bb67
  resume { ptr, i32 } %.pn9
}
