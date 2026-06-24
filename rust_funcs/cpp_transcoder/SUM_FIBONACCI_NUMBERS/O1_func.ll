define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %fibo = alloca [24 x i8], align 8
  %_2 = icmp slt i32 %n, 1
  br i1 %_2, label %bb20, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fibo)
  %narrow = add nuw i32 %n, 1
  %_4 = zext i32 %narrow to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE.exit, !prof !1033

bb14.i.i:                                         ; preds = %bb2
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE.exit: ; preds = %bb2
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %fibo, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %fibo, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %fibo, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1644
  store i32 0, ptr %res.1.i.i, align 4
  %len.i4 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i5 = icmp ugt i64 %len.i4, 1
  br i1 %_4.i.i5, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9", label %panic.i.i46.invoke

cleanup:                                          ; preds = %panic.i.i46.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %fibo, i64 noundef 4, i64 noundef 4)
          to label %bb22 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9": ; preds = %_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE.exit
  %_6.i7 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i7, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %len.i10 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  switch i64 %len.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit22" [
    i64 0, label %panic.i.i46.invoke
    i64 1, label %panic.i.i18
  ]

panic.i.i18:                                      ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9"
  br label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit22": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9"
  %_6.i13 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_10 = load i32, ptr %_6.i13, align 4, !noundef !37
  %_0.i.i20 = getelementptr inbounds nuw i8, ptr %_6.i13, i64 4
  %_13 = load i32, ptr %_0.i.i20, align 4, !noundef !37
  %6 = add i32 %_13, %_10
  %_0.i.not.i.i92.not = icmp eq i32 %n, 1
  br i1 %_0.i.not.i.i92.not, label %bb14, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit22"
  %_0.i3.i.i93 = icmp slt i32 %n, 3
  %iter.sroa.7.198 = zext i1 %_0.i3.i.i93 to i8
  %iter.sroa.0.197 = select i1 %_0.i3.i.i93, i32 2, i32 3
  br label %bb13

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50"
  %_0.sroa.3.0.i.i102 = phi i32 [ 2, %bb13.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50" ]
  %iter.sroa.7.1101 = phi i8 [ %iter.sroa.7.198, %bb13.lr.ph ], [ %iter.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50" ]
  %iter.sroa.0.1100 = phi i32 [ %iter.sroa.0.197, %bb13.lr.ph ], [ %iter.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50" ]
  %sum.sroa.0.099 = phi i32 [ %6, %bb13.lr.ph ], [ %11, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50" ]
  %_27 = add i32 %_0.sroa.3.0.i.i102, -1
  %_26 = sext i32 %_27 to i64
  %len.i23 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i24 = icmp ugt i64 %len.i23, %_26
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit29", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit29": ; preds = %bb13
  %_6.i26 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_26
  %_23 = load i32, ptr %_0.i.i27, align 4, !noundef !37
  %_32 = add i32 %_0.sroa.3.0.i.i102, -2
  %_31 = sext i32 %_32 to i64
  %_4.i.i31 = icmp ugt i64 %len.i23, %_31
  br i1 %_4.i.i31, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit36", label %panic.i.i46.invoke

bb14:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit22"
  %sum.sroa.0.0.lcssa = phi i32 [ %6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit22" ], [ %11, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50" ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %fibo, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fibo)
  br label %bb20

bb20:                                             ; preds = %start, %bb14
  %sum.sroa.0.1 = phi i32 [ %sum.sroa.0.0.lcssa, %bb14 ], [ 0, %start ]
  ret i32 %sum.sroa.0.1

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit36": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit29"
  %_35 = sext i32 %_0.sroa.3.0.i.i102 to i64
  %_4.i.i38 = icmp ugt i64 %len.i23, %_35
  br i1 %_4.i.i38, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit43", label %panic.i.i46.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit43": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit36"
  %_0.i.i34 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_31
  %_28 = load i32, ptr %_0.i.i34, align 4, !noundef !37
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_35
  %7 = add i32 %_28, %_23
  store i32 %7, ptr %_0.i.i41, align 4
  %len.i44 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i45 = icmp ugt i64 %len.i44, %_35
  br i1 %_4.i.i45, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50", label %panic.i.i46.invoke

panic.i.i46.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit43", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit36", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit29", %bb13, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9", %_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE.exit, %panic.i.i18
  %8 = phi i64 [ %len.i10, %panic.i.i18 ], [ 1, %_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE.exit ], [ %len.i10, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9" ], [ %_35, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit43" ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit36" ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit29" ], [ %_26, %bb13 ]
  %9 = phi i64 [ %len.i10, %panic.i.i18 ], [ %len.i4, %_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE.exit ], [ %len.i10, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9" ], [ %len.i44, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit43" ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit36" ], [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit29" ], [ %len.i23, %bb13 ]
  %10 = phi ptr [ @alloc_3efb8872d4853b7fab3f3a761e9dfd3a, %panic.i.i18 ], [ @alloc_73a63e50d166d5280b949ccad499aa5a, %_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE.exit ], [ @alloc_ed6bc424ef08c30bd8b3574572d5e2b2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit9" ], [ @alloc_493f7219e20cfb50e7c98bf6d6d49e41, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit43" ], [ @alloc_bfadee939c0c39a4ad974d2e3686ae29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit36" ], [ @alloc_a4fa71d21c3d6e58dc27797525e2ee60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit29" ], [ @alloc_2af4623e3420df37cb350b210573df7d, %bb13 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.i.i46.cont unwind label %cleanup

panic.i.i46.cont:                                 ; preds = %panic.i.i46.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE.exit50": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E.exit43"
  %_6.i47 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i47, i64 %_35
  %_36 = load i32, ptr %_0.i.i48, align 4, !noundef !37
  %11 = add i32 %_36, %sum.sroa.0.099
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1101 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1100, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1100, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow78 = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow78 to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1100, %spec.select
  %12 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %12, i8 %iter.sroa.7.1101, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1100
  br i1 %or.cond, label %bb14, label %bb13

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb22:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
