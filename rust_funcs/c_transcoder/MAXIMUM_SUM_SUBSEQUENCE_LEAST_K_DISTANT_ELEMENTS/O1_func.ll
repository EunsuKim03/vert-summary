define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %MS = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %MS)
  %_5 = sext i32 %N to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17had6ac58c0ad0fbd1E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17had6ac58c0ad0fbd1E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %MS, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %MS, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %MS, i64 16
  store i64 %_5, ptr %5, align 8, !alias.scope !1644
  %_7 = add nsw i64 %_5, -1
  %_8 = icmp ult i64 %_7, 2
  br i1 %_8, label %bb2, label %panic2.invoke

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17had6ac58c0ad0fbd1E.exit
  %_4.i.i.not = icmp eq i32 %N, 0
  br i1 %_4.i.i.not, label %panic.i.i35.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfe2aa4810f05c521E.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfe2aa4810f05c521E.exit": ; preds = %bb2
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_7
  %_6 = load i32, ptr %6, align 4, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %res.1.i.i, i64 %_7
  store i32 %_6, ptr %_0.i.i, align 4
  %_14 = add i32 %N, -1
  %_0.i.i.i.i53 = icmp sgt i32 %_14, 0
  br i1 %_0.i.i.i.i53, label %bb9.lr.ph, label %bb10

bb9.lr.ph:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfe2aa4810f05c521E.exit"
  %7 = add i32 %N, -2
  %_22 = add i32 %k, 1
  %_42 = sext i32 %k to i64
  %_41 = add nsw i64 %_42, 1
  br label %bb9

cleanup:                                          ; preds = %panic2.invoke, %panic.i.i35.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %MS, i64 noundef 4, i64 noundef 4)
          to label %bb26 unwind label %terminate

bb9:                                              ; preds = %bb9.lr.ph, %bb22
  %_0.sroa.3.0.i.i.i57 = phi i32 [ %7, %bb9.lr.ph ], [ %_0.sroa.3.0.i.i.i, %bb22 ]
  %iter.sroa.4.156 = phi i32 [ %7, %bb9.lr.ph ], [ %iter.sroa.4.1, %bb22 ]
  %_21 = add i32 %_22, %_0.sroa.3.0.i.i.i57
  %_20.not = icmp slt i32 %_21, %N
  %_34 = sext i32 %_0.sroa.3.0.i.i.i57 to i64
  %_35 = icmp ult i32 %_0.sroa.3.0.i.i.i57, 2
  br i1 %_20.not, label %bb16, label %bb11

bb10:                                             ; preds = %bb22, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfe2aa4810f05c521E.exit"
  %len.i6 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i7.not = icmp eq i64 %len.i6, 0
  br i1 %_4.i.i7.not, label %panic.i.i35.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit": ; preds = %bb10
  %_6.i9 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0 = load i32, ptr %_6.i9, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %MS, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %MS)
  ret i32 %_0

bb16:                                             ; preds = %bb9
  br i1 %_35, label %bb17, label %panic2.invoke

bb11:                                             ; preds = %bb9
  br i1 %_35, label %bb12, label %panic2.invoke

bb17:                                             ; preds = %bb16
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %_34
  %_33 = load i32, ptr %9, align 4, !noundef !37
  %_40 = add nsw i64 %_41, %_34
  %len.i12 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i13 = icmp ult i64 %_40, %len.i12
  br i1 %_4.i.i13, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit18", label %panic.i.i35.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit18": ; preds = %bb17
  %_46 = add nuw nsw i64 %_34, 1
  %_4.i.i20 = icmp ult i64 %_46, %len.i12
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit25", label %panic.i.i35.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit25": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit18"
  %_6.i15 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i16 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_40
  %_37 = load i32, ptr %_0.i.i16, align 4, !noundef !37
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_46
  %_43 = load i32, ptr %_0.i.i23, align 4, !noundef !37
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_43, i32 %_37)
  %_0.i.i30 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_34
  %10 = add i32 %_0.sroa.0.0.i, %_33
  store i32 %10, ptr %_0.i.i30, align 4
  br label %bb22

bb22:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit39", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit25"
  %_0.i.i.i.i = icmp sgt i32 %iter.sroa.4.156, 0
  %11 = add nsw i32 %iter.sroa.4.156, -1
  %iter.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %11, i32 %iter.sroa.4.156
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %11, i32 undef
  br i1 %_0.i.i.i.i, label %bb9, label %bb10

bb12:                                             ; preds = %bb11
  %_30 = add nuw nsw i64 %_34, 1
  %len.i33 = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i34 = icmp ult i64 %_30, %len.i33
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit39", label %panic.i.i35.invoke

panic.i.i35.invoke:                               ; preds = %bb12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit18", %bb17, %bb2, %bb10
  %12 = phi i64 [ 0, %bb10 ], [ %_7, %bb2 ], [ %_30, %bb12 ], [ %_46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit18" ], [ %_40, %bb17 ]
  %13 = phi i64 [ %len.i6, %bb10 ], [ %_5, %bb2 ], [ %len.i33, %bb12 ], [ %len.i12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit18" ], [ %len.i12, %bb17 ]
  %14 = phi ptr [ @alloc_884045d8870b1591caefab4ed70cc999, %bb10 ], [ @alloc_376996516e3995a4a85a3c64982d5390, %bb2 ], [ @alloc_5e9ae3eb7ed99a1e1399b44f4acbbb7d, %bb12 ], [ @alloc_5b2ae08f4e83eb5d36049e451f35c054, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit18" ], [ @alloc_c8d2aeb487ccf9fd9b09859cf68ffe85, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483647, 2147483650) %12, i64 noundef range(i64 0, 2305843009213693952) %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #25
          to label %panic.i.i35.cont unwind label %cleanup

panic.i.i35.cont:                                 ; preds = %panic.i.i35.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E.exit39": ; preds = %bb12
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_34
  %_24 = load i32, ptr %15, align 4, !noundef !37
  %_6.i36 = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i37 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_30
  %_27 = load i32, ptr %_0.i.i37, align 4, !noundef !37
  %_0.sroa.0.0.i40 = tail call noundef i32 @llvm.smax.i32(i32 %_27, i32 %_24)
  %_0.i.i45 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_34
  store i32 %_0.sroa.0.0.i40, ptr %_0.i.i45, align 4
  br label %bb22

panic2.invoke:                                    ; preds = %bb11, %bb16, %_ZN5alloc3vec9from_elem17had6ac58c0ad0fbd1E.exit
  %16 = phi i64 [ %_7, %_ZN5alloc3vec9from_elem17had6ac58c0ad0fbd1E.exit ], [ %_34, %bb16 ], [ %_34, %bb11 ]
  %17 = phi ptr [ @alloc_82beaa4e32699d39d53e1c2c4ce0afc3, %_ZN5alloc3vec9from_elem17had6ac58c0ad0fbd1E.exit ], [ @alloc_37c001e1b30c7dbdbabb9fffbd5bafd8, %bb11 ], [ @alloc_807e8347ac6b9c7926349e2d02dda384, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %16, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #26
          to label %panic2.cont unwind label %cleanup

panic2.cont:                                      ; preds = %panic2.invoke
  unreachable

terminate:                                        ; preds = %cleanup
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb26:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
