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
  br i1 %_4.i.i.not, label %panic.i.i32.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i32.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb21 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit
  store i32 1, ptr %res.1.i.i, align 4
  %_0.i.not.i.i55 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i55, label %bb9, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %bb2
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.161 = zext i1 %.not to i8
  %_0.i3.i.i56.not = icmp eq i32 %n, 1
  %iter.sroa.0.160 = select i1 %_0.i3.i.i56.not, i32 1, i32 2
  br label %bb12.preheader

bb5.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit36"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.163 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.162, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.162, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.162, %spec.select
  %6 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %6, i8 %iter.sroa.7.163, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.162
  br i1 %or.cond, label %bb9, label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i64 = phi i32 [ 1, %bb12.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.163 = phi i8 [ %iter.sroa.7.161, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.162 = phi i32 [ %iter.sroa.0.160, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %_0.i3.i.i1748 = icmp slt i32 %_0.sroa.3.0.i.i64, %n
  %spec.select3849 = zext i1 %_0.i3.i.i1748 to i32
  %iter1.sroa.0.150 = add nsw i32 %_0.sroa.3.0.i.i64, %spec.select3849
  %not._0.i3.i.i1748 = xor i1 %_0.i3.i.i1748, true
  %iter1.sroa.7.151 = zext i1 %not._0.i3.i.i1748 to i8
  br label %bb14

bb9:                                              ; preds = %bb5.loopexit, %bb2
  %len.i5 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i6 = icmp ugt i64 %len.i5, %_4
  br i1 %_4.i.i6, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit", label %panic.i.i32.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit": ; preds = %bb9
  %_6.i8 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_4
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

bb14:                                             ; preds = %bb12.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit36"
  %_0.sroa.3.0.i.i1954 = phi i32 [ %_0.sroa.3.0.i.i64, %bb12.preheader ], [ %_0.sroa.3.0.i.i19, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit36" ]
  %iter1.sroa.7.153 = phi i8 [ %iter1.sroa.7.151, %bb12.preheader ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit36" ]
  %iter1.sroa.0.152 = phi i32 [ %iter1.sroa.0.150, %bb12.preheader ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit36" ]
  %_25 = sub i32 %_0.sroa.3.0.i.i1954, %_0.sroa.3.0.i.i64
  %_24 = sext i32 %_25 to i64
  %len.i23 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i24 = icmp ugt i64 %len.i23, %_24
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit29", label %panic.i.i32.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit29": ; preds = %bb14
  %_28 = sext i32 %_0.sroa.3.0.i.i1954 to i64
  %_4.i.i31 = icmp ugt i64 %len.i23, %_28
  br i1 %_4.i.i31, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit36", label %panic.i.i32.invoke

panic.i.i32.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit29", %bb14, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit, %bb9
  %7 = phi i64 [ %_4, %bb9 ], [ 0, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit ], [ %_28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit29" ], [ %_24, %bb14 ]
  %8 = phi i64 [ %len.i5, %bb9 ], [ %_3, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit ], [ %len.i23, %bb14 ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit29" ]
  %9 = phi ptr [ @alloc_a89279eca10d763b375081b3ce383be9, %bb9 ], [ @alloc_ba7b89a02b596be26738d6b12ac4b47e, %_ZN5alloc3vec9from_elem17h6b4933821f1eb344E.exit ], [ @alloc_30d3186cf66eef713f35ce35fc16fac4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit29" ], [ @alloc_8adb672ab69616c54652515da4c039df, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %panic.i.i32.cont unwind label %cleanup

panic.i.i32.cont:                                 ; preds = %panic.i.i32.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E.exit36": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE.exit29"
  %_6.i26 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_24
  %_21 = load i32, ptr %_0.i.i27, align 4, !noundef !37
  %_0.i.i34 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_28
  %10 = load i32, ptr %_0.i.i34, align 4, !noundef !37
  %11 = add i32 %10, %_21
  store i32 %11, ptr %_0.i.i34, align 4
  %_10.i.i10 = trunc nuw i8 %iter1.sroa.7.153 to i1
  %_0.i.not.i.i15 = icmp sgt i32 %iter1.sroa.0.152, %n
  %or.cond40 = select i1 %_10.i.i10, i1 true, i1 %_0.i.not.i.i15
  %_0.i3.i.i17 = icmp slt i32 %iter1.sroa.0.152, %n
  %not.or.cond40 = xor i1 %or.cond40, true
  %narrow45 = select i1 %not.or.cond40, i1 %_0.i3.i.i17, i1 false
  %spec.select38 = zext i1 %narrow45 to i32
  %iter1.sroa.0.1 = add nsw i32 %iter1.sroa.0.152, %spec.select38
  %12 = select i1 %or.cond40, i1 true, i1 %_0.i3.i.i17
  %iter1.sroa.7.1 = select i1 %12, i8 %iter1.sroa.7.153, i8 1
  %_0.sroa.3.0.i.i19 = select i1 %_10.i.i10, i32 undef, i32 %iter1.sroa.0.152
  br i1 %or.cond40, label %bb5.loopexit, label %bb14

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb21:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
