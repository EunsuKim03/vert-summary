define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_3, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hd918a30c5c9b1bd4E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hd918a30c5c9b1bd4E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_0.i.not.i.i45 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i45, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hd918a30c5c9b1bd4E.exit
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.150 = zext i1 %.not to i8
  %_0.i3.i.i46 = icmp ne i32 %n, 0
  %spec.select49 = zext i1 %_0.i3.i.i46 to i32
  br label %bb7

cleanup:                                          ; preds = %panic.i.i24.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb19 unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %bb15
  %_0.sroa.3.0.i.i53 = phi i32 [ 0, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %bb15 ]
  %iter.sroa.7.152 = phi i8 [ %iter.sroa.7.150, %bb7.lr.ph ], [ %iter.sroa.7.1, %bb15 ]
  %iter.sroa.0.151 = phi i32 [ %spec.select49, %bb7.lr.ph ], [ %iter.sroa.0.1, %bb15 ]
  %_12 = icmp slt i32 %_0.sroa.3.0.i.i53, 3
  br i1 %_12, label %bb9, label %bb11

bb8:                                              ; preds = %bb15, %_ZN5alloc3vec9from_elem17hd918a30c5c9b1bd4E.exit
  %len.i = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_4
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit", label %panic.i.i24.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_4
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb11:                                             ; preds = %bb7
  %_20 = add nsw i32 %_0.sroa.3.0.i.i53, -1
  %_19 = zext nneg i32 %_20 to i64
  %len.i2 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i3 = icmp ugt i64 %len.i2, %_19
  br i1 %_4.i.i3, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit8", label %panic.i.i24.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit8": ; preds = %bb11
  %_6.i5 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i6 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_19
  %_16 = load i32, ptr %_0.i.i6, align 4, !noundef !37
  %_26 = add nsw i32 %_0.sroa.3.0.i.i53, -2
  %_25 = zext nneg i32 %_26 to i64
  %_4.i.i16 = icmp ugt i64 %len.i2, %_25
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit21", label %panic.i.i24.invoke

bb9:                                              ; preds = %bb7
  %_15 = sext i32 %_0.sroa.3.0.i.i53 to i64
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_15
  br i1 %_4.i.i10, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E.exit", label %panic.i.i24.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E.exit": ; preds = %bb9
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_15
  store i32 %_0.sroa.3.0.i.i53, ptr %_0.i.i13, align 4
  br label %bb15

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit21": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit8"
  %_29 = zext nneg i32 %_0.sroa.3.0.i.i53 to i64
  %_4.i.i23 = icmp ugt i64 %len.i2, %_29
  br i1 %_4.i.i23, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E.exit28", label %panic.i.i24.invoke

panic.i.i24.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit21", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit8", %bb9, %bb11, %bb8
  %6 = phi i64 [ %_4, %bb8 ], [ %_29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit21" ], [ %_25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit8" ], [ %_15, %bb9 ], [ %_19, %bb11 ]
  %7 = phi i64 [ %len.i, %bb8 ], [ %len.i2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit21" ], [ %len.i2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit8" ], [ %len.i9, %bb9 ], [ %len.i2, %bb11 ]
  %8 = phi ptr [ @alloc_fbaffc26795e62f65b5de0b500c9cbd5, %bb8 ], [ @alloc_92c8ae88e3e68c1b9e961d97be198c3a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit21" ], [ @alloc_37680ec9da78c251d5079046e6724a62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit8" ], [ @alloc_1b36425c6d0e89ec7d97949e8bfa5581, %bb9 ], [ @alloc_d36b20e45d92c9d03e8252aa3bcc770e, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i24.cont unwind label %cleanup

panic.i.i24.cont:                                 ; preds = %panic.i.i24.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E.exit28": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E.exit21"
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_25
  %_22 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_29
  %_21 = mul i32 %_22, %_20
  %9 = add i32 %_21, %_16
  store i32 %9, ptr %_0.i.i26, align 4
  br label %bb15

bb15:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E.exit28"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.152 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.151, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.151, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.151, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.152, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.151
  br i1 %or.cond, label %bb8, label %bb7

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb19:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
