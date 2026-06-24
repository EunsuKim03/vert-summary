define noundef i32 @f_gold(i32 noundef %n, i32 noundef %insert, i32 noundef %remove, i32 noundef %copy) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  switch i32 %n, label %bb4 [
    i32 0, label %bb30
    i32 1, label %bb3
  ]

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_8, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hb58941cf2f976412E.exit, !prof !1033

bb14.i.i:                                         ; preds = %bb4
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hb58941cf2f976412E.exit: ; preds = %bb4
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_8, ptr %4, align 8, !alias.scope !1644
  %_52 = add i32 %copy, %remove
  %_0.i.not.i.i128 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i128, label %bb12, label %bb11.lr.ph

bb11.lr.ph:                                       ; preds = %_ZN5alloc3vec9from_elem17hb58941cf2f976412E.exit
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.1134 = zext i1 %.not to i8
  %_0.i3.i.i129.not = icmp eq i32 %n, 1
  %iter.sroa.0.1133 = select i1 %_0.i3.i.i129.not, i32 1, i32 2
  br label %bb11

bb3:                                              ; preds = %start
  br label %bb30

cleanup:                                          ; preds = %panic.i.i60.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb32 unwind label %terminate

bb11:                                             ; preds = %bb11.lr.ph, %bb27
  %_0.sroa.3.0.i.i137 = phi i32 [ 1, %bb11.lr.ph ], [ %_0.sroa.3.0.i.i, %bb27 ]
  %iter.sroa.7.1136 = phi i8 [ %iter.sroa.7.1134, %bb11.lr.ph ], [ %iter.sroa.7.1, %bb27 ]
  %iter.sroa.0.1135 = phi i32 [ %iter.sroa.0.1133, %bb11.lr.ph ], [ %iter.sroa.0.1, %bb27 ]
  %6 = and i32 %_0.sroa.3.0.i.i137, 1
  %_17 = icmp eq i32 %6, 0
  %_23 = add i32 %_0.sroa.3.0.i.i137, -1
  %_22 = sext i32 %_23 to i64
  %len.i9 = load i64, ptr %4, align 8, !noalias !37, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_22
  br i1 %_17, label %bb13, label %bb20

bb12:                                             ; preds = %bb27, %_ZN5alloc3vec9from_elem17hb58941cf2f976412E.exit
  %len.i = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_9
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit", label %panic.i.i60.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit": ; preds = %bb12
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_9
  %7 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  br label %bb30

bb30:                                             ; preds = %start, %bb3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit"
  %_0.sroa.0.0 = phi i32 [ %7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit" ], [ %insert, %bb3 ], [ %n, %start ]
  ret i32 %_0.sroa.0.0

bb20:                                             ; preds = %bb11
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8", label %panic.i.i60.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8": ; preds = %bb20
  %_46 = sext i32 %_0.sroa.3.0.i.i137 to i64
  %_4.i.i17 = icmp ugt i64 %len.i9, %_46
  br i1 %_4.i.i17, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit", label %panic.i.i60.invoke

bb13:                                             ; preds = %bb11
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15", label %panic.i.i60.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15": ; preds = %bb13
  %_26 = sext i32 %_0.sroa.3.0.i.i137 to i64
  %_4.i.i45 = icmp ugt i64 %len.i9, %_26
  br i1 %_4.i.i45, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit50", label %panic.i.i60.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8"
  %_6.i5 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i6 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_22
  %_39 = load i32, ptr %_0.i.i6, align 4, !noundef !37
  %_0.i.i20 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_46
  %8 = add i32 %_39, %insert
  store i32 %8, ptr %_0.i.i20, align 4
  %len.i22 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i23 = icmp ugt i64 %len.i22, %_46
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit28", label %panic.i.i60.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit28": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit"
  %_58 = add i32 %_0.sroa.3.0.i.i137, 1
  %_57 = ashr exact i32 %_58, 1
  %_56 = sext i32 %_57 to i64
  %_4.i.i30 = icmp ugt i64 %len.i22, %_56
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35", label %panic.i.i60.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit28"
  %_6.i25 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_46
  %_48 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_56
  %_53 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_51 = add i32 %_52, %_53
  %_0.sroa.0.0.i.i36 = tail call noundef i32 @llvm.smin.i32(i32 %_51, i32 %_48)
  store i32 %_0.sroa.0.0.i.i36, ptr %_0.i.i26, align 4
  br label %bb27

bb27:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit64", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1136 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1135, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1135, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1135, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.1136, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1135
  br i1 %or.cond, label %bb12, label %bb11

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15"
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_22
  %_19 = load i32, ptr %_0.i.i13, align 4, !noundef !37
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_26
  %10 = add i32 %_19, %insert
  store i32 %10, ptr %_0.i.i48, align 4
  %len.i51 = load i64, ptr %4, align 8, !alias.scope !1665, !noalias !1668, !noundef !37
  %_4.i.i52 = icmp ugt i64 %len.i51, %_26
  br i1 %_4.i.i52, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit57", label %panic.i.i60.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit57": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit50"
  %_36 = ashr exact i32 %_0.sroa.3.0.i.i137, 1
  %_35 = sext i32 %_36 to i64
  %_4.i.i59 = icmp ugt i64 %len.i51, %_35
  br i1 %_4.i.i59, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit64", label %panic.i.i60.invoke

panic.i.i60.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit57", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit50", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit28", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8", %bb13, %bb20, %bb12
  %11 = phi i64 [ %_9, %bb12 ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit57" ], [ %_26, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit50" ], [ %_26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15" ], [ %_56, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit28" ], [ %_46, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit" ], [ %_46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8" ], [ %_22, %bb13 ], [ %_22, %bb20 ]
  %12 = phi i64 [ %len.i, %bb12 ], [ %len.i51, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit57" ], [ %len.i51, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit50" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15" ], [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit28" ], [ %len.i22, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8" ], [ %len.i9, %bb13 ], [ %len.i9, %bb20 ]
  %13 = phi ptr [ @alloc_d7a8e2adc7ec0f56c5780171e97fb02d, %bb12 ], [ @alloc_35352c2ff09062dcf5bbfae369e0b004, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit57" ], [ @alloc_4c5f045056744bd5bc8e014f2edb4275, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit50" ], [ @alloc_c3efc25e74d281167c8465fa10ee9beb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15" ], [ @alloc_eb6ecc6d1757dd01ec3512c961bd2b31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit28" ], [ @alloc_18372fd498fd6bdccf84f1241b7f5de0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit" ], [ @alloc_53d7ddfc3fb0fef0792666f9b24fb355, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8" ], [ @alloc_ffb41230b81c253686b828f337e688af, %bb13 ], [ @alloc_fe4b15ced38097695000c15ed93061d6, %bb20 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %11, i64 noundef range(i64 0, 2305843009213693952) %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %panic.i.i60.cont unwind label %cleanup

panic.i.i60.cont:                                 ; preds = %panic.i.i60.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit64": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit57"
  %_6.i54 = load ptr, ptr %3, align 8, !alias.scope !1665, !noalias !1668, !nonnull !37, !noundef !37
  %_0.i.i55 = getelementptr inbounds nuw i32, ptr %_6.i54, i64 %_26
  %_28 = load i32, ptr %_0.i.i55, align 4, !noundef !37
  %_0.i.i62 = getelementptr inbounds nuw i32, ptr %_6.i54, i64 %_35
  %_32 = load i32, ptr %_0.i.i62, align 4, !noundef !37
  %_31 = add i32 %_32, %copy
  %_0.sroa.0.0.i.i65 = tail call noundef i32 @llvm.smin.i32(i32 %_31, i32 %_28)
  store i32 %_0.sroa.0.0.i.i65, ptr %_0.i.i55, align 4
  br label %bb27

terminate:                                        ; preds = %cleanup
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb32:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
