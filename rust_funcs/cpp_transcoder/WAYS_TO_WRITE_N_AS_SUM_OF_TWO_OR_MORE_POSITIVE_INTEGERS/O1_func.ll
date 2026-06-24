define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %table, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %table, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %table, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i24.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i24.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb20 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit
  store i32 1, ptr %res.1.i.i, align 4
  %_0.i.i.i34 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i34, label %bb11.preheader, label %bb8

bb4.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit28", %bb11.preheader
  %_0.i.i.i = icmp slt i32 %spec.select37, %n
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select37, %6
  br i1 %_0.i.i.i, label %bb11.preheader, label %bb8

bb11.preheader:                                   ; preds = %bb2, %bb4.loopexit
  %spec.select37 = phi i32 [ %spec.select, %bb4.loopexit ], [ 2, %bb2 ]
  %iter.sroa.0.036 = phi i32 [ %spec.select37, %bb4.loopexit ], [ 1, %bb2 ]
  %_0.i.not.i.i42 = icmp sgt i32 %iter.sroa.0.036, %n
  br i1 %_0.i.not.i.i42, label %bb4.loopexit, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %bb11.preheader
  %.not = icmp eq i32 %iter.sroa.0.036, %n
  %iter1.sroa.7.148 = zext i1 %.not to i8
  %_0.i3.i.i43 = icmp slt i32 %iter.sroa.0.036, %n
  %spec.select3046 = zext i1 %_0.i3.i.i43 to i32
  %iter1.sroa.0.147 = add nsw i32 %iter.sroa.0.036, %spec.select3046
  br label %bb13

bb8:                                              ; preds = %bb4.loopexit, %bb2
  %len.i6 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i7 = icmp ugt i64 %len.i6, %_4
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit", label %panic.i.i24.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit": ; preds = %bb8
  %_6.i9 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i9, i64 %_4
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit28"
  %_0.sroa.3.0.i.i51 = phi i32 [ %iter.sroa.0.036, %bb13.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit28" ]
  %iter1.sroa.7.150 = phi i8 [ %iter1.sroa.7.148, %bb13.lr.ph ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit28" ]
  %iter1.sroa.0.149 = phi i32 [ %iter1.sroa.0.147, %bb13.lr.ph ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit28" ]
  %_25 = sub i32 %_0.sroa.3.0.i.i51, %iter.sroa.0.036
  %_24 = sext i32 %_25 to i64
  %len.i15 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i16 = icmp ugt i64 %len.i15, %_24
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit21", label %panic.i.i24.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit21": ; preds = %bb13
  %_28 = sext i32 %_0.sroa.3.0.i.i51 to i64
  %_4.i.i23 = icmp ugt i64 %len.i15, %_28
  br i1 %_4.i.i23, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit28", label %panic.i.i24.invoke

panic.i.i24.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit21", %bb13, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit, %bb8
  %7 = phi i64 [ %_4, %bb8 ], [ 0, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit ], [ %_28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit21" ], [ %_24, %bb13 ]
  %8 = phi i64 [ %len.i6, %bb8 ], [ %_3, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit ], [ %len.i15, %bb13 ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit21" ]
  %9 = phi ptr [ @alloc_7d395f208ce71b92e00f7b4fc3faa951, %bb8 ], [ @alloc_f6fbebde63c15a91de2463eecd111fee, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit ], [ @alloc_cfc8142fb27566ec0d6457b431b3fecd, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit21" ], [ @alloc_71bfa8cb3503c2d119d68462338d825f, %bb13 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %panic.i.i24.cont unwind label %cleanup

panic.i.i24.cont:                                 ; preds = %panic.i.i24.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit28": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit21"
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_24
  %_21 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_28
  %10 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %11 = add i32 %10, %_21
  store i32 %11, ptr %_0.i.i26, align 4
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.150 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter1.sroa.0.149, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter1.sroa.0.149, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select30 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nsw i32 %iter1.sroa.0.149, %spec.select30
  %12 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %12, i8 %iter1.sroa.7.150, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter1.sroa.0.149
  br i1 %or.cond, label %bb4.loopexit, label %bb13

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb20:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
