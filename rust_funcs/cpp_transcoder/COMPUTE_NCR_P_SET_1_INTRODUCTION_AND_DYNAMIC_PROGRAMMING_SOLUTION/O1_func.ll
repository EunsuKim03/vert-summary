define noundef i32 @f_gold(i32 noundef %n, i32 noundef %r, i32 noundef %p) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %C = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %C)
  %_6 = sext i32 %r to i64
  %_5 = add nsw i64 %_6, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %C, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %C, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %C, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_5, 0
  br i1 %_4.i.i.not, label %panic.i.i20.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i20.invoke, %panic2, %panic
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %C, i64 noundef 4, i64 noundef 4)
          to label %bb26 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE.exit
  store i32 1, ptr %res.1.i.i, align 4
  %_35 = icmp eq i32 %p, 0
  %_36 = icmp eq i32 %p, -1
  %_0.i.not.i.i69 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i69, label %bb9, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb2
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.175 = zext i1 %.not to i8
  %_0.i3.i.i70.not = icmp eq i32 %n, 1
  %iter.sroa.0.174 = select i1 %_0.i3.i.i70.not, i32 1, i32 2
  br label %bb8

bb5.loopexit:                                     ; preds = %bb21, %bb8
  %_10.i.i = trunc nuw i8 %iter.sroa.7.178 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.177, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.177, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.177, %spec.select
  %6 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %6, i8 %iter.sroa.7.178, i8 1
  br i1 %or.cond, label %bb9, label %bb8

bb8:                                              ; preds = %bb8.lr.ph, %bb5.loopexit
  %iter.sroa.7.178 = phi i8 [ %iter.sroa.7.175, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.177 = phi i32 [ %iter.sroa.0.174, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %iter.sroa.0.076 = phi i32 [ 1, %bb8.lr.ph ], [ %iter.sroa.0.177, %bb5.loopexit ]
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %iter.sroa.0.076, i32 %r)
  %_0.i.not.i.i.i60 = icmp slt i32 %x.y.i, 1
  br i1 %_0.i.not.i.i.i60, label %bb5.loopexit, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb8
  %_0.i3.i.i.i.not61 = icmp eq i32 %x.y.i, 1
  %spec.select3463 = zext i1 %_0.i3.i.i.i.not61 to i8
  %7 = add nsw i32 %x.y.i, -1
  %spec.select3362 = select i1 %_0.i3.i.i.i.not61, i32 1, i32 %7
  br label %bb16

bb9:                                              ; preds = %bb5.loopexit, %bb2
  %len.i6 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i7 = icmp ugt i64 %len.i6, %_6
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit", label %panic.i.i20.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit": ; preds = %bb9
  %_6.i9 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i9, i64 %_6
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %C, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %C)
  ret i32 %_0

bb16:                                             ; preds = %bb16.lr.ph, %bb21
  %_0.sroa.3.0.i.i.i68 = phi i32 [ %x.y.i, %bb16.lr.ph ], [ %_0.sroa.3.0.i.i.i, %bb21 ]
  %iter1.sroa.7.167 = phi i8 [ %spec.select3463, %bb16.lr.ph ], [ %iter1.sroa.7.1, %bb21 ]
  %iter1.sroa.4.166 = phi i32 [ %spec.select3362, %bb16.lr.ph ], [ %iter1.sroa.4.1, %bb21 ]
  %_29 = sext i32 %_0.sroa.3.0.i.i.i68 to i64
  %len.i11 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i12 = icmp ugt i64 %len.i11, %_29
  br i1 %_4.i.i12, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit17", label %panic.i.i20.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit17": ; preds = %bb16
  %_6.i14 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i15 = getelementptr inbounds nuw i32, ptr %_6.i14, i64 %_29
  %_34 = add i32 %_0.sroa.3.0.i.i.i68, -1
  %_33 = sext i32 %_34 to i64
  %_4.i.i19 = icmp ugt i64 %len.i11, %_33
  br i1 %_4.i.i19, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit24", label %panic.i.i20.invoke

panic.i.i20.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit17", %bb16, %_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE.exit, %bb9
  %8 = phi i64 [ %_6, %bb9 ], [ 0, %_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE.exit ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit17" ], [ %_29, %bb16 ]
  %9 = phi i64 [ %len.i6, %bb9 ], [ %_5, %_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE.exit ], [ %len.i11, %bb16 ], [ %len.i11, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit17" ]
  %10 = phi ptr [ @alloc_4ee38e030abe9edffc156d7d8df41a08, %bb9 ], [ @alloc_cbaabbe3db7d07e72a0b81e595cdb1a0, %_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE.exit ], [ @alloc_bc34b870f08b512910d22c1465f446fa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit17" ], [ @alloc_9fc43157b44e06407134cbf65a3b2177, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.i.i20.cont unwind label %cleanup

panic.i.i20.cont:                                 ; preds = %panic.i.i20.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit24": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit17"
  %_26 = load i32, ptr %_0.i.i15, align 4, !noundef !37
  %_0.i.i22 = getelementptr inbounds nuw i32, ptr %_6.i14, i64 %_33
  %_30 = load i32, ptr %_0.i.i22, align 4, !noundef !37
  %_25 = add i32 %_30, %_26
  br i1 %_35, label %panic, label %bb20

bb20:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit24"
  %_37 = icmp eq i32 %_25, -2147483648
  %_38 = and i1 %_36, %_37
  br i1 %_38, label %panic2, label %bb21

panic:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE.exit24"
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_feea7419fd2ad17d66c3c0585ae8ad88) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic
  unreachable

bb21:                                             ; preds = %bb20
  %11 = srem i32 %_25, %p
  store i32 %11, ptr %_0.i.i15, align 4
  %_10.i.i.i = trunc nuw i8 %iter1.sroa.7.167 to i1
  %_0.i.not.i.i.i = icmp slt i32 %iter1.sroa.4.166, 1
  %or.cond35 = select i1 %_10.i.i.i, i1 true, i1 %_0.i.not.i.i.i
  %_0.i3.i.i.i.not = icmp eq i32 %iter1.sroa.4.166, 1
  %12 = add nsw i32 %iter1.sroa.4.166, -1
  %spec.select33 = select i1 %_0.i3.i.i.i.not, i32 1, i32 %12
  %spec.select34 = select i1 %_0.i3.i.i.i.not, i8 1, i8 %iter1.sroa.7.167
  %iter1.sroa.4.1 = select i1 %or.cond35, i32 %iter1.sroa.4.166, i32 %spec.select33
  %iter1.sroa.7.1 = select i1 %or.cond35, i8 %iter1.sroa.7.167, i8 %spec.select34
  %_0.sroa.3.0.i.i.i = select i1 %_10.i.i.i, i32 undef, i32 %iter1.sroa.4.166
  br i1 %or.cond35, label %bb5.loopexit, label %bb16

panic2:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_feea7419fd2ad17d66c3c0585ae8ad88) #26
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb26:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
