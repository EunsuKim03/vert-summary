define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i13 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %hash_negative = alloca [24 x i8], align 8
  %hash_positive = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hash_positive)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 1
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
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %hash_positive, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %hash_positive, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %hash_positive, i64 16
  store i64 %_5, ptr %5, align 8, !alias.scope !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hash_negative)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i13), !noalias !1651
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i13, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit
  %_17.i.i14 = load i64, ptr %_16.i.i13, align 8, !range !1031, !noalias !1651, !noundef !37
  %6 = trunc nuw i64 %_17.i.i14 to i1
  %7 = getelementptr inbounds nuw i8, ptr %_16.i.i13, i64 8
  %err.0.i.i18 = load i64, ptr %7, align 8, !range !1032, !noalias !1651, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %_16.i.i13, i64 16
  br i1 %6, label %bb14.i.i17, label %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit21, !prof !1033

bb14.i.i17:                                       ; preds = %.noexc
  %err.1.i.i19 = load i64, ptr %8, align 8, !noalias !1651
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i18, i64 %err.1.i.i19) #26
          to label %.noexc20 unwind label %cleanup

.noexc20:                                         ; preds = %bb14.i.i17
  unreachable

_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit21: ; preds = %.noexc
  %res.1.i.i16 = load ptr, ptr %8, align 8, !noalias !1651, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i13), !noalias !1651
  store i64 %err.0.i.i18, ptr %hash_negative, align 8, !alias.scope !1651
  %9 = getelementptr inbounds nuw i8, ptr %hash_negative, i64 8
  store ptr %res.1.i.i16, ptr %9, align 8, !alias.scope !1651
  %10 = getelementptr inbounds nuw i8, ptr %hash_negative, i64 16
  store i64 %_5, ptr %10, align 8, !alias.scope !1651
  %len.i = load i64, ptr %5, align 8, !alias.scope !1652, !noalias !1655, !noundef !37
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i36.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E.exit"

bb24:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %11, %cleanup ], [ %12, %cleanup1 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %hash_positive, i64 noundef 4, i64 noundef 4)
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb9, %bb14.i.i17, %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb24

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E.exit": ; preds = %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit21
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1652, !noalias !1655, !nonnull !37, !noundef !37
  store i32 1, ptr %_6.i, align 4
  %_0.i.i.i62.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i62.not, label %bb9, label %bb10

cleanup1:                                         ; preds = %panic.i.i36.invoke, %panic
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %hash_negative, i64 noundef 4, i64 noundef 4)
          to label %bb24 unwind label %terminate

bb9:                                              ; preds = %bb20, %bb20.1, %bb20.2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E.exit"
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E.exit" ], [ %_23.pn, %bb20 ], [ %ans.sroa.0.1.1, %bb20.1 ], [ %ans.sroa.0.1.2, %bb20.2 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %hash_negative, i64 noundef 4, i64 noundef 4)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hash_negative)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %hash_positive, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hash_positive)
  ret i32 %ans.sroa.0.0.lcssa

bb10:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E.exit"
  %_19 = load i32, ptr %arr, align 8, !noundef !37
  %13 = and i32 %_19, -2147483647
  %_17.not = icmp eq i32 %13, 1
  %difference.sroa.0.1.v = select i1 %_17.not, i32 1, i32 -1
  br i1 %_17.not, label %bb17, label %bb14

panic:                                            ; preds = %bb8.2
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %spec.select, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c3090b4ae34b0b883c95a0778e9d4733) #26
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic
  unreachable

bb17:                                             ; preds = %bb10
  %_37 = zext nneg i32 %difference.sroa.0.1.v to i64
  %len.i29 = load i64, ptr %5, align 8, !alias.scope !1657, !noalias !1660, !noundef !37
  %_4.i.i30 = icmp ugt i64 %len.i29, %_37
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit", label %panic.i.i36.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit": ; preds = %bb17
  %_6.i32 = load ptr, ptr %4, align 8, !alias.scope !1657, !noalias !1660, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %_37
  %_34 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %14 = add i32 %_34, 1
  store i32 %14, ptr %_0.i.i, align 4
  br label %bb20

bb14:                                             ; preds = %bb10
  %len.i34 = load i64, ptr %10, align 8, !alias.scope !1662, !noalias !1665, !noundef !37
  %_4.i.i35 = icmp ugt i64 %len.i34, 1
  br i1 %_4.i.i35, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40", label %panic.i.i36.invoke

panic.i.i36.invoke:                               ; preds = %bb14, %bb17, %bb17.1, %bb14.1, %bb17.2, %bb14.2, %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit21
  %15 = phi i64 [ 0, %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit21 ], [ 1, %bb14 ], [ %_37, %bb17 ], [ %_37.1, %bb17.1 ], [ %_26.1, %bb14.1 ], [ %_37.2, %bb17.2 ], [ %_26.2, %bb14.2 ]
  %16 = phi i64 [ %len.i, %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit21 ], [ %len.i34, %bb14 ], [ %len.i29, %bb17 ], [ %len.i29.1, %bb17.1 ], [ %len.i34.1, %bb14.1 ], [ %len.i29.2, %bb17.2 ], [ %len.i34.2, %bb14.2 ]
  %17 = phi ptr [ @alloc_9071d3b766533ec5c1fd5fe3b599f985, %_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE.exit21 ], [ @alloc_7f027e5588d69210053d6aeb5b84a3f7, %bb14 ], [ @alloc_4bd17fb0409dd7e5fde445e5eed2b5c8, %bb17 ], [ @alloc_4bd17fb0409dd7e5fde445e5eed2b5c8, %bb17.1 ], [ @alloc_7f027e5588d69210053d6aeb5b84a3f7, %bb14.1 ], [ @alloc_4bd17fb0409dd7e5fde445e5eed2b5c8, %bb17.2 ], [ @alloc_7f027e5588d69210053d6aeb5b84a3f7, %bb14.2 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %15, i64 noundef range(i64 0, 2305843009213693952) %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #25
          to label %panic.i.i36.cont unwind label %cleanup1

panic.i.i36.cont:                                 ; preds = %panic.i.i36.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40": ; preds = %bb14
  %_6.i37 = load ptr, ptr %9, align 8, !alias.scope !1662, !noalias !1665, !nonnull !37, !noundef !37
  %_0.i.i38 = getelementptr inbounds nuw i8, ptr %_6.i37, i64 4
  %_23 = load i32, ptr %_0.i.i38, align 4, !noundef !37
  %18 = add i32 %_23, 1
  store i32 %18, ptr %_0.i.i38, align 4
  br label %bb20

bb20:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit"
  %_23.pn = phi i32 [ %_23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit" ]
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i64 1, i64 2
  br i1 %_0.i.i.i.not, label %bb9, label %bb10.1

bb10.1:                                           ; preds = %bb20
  %19 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_19.1 = load i32, ptr %19, align 4, !noundef !37
  %20 = and i32 %_19.1, -2147483647
  %_17.1 = icmp eq i32 %20, 1
  %difference.sroa.0.1.v.1 = select i1 %_17.1, i32 1, i32 -1
  %difference.sroa.0.1.1 = add nsw i32 %difference.sroa.0.1.v.1, %difference.sroa.0.1.v
  %_21.1 = icmp slt i32 %difference.sroa.0.1.1, 0
  br i1 %_21.1, label %bb14.1, label %bb17.1

bb17.1:                                           ; preds = %bb10.1
  %_37.1 = zext nneg i32 %difference.sroa.0.1.1 to i64
  %len.i29.1 = load i64, ptr %5, align 8, !alias.scope !1657, !noalias !1660, !noundef !37
  %_4.i.i30.1 = icmp ugt i64 %len.i29.1, %_37.1
  br i1 %_4.i.i30.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.1", label %panic.i.i36.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.1": ; preds = %bb17.1
  %_6.i32.1 = load ptr, ptr %4, align 8, !alias.scope !1657, !noalias !1660, !nonnull !37, !noundef !37
  %_0.i.i.1 = getelementptr inbounds nuw i32, ptr %_6.i32.1, i64 %_37.1
  %_34.1 = load i32, ptr %_0.i.i.1, align 4, !noundef !37
  %21 = add i32 %_34.1, 1
  store i32 %21, ptr %_0.i.i.1, align 4
  br label %bb20.1

bb14.1:                                           ; preds = %bb10.1
  %_27.1 = sub nsw i32 0, %difference.sroa.0.1.1
  %_26.1 = zext nneg i32 %_27.1 to i64
  %len.i34.1 = load i64, ptr %10, align 8, !alias.scope !1662, !noalias !1665, !noundef !37
  %_4.i.i35.1 = icmp ugt i64 %len.i34.1, %_26.1
  br i1 %_4.i.i35.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.1", label %panic.i.i36.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.1": ; preds = %bb14.1
  %_6.i37.1 = load ptr, ptr %9, align 8, !alias.scope !1662, !noalias !1665, !nonnull !37, !noundef !37
  %_0.i.i38.1 = getelementptr inbounds nuw i32, ptr %_6.i37.1, i64 %_26.1
  %_23.1 = load i32, ptr %_0.i.i38.1, align 4, !noundef !37
  %22 = add i32 %_23.1, 1
  store i32 %22, ptr %_0.i.i38.1, align 4
  br label %bb20.1

bb20.1:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.1", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.1"
  %_23.pn.1 = phi i32 [ %_23.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.1" ], [ %_34.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.1" ]
  %ans.sroa.0.1.1 = add i32 %_23.pn.1, %_23.pn
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_6
  br i1 %_0.i.i.i.1, label %bb8.2, label %bb9

bb8.2:                                            ; preds = %bb20.1
  br i1 %_0.i.i.i.not, label %bb10.2, label %panic

bb10.2:                                           ; preds = %bb8.2
  %23 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select
  %_19.2 = load i32, ptr %23, align 4, !noundef !37
  %24 = and i32 %_19.2, -2147483647
  %_17.2 = icmp eq i32 %24, 1
  %difference.sroa.0.1.v.2 = select i1 %_17.2, i32 1, i32 -1
  %difference.sroa.0.1.2 = add nsw i32 %difference.sroa.0.1.v.2, %difference.sroa.0.1.1
  %_21.2 = icmp slt i32 %difference.sroa.0.1.2, 0
  br i1 %_21.2, label %bb14.2, label %bb17.2

bb17.2:                                           ; preds = %bb10.2
  %_37.2 = zext nneg i32 %difference.sroa.0.1.2 to i64
  %len.i29.2 = load i64, ptr %5, align 8, !alias.scope !1657, !noalias !1660, !noundef !37
  %_4.i.i30.2 = icmp ugt i64 %len.i29.2, %_37.2
  br i1 %_4.i.i30.2, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.2", label %panic.i.i36.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.2": ; preds = %bb17.2
  %_6.i32.2 = load ptr, ptr %4, align 8, !alias.scope !1657, !noalias !1660, !nonnull !37, !noundef !37
  %_0.i.i.2 = getelementptr inbounds nuw i32, ptr %_6.i32.2, i64 %_37.2
  %_34.2 = load i32, ptr %_0.i.i.2, align 4, !noundef !37
  %25 = add i32 %_34.2, 1
  store i32 %25, ptr %_0.i.i.2, align 4
  br label %bb20.2

bb14.2:                                           ; preds = %bb10.2
  %_27.2 = sub nsw i32 0, %difference.sroa.0.1.2
  %_26.2 = zext nneg i32 %_27.2 to i64
  %len.i34.2 = load i64, ptr %10, align 8, !alias.scope !1662, !noalias !1665, !noundef !37
  %_4.i.i35.2 = icmp ugt i64 %len.i34.2, %_26.2
  br i1 %_4.i.i35.2, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.2", label %panic.i.i36.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.2": ; preds = %bb14.2
  %_6.i37.2 = load ptr, ptr %9, align 8, !alias.scope !1662, !noalias !1665, !nonnull !37, !noundef !37
  %_0.i.i38.2 = getelementptr inbounds nuw i32, ptr %_6.i37.2, i64 %_26.2
  %_23.2 = load i32, ptr %_0.i.i38.2, align 4, !noundef !37
  %26 = add i32 %_23.2, 1
  store i32 %26, ptr %_0.i.i38.2, align 4
  br label %bb20.2

bb20.2:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.2", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.2"
  %_23.pn.2 = phi i32 [ %_23.2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit40.2" ], [ %_34.2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E.exit.2" ]
  %ans.sroa.0.1.2 = add i32 %_23.pn.2, %ans.sroa.0.1.1
  br label %bb9

terminate:                                        ; preds = %cleanup1, %bb24
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb25:                                             ; preds = %bb24
  resume { ptr, i32 } %.pn
}
