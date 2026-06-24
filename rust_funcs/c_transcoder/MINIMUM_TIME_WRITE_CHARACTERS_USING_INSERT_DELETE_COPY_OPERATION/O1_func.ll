define noundef i32 @f_gold(i32 noundef %N, i32 noundef %insert, i32 noundef %remove, i32 noundef %copy) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  switch i32 %N, label %bb4 [
    i32 0, label %bb26
    i32 1, label %bb3
  ]

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_9 = sext i32 %N to i64
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
  %_41 = add i32 %copy, %remove
  %_0.i.not.i.i75 = icmp slt i32 %N, 1
  br i1 %_0.i.not.i.i75, label %bb12, label %bb11.lr.ph

bb11.lr.ph:                                       ; preds = %_ZN5alloc3vec9from_elem17hb58941cf2f976412E.exit
  %.not = icmp eq i32 %N, 1
  %iter.sroa.7.181 = zext i1 %.not to i8
  %_0.i3.i.i76.not = icmp eq i32 %N, 1
  %iter.sroa.0.180 = select i1 %_0.i3.i.i76.not, i32 1, i32 2
  br label %bb11

bb3:                                              ; preds = %start
  br label %bb26

cleanup:                                          ; preds = %panic.i.i39.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb28 unwind label %terminate

bb11:                                             ; preds = %bb11.lr.ph, %bb23
  %_0.sroa.3.0.i.i84 = phi i32 [ 1, %bb11.lr.ph ], [ %_0.sroa.3.0.i.i, %bb23 ]
  %iter.sroa.7.183 = phi i8 [ %iter.sroa.7.181, %bb11.lr.ph ], [ %iter.sroa.7.1, %bb23 ]
  %iter.sroa.0.182 = phi i32 [ %iter.sroa.0.180, %bb11.lr.ph ], [ %iter.sroa.0.1, %bb23 ]
  %6 = and i32 %_0.sroa.3.0.i.i84, 1
  %_17 = icmp eq i32 %6, 0
  %_23 = add i32 %_0.sroa.3.0.i.i84, -1
  %_22 = sext i32 %_23 to i64
  %len.i9 = load i64, ptr %4, align 8, !noalias !37, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_22
  br i1 %_17, label %bb13, label %bb18

bb12:                                             ; preds = %bb23, %_ZN5alloc3vec9from_elem17hb58941cf2f976412E.exit
  %len.i = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_9
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit", label %panic.i.i39.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit": ; preds = %bb12
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_9
  %7 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  br label %bb26

bb26:                                             ; preds = %start, %bb3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit"
  %_0.sroa.0.0 = phi i32 [ %7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit" ], [ %insert, %bb3 ], [ %N, %start ]
  ret i32 %_0.sroa.0.0

bb18:                                             ; preds = %bb11
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8", label %panic.i.i39.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8": ; preds = %bb18
  %_6.i5 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i6 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_22
  %_34 = load i32, ptr %_0.i.i6, align 4, !noundef !37
  %_47 = add i32 %_0.sroa.3.0.i.i84, 1
  %_46 = ashr exact i32 %_47, 1
  %_45 = sext i32 %_46 to i64
  %_4.i.i17 = icmp ugt i64 %len.i9, %_45
  br i1 %_4.i.i17, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit22", label %panic.i.i39.invoke

bb13:                                             ; preds = %bb11
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15", label %panic.i.i39.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15": ; preds = %bb13
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_22
  %_19 = load i32, ptr %_0.i.i13, align 4, !noundef !37
  %_30 = ashr exact i32 %_0.sroa.3.0.i.i84, 1
  %_29 = sext i32 %_30 to i64
  %_4.i.i30 = icmp ugt i64 %len.i9, %_29
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35", label %panic.i.i39.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit22": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8"
  %_50 = sext i32 %_0.sroa.3.0.i.i84 to i64
  %_4.i.i24 = icmp ugt i64 %len.i9, %_50
  br i1 %_4.i.i24, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit", label %panic.i.i39.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit22"
  %_0.i.i20 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_45
  %_42 = load i32, ptr %_0.i.i20, align 4, !noundef !37
  %_40 = add i32 %_41, %_42
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_40, i32 %insert)
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_50
  %8 = add i32 %_0.sroa.0.0.i, %_34
  store i32 %8, ptr %_0.i.i27, align 4
  br label %bb23

bb23:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit43", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.183 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.182, %N
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.182, %N
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.182, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.183, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.182
  br i1 %or.cond, label %bb12, label %bb11

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15"
  %_33 = sext i32 %_0.sroa.3.0.i.i84 to i64
  %_4.i.i38 = icmp ugt i64 %len.i9, %_33
  br i1 %_4.i.i38, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit43", label %panic.i.i39.invoke

panic.i.i39.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit22", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8", %bb13, %bb18, %bb12
  %10 = phi i64 [ %_9, %bb12 ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35" ], [ %_29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit22" ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8" ], [ %_22, %bb13 ], [ %_22, %bb18 ]
  %11 = phi i64 [ %len.i, %bb12 ], [ %len.i9, %bb18 ], [ %len.i9, %bb13 ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit22" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15" ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35" ]
  %12 = phi ptr [ @alloc_cb864bbe9de1183d4fb3dd70ba3432a1, %bb12 ], [ @alloc_b077da47b33a5807ad4fe2622c82a287, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35" ], [ @alloc_8cedce4506ee0c620fde347025a1b377, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit15" ], [ @alloc_dfe111779e39601df6ea898a8b9008b6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit22" ], [ @alloc_0c2cca98555e779888e68565a081e255, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit8" ], [ @alloc_5a315c1d3637a61de6b3479dd54b62c9, %bb13 ], [ @alloc_c9053690c813750e966f2d0961ba9d1d, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %10, i64 noundef range(i64 0, 2305843009213693952) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #25
          to label %panic.i.i39.cont unwind label %cleanup

panic.i.i39.cont:                                 ; preds = %panic.i.i39.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE.exit43": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E.exit35"
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_29
  %_26 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_25 = add i32 %_26, %copy
  %_0.sroa.0.0.i36 = tail call noundef i32 @llvm.smin.i32(i32 %_25, i32 %insert)
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_33
  %13 = add i32 %_0.sroa.0.0.i36, %_19
  store i32 %13, ptr %_0.i.i41, align 4
  br label %bb23

terminate:                                        ; preds = %cleanup
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb28:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
