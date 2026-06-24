define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %N, i32 noundef %K) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_5 = sext i32 %N to i64
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_5, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i32 %N, 0
  br i1 %_4.i.i.not, label %panic.i.i51.invoke, label %bb2

cleanup:                                          ; preds = %panic1.invoke, %panic.i.i51.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb33 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit
  store i32 0, ptr %res.1.i.i, align 4
  %_0.i.i.i83 = icmp sgt i32 %N, 1
  br i1 %_0.i.i.i83, label %bb7.peel, label %bb8

bb7.peel:                                         ; preds = %bb2
  %len.i9.peel = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  switch i64 %len.i9.peel, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27.peel" [
    i64 0, label %panic.i.i51.invoke
    i64 1, label %panic.i.i51.invoke.loopexit.fold.split
  ]

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27.peel": ; preds = %bb7.peel
  %_6.i12.peel = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_15.peel = load i32, ptr %_6.i12.peel, align 4, !noundef !37
  %_0.i.i25.peel = getelementptr inbounds nuw i8, ptr %_6.i12.peel, i64 4
  store i32 %_15.peel, ptr %_0.i.i25.peel, align 4
  %_27.peel = icmp samesign ugt i64 %arr.1, 1
  br i1 %_27.peel, label %bb12.peel, label %panic1.invoke

bb12.peel:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27.peel"
  %6 = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %_25.peel = load i32, ptr %6, align 4, !noundef !37
  %_28.peel = load i32, ptr %arr.0, align 4, !noundef !37
  %_24.peel = sub i32 %_25.peel, %_28.peel
  %_23.peel = icmp slt i32 %_24.peel, %K
  br i1 %_23.peel, label %bb21.peel, label %bb29.peel

bb21.peel:                                        ; preds = %bb12.peel
  %len.i35.peel = load i64, ptr %4, align 8, !noalias !37, !noundef !37
  %_4.i.i36.peel = icmp ugt i64 %len.i35.peel, 1
  br i1 %_4.i.i36.peel, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit34.peel", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit34.peel": ; preds = %bb21.peel
  %_6.i31.peel = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i32.peel = getelementptr inbounds nuw i8, ptr %_6.i31.peel, i64 4
  %_47.peel = load i32, ptr %_0.i.i32.peel, align 4, !noundef !37
  %_50.peel = add i32 %_28.peel, %_25.peel
  %x.y.i.peel = tail call noundef i32 @llvm.smax.i32(i32 %_47.peel, i32 %_50.peel)
  store i32 %x.y.i.peel, ptr %_0.i.i32.peel, align 4
  br label %bb29.peel

bb29.peel:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit34.peel", %bb12.peel
  %_0.i.i.i.peel.not = icmp eq i32 %N, 2
  %spec.select.peel = select i1 %_0.i.i.i.peel.not, i32 2, i32 3
  br i1 %_0.i.i.i.peel.not, label %bb8, label %bb7

bb7:                                              ; preds = %bb29.peel, %bb29
  %spec.select86 = phi i32 [ %spec.select, %bb29 ], [ %spec.select.peel, %bb29.peel ]
  %iter.sroa.0.085 = phi i32 [ %spec.select86, %bb29 ], [ 2, %bb29.peel ]
  %_19 = add nsw i32 %iter.sroa.0.085, -1
  %_18 = sext i32 %_19 to i64
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_18
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit": ; preds = %bb7
  %_22 = zext nneg i32 %iter.sroa.0.085 to i64
  %_4.i.i22 = icmp ugt i64 %len.i9, %_22
  br i1 %_4.i.i22, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27", label %panic.i.i51.invoke

bb8:                                              ; preds = %bb29.peel, %bb29, %bb2
  %_58 = add i32 %N, -1
  %_57 = sext i32 %_58 to i64
  %len.i14 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i15 = icmp ugt i64 %len.i14, %_57
  br i1 %_4.i.i15, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit20", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit20": ; preds = %bb8
  %_6.i17 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i18 = getelementptr inbounds nuw i32, ptr %_6.i17, i64 %_57
  %_0 = load i32, ptr %_0.i.i18, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit"
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_18
  %_15 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_0.i.i25 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_22
  store i32 %_15, ptr %_0.i.i25, align 4
  %_27 = icmp samesign ugt i64 %arr.1, %_22
  br i1 %_27, label %bb11, label %panic1.invoke

bb11:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27"
  %_29 = icmp ugt i64 %arr.1, %_18
  br i1 %_29, label %bb12, label %panic1.invoke

bb12:                                             ; preds = %bb11
  %7 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_22
  %_25 = load i32, ptr %7, align 4, !noundef !37
  %8 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_18
  %_28 = load i32, ptr %8, align 4, !noundef !37
  %_24 = sub i32 %_25, %_28
  %_23 = icmp slt i32 %_24, %K
  br i1 %_23, label %bb13, label %bb29

panic1.invoke:                                    ; preds = %bb11, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27.peel"
  %9 = phi i64 [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27.peel" ], [ %_18, %bb11 ], [ %_22, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27" ]
  %10 = phi ptr [ @alloc_1d1ed3e5f4919f21fc13b06080a333b1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27.peel" ], [ @alloc_00f674012c761949724301d1465db9b4, %bb11 ], [ @alloc_1d1ed3e5f4919f21fc13b06080a333b1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit27" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #26
          to label %panic1.cont unwind label %cleanup

panic1.cont:                                      ; preds = %panic1.invoke
  unreachable

bb13:                                             ; preds = %bb12
  %len.i35 = load i64, ptr %4, align 8, !noalias !37, !noundef !37
  %_4.i.i36 = icmp ugt i64 %len.i35, %_22
  br i1 %_4.i.i36, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit41", label %panic.i.i51.invoke

bb29:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit55", %bb12
  %_0.i.i.i = icmp slt i32 %spec.select86, %N
  %11 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select86, %11
  br i1 %_0.i.i.i, label %bb7, label %bb8, !llvm.loop !1660

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit41": ; preds = %bb13
  %_41 = add nsw i32 %iter.sroa.0.085, -2
  %_40 = zext nneg i32 %_41 to i64
  %_4.i.i50 = icmp ugt i64 %len.i35, %_40
  br i1 %_4.i.i50, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit55", label %panic.i.i51.invoke

panic.i.i51.invoke.loopexit.fold.split:           ; preds = %bb7.peel
  br label %panic.i.i51.invoke

panic.i.i51.invoke:                               ; preds = %bb21.peel, %panic.i.i51.invoke.loopexit.fold.split, %bb7.peel, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit41", %bb13, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit", %bb7, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit, %bb8
  %12 = phi i64 [ %_57, %bb8 ], [ 0, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit ], [ 0, %bb7.peel ], [ 1, %bb21.peel ], [ 1, %panic.i.i51.invoke.loopexit.fold.split ], [ %_18, %bb7 ], [ %_22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit" ], [ %_22, %bb13 ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit41" ]
  %13 = phi i64 [ %len.i14, %bb8 ], [ %_5, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit ], [ %len.i9.peel, %bb7.peel ], [ %len.i35.peel, %bb21.peel ], [ %len.i9.peel, %panic.i.i51.invoke.loopexit.fold.split ], [ %len.i9, %bb7 ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit" ], [ %len.i35, %bb13 ], [ %len.i35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit41" ]
  %14 = phi ptr [ @alloc_c5c889d463ed5b5d69db8e9f852bb891, %bb8 ], [ @alloc_f46c3f8913f37ef97bbb91a0e0d6ce55, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit ], [ @alloc_c44a0033a772df99b6fa043eefb2842f, %bb7.peel ], [ @alloc_7f0b4d2ed883bb6e50a3cad471ec47e7, %bb21.peel ], [ @alloc_e957ca94de3c61ac3fc44f18655c0b81, %panic.i.i51.invoke.loopexit.fold.split ], [ @alloc_c44a0033a772df99b6fa043eefb2842f, %bb7 ], [ @alloc_e957ca94de3c61ac3fc44f18655c0b81, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit" ], [ @alloc_33e7dea2061b0c3fdd153f819ad9ebdb, %bb13 ], [ @alloc_e169278defc96cb8afd3f57242c20aff, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit41" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %12, i64 noundef range(i64 0, 2305843009213693952) %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #25
          to label %panic.i.i51.cont unwind label %cleanup

panic.i.i51.cont:                                 ; preds = %panic.i.i51.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit55": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit41"
  %_6.i38 = load ptr, ptr %3, align 8, !alias.scope !1662, !noalias !1665, !nonnull !37, !noundef !37
  %_0.i.i39 = getelementptr inbounds nuw i32, ptr %_6.i38, i64 %_22
  %_32 = load i32, ptr %_0.i.i39, align 4, !noundef !37
  %_0.i.i53 = getelementptr inbounds nuw i32, ptr %_6.i38, i64 %_40
  %_37 = load i32, ptr %_0.i.i53, align 4, !noundef !37
  %_36 = add i32 %_28, %_25
  %_35 = add i32 %_36, %_37
  %x.y.i56 = tail call noundef i32 @llvm.smax.i32(i32 %_32, i32 %_35)
  store i32 %x.y.i56, ptr %_0.i.i39, align 4
  br label %bb29

terminate:                                        ; preds = %cleanup
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb33:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
