define noundef i32 @f_gold(i32 noundef %m, i64 %0, i64 %1, i32 noundef %n, i32 noundef %t) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %max_rev = alloca [24 x i8], align 8
  %revenue = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 8
  store i64 %0, ptr %x, align 8
  store i64 %1, ptr %revenue, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %max_rev)
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_7, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1032, !noalias !1644, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h5c2c4d128151d18dE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h5c2c4d128151d18dE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %max_rev, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %max_rev, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1644
  %6 = getelementptr inbounds nuw i8, ptr %max_rev, i64 16
  store i64 %_7, ptr %6, align 8, !alias.scope !1644
  %7 = xor i32 %t, -1
  %_0.i.not.i.i128 = icmp slt i32 %m, 1
  br i1 %_0.i.not.i.i128, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h5c2c4d128151d18dE.exit
  %.not = icmp eq i32 %m, 1
  %iter.sroa.7.1134 = zext i1 %.not to i8
  %_0.i3.i.i129.not = icmp eq i32 %m, 1
  %iter.sroa.0.1133 = select i1 %_0.i3.i.i129.not, i32 1, i32 2
  br label %bb7

cleanup:                                          ; preds = %panic.i.i68.invoke, %panic
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %max_rev, i64 noundef 4, i64 noundef 4)
          to label %bb35 unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %bb31
  %_0.sroa.3.0.i.i138 = phi i32 [ 1, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %bb31 ]
  %iter.sroa.7.1137 = phi i8 [ %iter.sroa.7.1134, %bb7.lr.ph ], [ %iter.sroa.7.1, %bb31 ]
  %iter.sroa.0.1136 = phi i32 [ %iter.sroa.0.1133, %bb7.lr.ph ], [ %iter.sroa.0.1, %bb31 ]
  %nxtbb.sroa.0.0135 = phi i32 [ 0, %bb7.lr.ph ], [ %nxtbb.sroa.0.1, %bb31 ]
  %_17 = icmp slt i32 %nxtbb.sroa.0.0135, %n
  br i1 %_17, label %bb9, label %bb28

bb8:                                              ; preds = %bb31, %_ZN5alloc3vec9from_elem17h5c2c4d128151d18dE.exit
  %len.i = load i64, ptr %6, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_8
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit", label %panic.i.i68.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_8
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %max_rev, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %max_rev)
  ret i32 %_0

bb28:                                             ; preds = %bb7
  %_70 = add i32 %_0.sroa.3.0.i.i138, -1
  %_69 = sext i32 %_70 to i64
  %len.i10 = load i64, ptr %6, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i11 = icmp ugt i64 %len.i10, %_69
  br i1 %_4.i.i11, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit16", label %panic.i.i68.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit16": ; preds = %bb28
  %_73 = sext i32 %_0.sroa.3.0.i.i138 to i64
  %_4.i.i18 = icmp ugt i64 %len.i10, %_73
  br i1 %_4.i.i18, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit", label %panic.i.i68.invoke

bb9:                                              ; preds = %bb7
  %_21 = sext i32 %nxtbb.sroa.0.0135 to i64
  %_23 = icmp ult i32 %nxtbb.sroa.0.0135, 2
  br i1 %_23, label %bb10, label %panic

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit16"
  %_6.i13 = load ptr, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i14 = getelementptr inbounds nuw i32, ptr %_6.i13, i64 %_69
  %_66 = load i32, ptr %_0.i.i14, align 4, !noundef !37
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i13, i64 %_73
  store i32 %_66, ptr %_0.i.i21, align 4
  br label %bb31

bb31:                                             ; preds = %bb26, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit72", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit"
  %nxtbb.sroa.0.1 = phi i32 [ %nxtbb.sroa.0.0135, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit72" ], [ %12, %bb26 ], [ %nxtbb.sroa.0.0135, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1137 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1136, %m
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1136, %m
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1136, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.1137, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1136
  br i1 %or.cond, label %bb8, label %bb7

bb10:                                             ; preds = %bb9
  %10 = getelementptr inbounds nuw i32, ptr %x, i64 %_21
  %_20 = load i32, ptr %10, align 4, !noundef !37
  %_19.not = icmp eq i32 %_20, %_0.sroa.3.0.i.i138
  br i1 %_19.not, label %bb14, label %bb11

panic:                                            ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_16f2540286b2fb06b3b1a2ae5091d25c) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb14:                                             ; preds = %bb10
  %_32.not = icmp sgt i32 %_0.sroa.3.0.i.i138, %t
  %len.i30 = load i64, ptr %6, align 8, !noalias !37, !noundef !37
  br i1 %_32.not, label %bb20, label %bb15

bb11:                                             ; preds = %bb10
  %_28 = add i32 %_0.sroa.3.0.i.i138, -1
  %_27 = sext i32 %_28 to i64
  %len.i23 = load i64, ptr %6, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i24 = icmp ugt i64 %len.i23, %_27
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit29", label %panic.i.i68.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit29": ; preds = %bb11
  %_31 = sext i32 %_0.sroa.3.0.i.i138 to i64
  %_4.i.i67 = icmp ugt i64 %len.i23, %_31
  br i1 %_4.i.i67, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit72", label %panic.i.i68.invoke

bb20:                                             ; preds = %bb14
  %_52 = add i32 %_0.sroa.3.0.i.i138, %7
  %_51 = sext i32 %_52 to i64
  %_4.i.i31 = icmp ugt i64 %len.i30, %_51
  br i1 %_4.i.i31, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit36", label %panic.i.i68.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit36": ; preds = %bb20
  %_6.i33 = load ptr, ptr %5, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_62 = add i32 %_0.sroa.3.0.i.i138, -1
  %_61 = sext i32 %_62 to i64
  %_4.i.i45 = icmp ugt i64 %len.i30, %_61
  br i1 %_4.i.i45, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit50", label %panic.i.i68.invoke

bb15:                                             ; preds = %bb14
  %_38 = add i32 %_0.sroa.3.0.i.i138, -1
  %_37 = sext i32 %_38 to i64
  %_4.i.i38 = icmp ugt i64 %len.i30, %_37
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit43", label %panic.i.i68.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit43": ; preds = %bb15
  %_45 = sext i32 %_0.sroa.3.0.i.i138 to i64
  %_4.i.i60 = icmp ugt i64 %len.i30, %_45
  br i1 %_4.i.i60, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit65", label %panic.i.i68.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit36"
  %_65 = sext i32 %_0.sroa.3.0.i.i138 to i64
  %_4.i.i52 = icmp ugt i64 %len.i30, %_65
  br i1 %_4.i.i52, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit57", label %panic.i.i68.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit57": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit50"
  %_0.i.i34 = getelementptr inbounds nuw i32, ptr %_6.i33, i64 %_51
  %_48 = load i32, ptr %_0.i.i34, align 4, !noundef !37
  %11 = getelementptr inbounds nuw i32, ptr %revenue, i64 %_21
  %_54 = load i32, ptr %11, align 4, !noundef !37
  %_47 = add i32 %_54, %_48
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i33, i64 %_61
  %_58 = load i32, ptr %_0.i.i48, align 4, !noundef !37
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_47, i32 %_58)
  %_0.i.i55 = getelementptr inbounds nuw i32, ptr %_6.i33, i64 %_65
  store i32 %x.y.i, ptr %_0.i.i55, align 4
  br label %bb26

bb26:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit65", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit57"
  %12 = add nuw nsw i32 %nxtbb.sroa.0.0135, 1
  br label %bb31

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit65": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit43"
  %_6.i40 = load ptr, ptr %5, align 8, !alias.scope !1665, !noalias !1668, !nonnull !37, !noundef !37
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i40, i64 %_37
  %_34 = load i32, ptr %_0.i.i41, align 4, !noundef !37
  %13 = getelementptr inbounds nuw i32, ptr %revenue, i64 %_21
  %_39 = load i32, ptr %13, align 4, !noundef !37
  %x.y.i58 = tail call noundef i32 @llvm.smax.i32(i32 %_34, i32 %_39)
  %_0.i.i63 = getelementptr inbounds nuw i32, ptr %_6.i40, i64 %_45
  store i32 %x.y.i58, ptr %_0.i.i63, align 4
  br label %bb26

panic.i.i68.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit29", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit43", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit50", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit36", %bb15, %bb20, %bb11, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit16", %bb28, %bb8
  %14 = phi i64 [ %_8, %bb8 ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit29" ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit43" ], [ %_65, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit50" ], [ %_61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit36" ], [ %_37, %bb15 ], [ %_51, %bb20 ], [ %_27, %bb11 ], [ %_73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit16" ], [ %_69, %bb28 ]
  %15 = phi i64 [ %len.i, %bb8 ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit29" ], [ %len.i30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit43" ], [ %len.i30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit50" ], [ %len.i30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit36" ], [ %len.i30, %bb15 ], [ %len.i30, %bb20 ], [ %len.i23, %bb11 ], [ %len.i10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit16" ], [ %len.i10, %bb28 ]
  %16 = phi ptr [ @alloc_536f2742b82e356298628f02acbdc513, %bb8 ], [ @alloc_2ff016569fc7c08ad7356a631862c77d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit29" ], [ @alloc_76be888b18e78490d4a9f5680151dba5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit43" ], [ @alloc_723c3865e6155afcf96c6cbae8511924, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit50" ], [ @alloc_99c267bd3f86329db36ec8dcb431e339, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit36" ], [ @alloc_14cf765e187977fde38349a60d7dd1e6, %bb15 ], [ @alloc_7031c29a128e8113c21ecacc0e42152a, %bb20 ], [ @alloc_bc933fe1ba23bbd69f495b428da4a369, %bb11 ], [ @alloc_e878cae4730fdfb82d1e8204768a81ec, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit16" ], [ @alloc_f69e59c62709a2b35b52782215373c56, %bb28 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %14, i64 noundef range(i64 0, 2305843009213693952) %15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #25
          to label %panic.i.i68.cont unwind label %cleanup

panic.i.i68.cont:                                 ; preds = %panic.i.i68.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E.exit72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E.exit29"
  %_6.i26 = load ptr, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_27
  %_24 = load i32, ptr %_0.i.i27, align 4, !noundef !37
  %_0.i.i70 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_31
  store i32 %_24, ptr %_0.i.i70, align 4
  br label %bb31

terminate:                                        ; preds = %cleanup
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb35:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
