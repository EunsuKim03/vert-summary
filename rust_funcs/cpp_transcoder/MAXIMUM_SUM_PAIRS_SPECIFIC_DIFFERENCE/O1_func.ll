define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %K) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_4.i.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %arr1 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2619
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef 2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2619
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1627, !noalias !2619, !noundef !27
  %1 = trunc nuw i64 %_5.i.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %2, align 8, !range !1628, !noalias !2619, !noundef !27
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %1, label %bb3.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h86f5918b8e76b7c1E.exit", !prof !1629

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %3, align 8, !noalias !2619
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !2619
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h86f5918b8e76b7c1E.exit": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %3, align 8, !noalias !2619, !nonnull !27, !noundef !27
  %_7.i.i.i = icmp samesign ugt i64 %err.0.i.i.i, 1
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2619
  store i64 %err.0.i.i.i, ptr %arr1, align 8, !alias.scope !2622, !noalias !2623
  %4 = getelementptr inbounds nuw i8, ptr %arr1, i64 8
  store ptr %this.1.i.i.i, ptr %4, align 8, !alias.scope !2622, !noalias !2623
  %5 = getelementptr inbounds nuw i8, ptr %arr1, i64 16
  store i64 0, ptr %5, align 8, !alias.scope !2622, !noalias !2623
  store i64 %0, ptr %this.1.i.i.i, align 4, !noalias !2619
  store i64 2, ptr %5, align 8, !alias.scope !2622, !noalias !2623
  %_4.i.i = load ptr, ptr %4, align 8, !alias.scope !2624, !nonnull !27, !noundef !27
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0a928c90019994b6E(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) 2, i64 noundef 1, ptr noalias nonnull align 1 poison)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_11 = sext i32 %N to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !2635
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_11, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc7 unwind label %cleanup

bb37:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %6, %cleanup ], [ %12, %cleanup2 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr1, i64 noundef 4, i64 noundef 4)
          to label %bb38 unwind label %terminate

cleanup:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit26", %bb14.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h86f5918b8e76b7c1E.exit"
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb37

.noexc7:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h86f5918b8e76b7c1E.exit"
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1627, !noalias !2635, !noundef !27
  %7 = trunc nuw i64 %_17.i.i to i1
  %8 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %8, align 8, !range !1628, !noalias !2635, !noundef !27
  %9 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %7, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit, !prof !1629

bb14.i.i:                                         ; preds = %.noexc7
  %err.1.i.i = load i64, ptr %9, align 8, !noalias !2635
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit: ; preds = %.noexc7
  %res.1.i.i = load ptr, ptr %9, align 8, !noalias !2635, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !2635
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !2635
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %10, align 8, !alias.scope !2635
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_11, ptr %11, align 8, !alias.scope !2635
  %_4.i.i9.not = icmp eq i32 %N, 0
  br i1 %_4.i.i9.not, label %panic.i.i88.invoke, label %bb5

cleanup2:                                         ; preds = %panic.i.i88.invoke
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb37 unwind label %terminate

bb5:                                              ; preds = %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit
  store i32 0, ptr %res.1.i.i, align 4
  %_0.i.i.i140.not = icmp eq i32 %N, 1
  br i1 %_0.i.i.i140.not, label %bb11, label %bb10.peel

bb10.peel:                                        ; preds = %bb5
  %len.i15.peel = load i64, ptr %11, align 8, !alias.scope !2636, !noalias !2639, !noundef !27
  switch i64 %len.i15.peel, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35.peel" [
    i64 0, label %panic.i.i88.invoke
    i64 1, label %panic.i.i88.invoke.loopexit.fold.split
  ]

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35.peel": ; preds = %bb10.peel
  %_6.i18.peel = load ptr, ptr %10, align 8, !alias.scope !2636, !noalias !2639, !nonnull !27, !noundef !27
  %_21.peel = load i32, ptr %_6.i18.peel, align 4, !noundef !27
  %_0.i.i33.peel = getelementptr inbounds nuw i8, ptr %_6.i18.peel, i64 4
  store i32 %_21.peel, ptr %_0.i.i33.peel, align 4
  %len.i36.peel = load i64, ptr %5, align 8, !alias.scope !2641, !noalias !2644, !noundef !27
  %_4.i.i37.peel = icmp ugt i64 %len.i36.peel, 1
  br i1 %_4.i.i37.peel, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42.peel", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42.peel": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35.peel"
  %_6.i39.peel = load ptr, ptr %4, align 8, !alias.scope !2641, !noalias !2644, !nonnull !27, !noundef !27
  %_0.i.i40.peel = getelementptr inbounds nuw i8, ptr %_6.i39.peel, i64 4
  %_29.peel = load i32, ptr %_0.i.i40.peel, align 4, !noundef !27
  %_32.peel = load i32, ptr %_6.i39.peel, align 4, !noundef !27
  %_28.peel = sub i32 %_29.peel, %_32.peel
  %_27.peel = icmp slt i32 %_28.peel, %K
  br i1 %_27.peel, label %bb24.peel, label %bb32.peel

bb24.peel:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42.peel"
  %len.i57.peel = load i64, ptr %11, align 8, !noalias !27, !noundef !27
  %_4.i.i58.peel = icmp ugt i64 %len.i57.peel, 1
  br i1 %_4.i.i58.peel, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit56.peel", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit56.peel": ; preds = %bb24.peel
  %_6.i53.peel = load ptr, ptr %10, align 8, !alias.scope !2646, !noalias !2649, !nonnull !27, !noundef !27
  %_0.i.i54.peel = getelementptr inbounds nuw i8, ptr %_6.i53.peel, i64 4
  %_55.peel = load i32, ptr %_0.i.i54.peel, align 4, !noundef !27
  %_58.peel = add i32 %_32.peel, %_29.peel
  %_0.sroa.0.0.i.i78.peel = tail call noundef i32 @llvm.smax.i32(i32 %_58.peel, i32 %_55.peel)
  store i32 %_0.sroa.0.0.i.i78.peel, ptr %_0.i.i54.peel, align 4
  br label %bb32.peel

bb32.peel:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit56.peel", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42.peel"
  %_0.i.i.i.peel = icmp ugt i32 %N, 2
  %spec.select.peel = select i1 %_0.i.i.i.peel, i64 3, i64 2
  br i1 %_0.i.i.i.peel, label %bb10, label %bb11

bb10:                                             ; preds = %bb32.peel, %bb32
  %spec.select144 = phi i64 [ %spec.select, %bb32 ], [ %spec.select.peel, %bb32.peel ]
  %iter.sroa.0.0143 = phi i64 [ %spec.select144, %bb32 ], [ 2, %bb32.peel ]
  %_24 = add i64 %iter.sroa.0.0143, -1
  %len.i15 = load i64, ptr %11, align 8, !alias.scope !2636, !noalias !2639, !noundef !27
  %_4.i.i16 = icmp ult i64 %_24, %len.i15
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit": ; preds = %bb10
  %_4.i.i30 = icmp ult i64 %iter.sroa.0.0143, %len.i15
  br i1 %_4.i.i30, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35", label %panic.i.i88.invoke

bb11:                                             ; preds = %bb32.peel, %bb32, %bb5
  %_69 = add nsw i64 %_11, -1
  %len.i20 = load i64, ptr %11, align 8, !alias.scope !2651, !noalias !2654, !noundef !27
  %_4.i.i21 = icmp ult i64 %_69, %len.i20
  br i1 %_4.i.i21, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit26", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit26": ; preds = %bb11
  %_6.i23 = load ptr, ptr %10, align 8, !alias.scope !2651, !noalias !2654, !nonnull !27, !noundef !27
  %_0.i.i24 = getelementptr inbounds nuw i32, ptr %_6.i23, i64 %_69
  %_0 = load i32, ptr %_0.i.i24, align 4, !noundef !27
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit26"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr1, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr1)
  ret i32 %_0

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit"
  %_6.i18 = load ptr, ptr %10, align 8, !alias.scope !2636, !noalias !2639, !nonnull !27, !noundef !27
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_24
  %_21 = load i32, ptr %_0.i.i, align 4, !noundef !27
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %iter.sroa.0.0143
  store i32 %_21, ptr %_0.i.i33, align 4
  %len.i36 = load i64, ptr %5, align 8, !alias.scope !2641, !noalias !2644, !noundef !27
  %_4.i.i37 = icmp ult i64 %iter.sroa.0.0143, %len.i36
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35"
  %_6.i39 = load ptr, ptr %4, align 8, !alias.scope !2641, !noalias !2644, !nonnull !27, !noundef !27
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i39, i64 %iter.sroa.0.0143
  %_29 = load i32, ptr %_0.i.i40, align 4, !noundef !27
  %_4.i.i44 = icmp ult i64 %_24, %len.i36
  br i1 %_4.i.i44, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit49", label %panic.i.i88.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit49": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42"
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i39, i64 %_24
  %_32 = load i32, ptr %_0.i.i47, align 4, !noundef !27
  %_28 = sub i32 %_29, %_32
  %_27 = icmp slt i32 %_28, %K
  br i1 %_27, label %bb16, label %bb32

bb16:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit49"
  %len.i57 = load i64, ptr %11, align 8, !noalias !27, !noundef !27
  %_4.i.i58 = icmp ult i64 %iter.sroa.0.0143, %len.i57
  br i1 %_4.i.i58, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit63", label %panic.i.i88.invoke

bb32:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit92", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit49"
  %_0.i.i.i = icmp ult i64 %spec.select144, %_11
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select144, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb10, label %bb11, !llvm.loop !2656

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit63": ; preds = %bb16
  %_45 = add i64 %iter.sroa.0.0143, -2
  %_4.i.i87 = icmp ult i64 %_45, %len.i57
  br i1 %_4.i.i87, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit92", label %panic.i.i88.invoke

panic.i.i88.invoke.loopexit.fold.split:           ; preds = %bb10.peel
  br label %panic.i.i88.invoke

panic.i.i88.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35.peel", %bb24.peel, %panic.i.i88.invoke.loopexit.fold.split, %bb10.peel, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit63", %bb16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit", %bb10, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit, %bb11
  %13 = phi i64 [ %_69, %bb11 ], [ 0, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit ], [ 0, %bb10.peel ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35.peel" ], [ 1, %bb24.peel ], [ 1, %panic.i.i88.invoke.loopexit.fold.split ], [ %_24, %bb10 ], [ %iter.sroa.0.0143, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit" ], [ %iter.sroa.0.0143, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35" ], [ %_24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42" ], [ %iter.sroa.0.0143, %bb16 ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit63" ]
  %14 = phi i64 [ %len.i20, %bb11 ], [ %_11, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit ], [ %len.i15.peel, %bb10.peel ], [ %len.i36.peel, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35.peel" ], [ %len.i57.peel, %bb24.peel ], [ %len.i15.peel, %panic.i.i88.invoke.loopexit.fold.split ], [ %len.i15, %bb10 ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit" ], [ %len.i36, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35" ], [ %len.i36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42" ], [ %len.i57, %bb16 ], [ %len.i57, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit63" ]
  %15 = phi ptr [ @alloc_d06d15e85c423e02d9f7bc30c823a65f, %bb11 ], [ @alloc_bf59e646bb61a248b441087a84dfad10, %_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE.exit ], [ @alloc_4378721aaa1b8f1626ca0845dba5c566, %bb10.peel ], [ @alloc_867812af7dedc9233078db62fd9013bf, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35.peel" ], [ @alloc_433d4d81a56f3da17b416ad90e312495, %bb24.peel ], [ @alloc_968cf7a8f0502985b9a870ed07a3aa97, %panic.i.i88.invoke.loopexit.fold.split ], [ @alloc_4378721aaa1b8f1626ca0845dba5c566, %bb10 ], [ @alloc_968cf7a8f0502985b9a870ed07a3aa97, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit" ], [ @alloc_867812af7dedc9233078db62fd9013bf, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E.exit35" ], [ @alloc_61fd08fdde029302de8722a08cb32ed6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit42" ], [ @alloc_5a70374be77af27d5c9683e504360bf5, %bb16 ], [ @alloc_54c8e2ad7529e7d21314ede3c018da44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit63" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef range(i64 0, 2305843009213693952) %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #25
          to label %panic.i.i88.cont unwind label %cleanup2

panic.i.i88.cont:                                 ; preds = %panic.i.i88.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit92": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E.exit63"
  %_6.i60 = load ptr, ptr %10, align 8, !alias.scope !2658, !noalias !2661, !nonnull !27, !noundef !27
  %_0.i.i61 = getelementptr inbounds nuw i32, ptr %_6.i60, i64 %iter.sroa.0.0143
  %_37 = load i32, ptr %_0.i.i61, align 4, !noundef !27
  %_0.i.i90 = getelementptr inbounds nuw i32, ptr %_6.i60, i64 %_45
  %_42 = load i32, ptr %_0.i.i90, align 4, !noundef !27
  %_41 = add i32 %_32, %_29
  %_40 = add i32 %_41, %_42
  %_0.sroa.0.0.i.i107 = tail call noundef i32 @llvm.smax.i32(i32 %_40, i32 %_37)
  store i32 %_0.sroa.0.0.i.i107, ptr %_0.i.i61, align 4
  br label %bb32

terminate:                                        ; preds = %cleanup2, %bb37
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb38:                                             ; preds = %bb37
  resume { ptr, i32 } %.pn
}
