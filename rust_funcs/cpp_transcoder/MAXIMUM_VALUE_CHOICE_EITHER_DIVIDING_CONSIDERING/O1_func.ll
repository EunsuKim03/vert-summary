define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %res = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %res, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i42.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i42.invoke, %bb2.i
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef 4, i64 noundef 4)
          to label %bb21 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit
  store i32 0, ptr %res.1.i.i, align 4
  %len.i6 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i7 = icmp ugt i64 %len.i6, 1
  br i1 %_4.i.i7, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit11", label %panic.i.i42.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit11": ; preds = %bb2
  %_6.i9 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i9, i64 4
  store i32 1, ptr %_0.i.i, align 4
  br label %bb6

bb6:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit46", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit11"
  %iter.sroa.0.0 = phi i32 [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit11" ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit46" ]
  %iter.sroa.7.0 = phi i8 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit11" ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit46" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2f8f57792f3be234E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb6
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %6 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %6
  %spec.select47 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %7 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2f8f57792f3be234E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2f8f57792f3be234E.exit": ; preds = %bb2.i.i, %bb6
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb6 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb6 ], [ %spec.select47, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb6 ], [ %7, %bb2.i.i ]
  %len.i.i = load i64, ptr %4, align 8, !noundef !37
  br i1 %or.cond, label %bb10, label %bb9

bb9:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2f8f57792f3be234E.exit"
  %_212 = lshr i64 %_0.sroa.3.0.i.i, 1
  %_4.i.i13 = icmp samesign ult i64 %_212, %len.i.i
  br i1 %_4.i.i13, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit", label %panic.i.i42.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit": ; preds = %bb9
  %_6.i15 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i16 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_212
  %_18 = load i32, ptr %_0.i.i16, align 4, !noundef !37
  %_26 = udiv i64 %_0.sroa.3.0.i.i, 3
  %_4.i.i20 = icmp samesign ult i64 %_26, %len.i.i
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit25", label %panic.i.i42.invoke

bb10:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2f8f57792f3be234E.exit"
  %_4.i.i18 = load ptr, ptr %3, align 8, !alias.scope !1655, !nonnull !37, !noundef !37
  %_3.not.i = icmp eq i64 %len.i.i, 0
  %8 = getelementptr i32, ptr %_4.i.i18, i64 %len.i.i
  %last.i = getelementptr i8, ptr %8, i64 -4
  %.not.i48 = icmp eq ptr %last.i, null
  %.not.i = or i1 %_3.not.i, %.not.i48
  br i1 %.not.i, label %bb2.i, label %bb18, !prof !1033

bb2.i:                                            ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_74f2b1d79e2c6c280d914fae146f98c6) #25
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

bb18:                                             ; preds = %bb10
  %_0 = load i32, ptr %last.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit25": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit"
  %_303 = lshr i64 %_0.sroa.3.0.i.i, 2
  %_4.i.i27 = icmp samesign ult i64 %_303, %len.i.i
  br i1 %_4.i.i27, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit32", label %panic.i.i42.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit32": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit25"
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_26
  %_23 = load i32, ptr %_0.i.i23, align 4, !noundef !37
  %_0.i.i30 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_303
  %_17 = add i32 %_23, %_18
  %_27 = load i32, ptr %_0.i.i30, align 4, !noundef !37
  %_16 = add i32 %_17, %_27
  %_34 = udiv i64 %_0.sroa.3.0.i.i, 5
  %_4.i.i34 = icmp samesign ult i64 %_34, %len.i.i
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit39", label %panic.i.i42.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit39": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit32"
  %_4.i.i41 = icmp ult i64 %_0.sroa.3.0.i.i, %len.i.i
  br i1 %_4.i.i41, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit46", label %panic.i.i42.invoke

panic.i.i42.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit39", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit32", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit25", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit", %bb9, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit, %bb2
  %9 = phi i64 [ 1, %bb2 ], [ 0, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit ], [ %_0.sroa.3.0.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit39" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit32" ], [ %_303, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit25" ], [ %_26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit" ], [ %_212, %bb9 ]
  %10 = phi i64 [ %len.i6, %bb2 ], [ %_3, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit ], [ %len.i.i, %bb9 ], [ %len.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit" ], [ %len.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit25" ], [ %len.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit32" ], [ %len.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit39" ]
  %11 = phi ptr [ @alloc_d15497a338d44fb24c3adcececc5f200, %bb2 ], [ @alloc_fe237a0f60a400f7f25d2a37a1c13a1f, %_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE.exit ], [ @alloc_ff660c87842baf60f3944449e24873c4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit39" ], [ @alloc_fa6de647b65354e8e8c45b11696d2ba6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit32" ], [ @alloc_46f7bcd617cb732bb51cc1066df0a5f4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit25" ], [ @alloc_66f675f57fd40e465affefa44c8f3462, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit" ], [ @alloc_d5183804b6aa4afab4d20a6ee8da9aab, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, -9223372036854775808) %9, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #25
          to label %panic.i.i42.cont unwind label %cleanup

panic.i.i42.cont:                                 ; preds = %panic.i.i42.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E.exit46": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE.exit39"
  %_0.i.i37 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_34
  %_31 = load i32, ptr %_0.i.i37, align 4, !noundef !37
  %_0.i.i44 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_0.sroa.3.0.i.i
  %12 = add i32 %_16, %_31
  store i32 %12, ptr %_0.i.i44, align 4
  br label %bb6

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb21:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
