define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %profit = alloca [24 x i8], align 8
  %price = alloca [8 x i8], align 8
  store i64 %0, ptr %price, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %profit)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha71d84429ea63026E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17ha71d84429ea63026E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %profit, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %profit, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  %_6 = add nsw i64 %_4, -1
  %_7 = icmp ult i64 %_6, 2
  br i1 %_7, label %bb2, label %panic6.invoke

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17ha71d84429ea63026E.exit
  %_11 = add i32 %n, -1
  %_0.i.i.i.i60 = icmp sgt i32 %_11, 0
  br i1 %_0.i.i.i.i60, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %bb2
  %6 = add i32 %n, -2
  %7 = getelementptr inbounds nuw i32, ptr %price, i64 %_6
  %8 = load i32, ptr %7, align 4, !noundef !37
  br label %bb8

cleanup:                                          ; preds = %panic6.invoke, %panic.i.i46.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %profit, i64 noundef 4, i64 noundef 4)
          to label %bb37 unwind label %terminate

bb8:                                              ; preds = %bb8.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE.exit50"
  %_0.sroa.3.0.i.i.i65 = phi i32 [ %_0.sroa.3.0.i.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE.exit50" ], [ %6, %bb8.preheader ]
  %iter.sroa.4.164 = phi i32 [ %iter.sroa.4.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE.exit50" ], [ %6, %bb8.preheader ]
  %max_price.sroa.0.063 = phi i32 [ %max_price.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE.exit50" ], [ %8, %bb8.preheader ]
  %_19 = sext i32 %_0.sroa.3.0.i.i.i65 to i64
  %_20 = icmp ult i32 %_0.sroa.3.0.i.i.i65, 2
  br i1 %_20, label %bb10, label %panic6.invoke

bb9:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE.exit50", %bb2
  %_0.i.i.i66 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i66, label %bb22.preheader, label %bb23

bb22.preheader:                                   ; preds = %bb9
  %10 = load i32, ptr %price, align 8, !noundef !37
  %11 = getelementptr inbounds nuw i8, ptr %price, i64 4
  %_41 = load i32, ptr %11, align 4, !noundef !37
  %min_price.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %_41, i32 %10)
  %len.i16 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  switch i64 %len.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit29" [
    i64 0, label %panic.i.i46.invoke
    i64 1, label %panic.i.i46.invoke.loopexit.fold.split
  ]

bb23:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit29", %bb9
  %len.i = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i15 = icmp ult i64 %_6, %len.i
  br i1 %_4.i.i15, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit": ; preds = %bb23
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_6
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %profit, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %profit)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit29": ; preds = %bb22.preheader
  %_6.i19 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_46 = load i32, ptr %_6.i19, align 4, !noundef !37
  %_0.i.i27 = getelementptr inbounds nuw i8, ptr %_6.i19, i64 4
  %_52 = load i32, ptr %_0.i.i27, align 4, !noundef !37
  %_55 = sub i32 %_41, %min_price.sroa.0.1
  %_51 = add i32 %_55, %_52
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_51, i32 %_46)
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i27, align 4
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb23, label %panic6.invoke

bb10:                                             ; preds = %bb8
  %12 = getelementptr inbounds nuw i32, ptr %price, i64 %_19
  %_18 = load i32, ptr %12, align 4, !noundef !37
  %max_price.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %_18, i32 %max_price.sroa.0.063)
  %_27 = add nuw nsw i32 %_0.sroa.3.0.i.i.i65, 1
  %_26 = zext nneg i32 %_27 to i64
  %len.i36 = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i37 = icmp ugt i64 %len.i36, %_26
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit42", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit42": ; preds = %bb10
  %_4.i.i45 = icmp samesign ugt i64 %len.i36, %_19
  br i1 %_4.i.i45, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE.exit50", label %panic.i.i46.invoke

panic6.invoke:                                    ; preds = %bb8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit29", %_ZN5alloc3vec9from_elem17ha71d84429ea63026E.exit
  %13 = phi i64 [ %_6, %_ZN5alloc3vec9from_elem17ha71d84429ea63026E.exit ], [ 2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit29" ], [ %_19, %bb8 ]
  %14 = phi ptr [ @alloc_bbb2f000a1e32dbc0b1c6ebbb1709e06, %_ZN5alloc3vec9from_elem17ha71d84429ea63026E.exit ], [ @alloc_bdec367f6b7f326b9afaeb4f1c6d4050, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit29" ], [ @alloc_a0b9c846c3461fafeb330aed762617f0, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #26
          to label %panic6.cont unwind label %cleanup

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

panic.i.i46.invoke.loopexit.fold.split:           ; preds = %bb22.preheader
  br label %panic.i.i46.invoke

panic.i.i46.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit42", %bb10, %panic.i.i46.invoke.loopexit.fold.split, %bb22.preheader, %bb23
  %15 = phi i64 [ %_6, %bb23 ], [ 0, %bb22.preheader ], [ 1, %panic.i.i46.invoke.loopexit.fold.split ], [ %_19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit42" ], [ %_26, %bb10 ]
  %16 = phi i64 [ %len.i, %bb23 ], [ %len.i16, %bb22.preheader ], [ %len.i16, %panic.i.i46.invoke.loopexit.fold.split ], [ %len.i36, %bb10 ], [ %len.i36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit42" ]
  %17 = phi ptr [ @alloc_07b9f8e6d3493b01f00d015cb8ad895d, %bb23 ], [ @alloc_61d322e1271bc0ae8c936c51b1ef0d89, %bb22.preheader ], [ @alloc_e2265bbd5cf3800347badb87c793300c, %panic.i.i46.invoke.loopexit.fold.split ], [ @alloc_569a466e2b4010d78878e096502ebf19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit42" ], [ @alloc_fa3817924429c5168c13f62cd0ec56f6, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %15, i64 noundef range(i64 0, 2305843009213693952) %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #25
          to label %panic.i.i46.cont unwind label %cleanup

panic.i.i46.cont:                                 ; preds = %panic.i.i46.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E.exit42"
  %_28 = sub i32 %max_price.sroa.0.1, %_18
  %_6.i39 = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i39, i64 %_26
  %_23 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %_0.sroa.0.0.i43 = tail call noundef i32 @llvm.smax.i32(i32 %_28, i32 %_23)
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i39, i64 %_19
  store i32 %_0.sroa.0.0.i43, ptr %_0.i.i48, align 4
  %_0.i.i.i.i = icmp sgt i32 %iter.sroa.4.164, 0
  %18 = add nsw i32 %iter.sroa.4.164, -1
  %iter.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %18, i32 %iter.sroa.4.164
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %18, i32 undef
  br i1 %_0.i.i.i.i, label %bb8, label %bb9

terminate:                                        ; preds = %cleanup
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb37:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
