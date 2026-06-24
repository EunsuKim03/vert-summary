define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %C = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %C)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hf9783307e278dc0fE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17hf9783307e278dc0fE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %C, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_0.i.not.i.i192 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i192, label %bb32.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hf9783307e278dc0fE.exit
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.1197 = zext i1 %.not to i8
  %_0.i3.i.i193 = icmp ne i32 %n, 0
  %spec.select196 = zext i1 %_0.i3.i.i193 to i32
  br label %bb8

cleanup:                                          ; preds = %panic.i.i78.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E"(ptr noalias noundef align 8 dereferenceable(24) %C) #30
          to label %bb40 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb28
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1199 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1198, %n
  %or.cond86 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1198, %n
  %not.or.cond86 = xor i1 %or.cond86, true
  %narrow = select i1 %not.or.cond86, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1198, %spec.select
  %10 = select i1 %or.cond86, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1199, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1198
  br i1 %or.cond86, label %bb32.preheader, label %bb8

bb32.preheader:                                   ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17hf9783307e278dc0fE.exit
  %11 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %len.i = load i64, ptr %11, align 8
  %_4.i.i9 = icmp ugt i64 %len.i, %_5
  %12 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_6.i = load ptr, ptr %12, align 8, !nonnull !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_5
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_0.i.not.i.i.i.peel = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i.i.peel, label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel", label %bb5.i.i.i.peel

bb5.i.i.i.peel:                                   ; preds = %bb32.preheader
  %_3.i8.i.i.i.peel = call noundef range(i8 -1, 3) i8 @llvm.scmp.i8.i32(i32 0, i32 %n)
  switch i8 %_3.i8.i.i.i.peel, label %bb31.i.i.i [
    i8 2, label %bb20.i.i.i.peel
    i8 -1, label %bb10.i.i.i.peel
    i8 0, label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel"
    i8 1, label %bb20.i.i.i.peel
  ]

bb10.i.i.i.peel:                                  ; preds = %bb5.i.i.i.peel
  br label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel"

bb20.i.i.i.peel:                                  ; preds = %bb5.i.i.i.peel, %bb5.i.i.i.peel
  br label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel"

"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel": ; preds = %bb20.i.i.i.peel, %bb10.i.i.i.peel, %bb5.i.i.i.peel, %bb32.preheader
  %iter2.sroa.4.1.peel = phi i32 [ 0, %bb32.preheader ], [ 1, %bb10.i.i.i.peel ], [ %n, %bb20.i.i.i.peel ], [ 0, %bb5.i.i.i.peel ]
  %iter2.sroa.11.1.peel = phi i8 [ 0, %bb32.preheader ], [ 0, %bb10.i.i.i.peel ], [ 1, %bb20.i.i.i.peel ], [ 1, %bb5.i.i.i.peel ]
  %_0.sroa.0.1.i.i.i.peel = phi i1 [ false, %bb32.preheader ], [ true, %bb10.i.i.i.peel ], [ false, %bb20.i.i.i.peel ], [ true, %bb5.i.i.i.peel ]
  br i1 %_0.sroa.0.1.i.i.i.peel, label %bb34.peel, label %bb35

bb34.peel:                                        ; preds = %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel"
  br i1 %_4.i.i9, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit.peel", label %panic.i.i78.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit.peel": ; preds = %bb34.peel
  %len.i10.peel = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i11.peel.not = icmp eq i64 %len.i10.peel, 0
  br i1 %_4.i.i11.peel.not, label %panic.i.i78.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit.peel"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit.peel": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit.peel"
  %_6.i13.peel = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_53.peel = load i32, ptr %_6.i13.peel, align 4, !noundef !15
  br label %bb32

bb8:                                              ; preds = %bb8.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i200 = phi i32 [ 0, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1199 = phi i8 [ %iter.sroa.7.1197, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1198 = phi i32 [ %spec.select196, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %x.y.i = call noundef i32 @llvm.smin.i32(i32 %_0.sroa.3.0.i.i200, i32 %n)
  %_33 = add i32 %_0.sroa.3.0.i.i200, -1
  %_32 = sext i32 %_33 to i64
  %_44 = sext i32 %_0.sroa.3.0.i.i200 to i64
  %_26 = sext i32 %_0.sroa.3.0.i.i200 to i64
  %_0.i3.i.i23184 = icmp sgt i32 %x.y.i, 0
  %not._0.i3.i.i23184 = xor i1 %_0.i3.i.i23184, true
  %iter1.sroa.7.1188 = zext i1 %not._0.i3.i.i23184 to i8
  %spec.select84187 = zext i1 %_0.i3.i.i23184 to i32
  br label %bb15

bb32:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit.peel", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit"
  %iter2.sroa.4.0 = phi i32 [ %iter2.sroa.4.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit" ], [ %iter2.sroa.4.1.peel, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit.peel" ]
  %iter2.sroa.11.0 = phi i8 [ %iter2.sroa.11.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit" ], [ %iter2.sroa.11.1.peel, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit.peel" ]
  %sum.sroa.0.0 = phi i32 [ %15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit" ], [ %_53.peel, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit.peel" ]
  %_23.i.i.i = trunc nuw i8 %iter2.sroa.11.0 to i1
  %_0.i.not.i.i.i = icmp sgt i32 %iter2.sroa.4.0, %n
  %or.cond87 = select i1 %_23.i.i.i, i1 true, i1 %_0.i.not.i.i.i
  br i1 %or.cond87, label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit", label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb32
  %wrapped.i.i.i.i = add i32 %iter2.sroa.4.0, 1
  %_7.not.i.i.i.i.not = icmp eq i32 %iter2.sroa.4.0, 2147483647
  br i1 %_7.not.i.i.i.i.not, label %bb20.i.i.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb2.i.i.i
  %_3.i8.i.i.i = call noundef range(i8 -1, 3) i8 @llvm.scmp.i8.i32(i32 %wrapped.i.i.i.i, i32 %n)
  switch i8 %_3.i8.i.i.i, label %bb31.i.i.i [
    i8 2, label %bb20.i.i.i
    i8 -1, label %bb10.i.i.i
    i8 0, label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit"
    i8 1, label %bb20.i.i.i
  ]

bb31.i.i.i:                                       ; preds = %bb5.i.i.i, %bb5.i.i.i.peel
  unreachable

bb10.i.i.i:                                       ; preds = %bb5.i.i.i
  %_0.i9.i.i.i = add i32 %iter2.sroa.4.0, 2
  br label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit"

bb20.i.i.i:                                       ; preds = %bb5.i.i.i, %bb5.i.i.i, %bb2.i.i.i
  br label %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit"

"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit": ; preds = %bb5.i.i.i, %bb32, %bb10.i.i.i, %bb20.i.i.i
  %iter2.sroa.4.1 = phi i32 [ %iter2.sroa.4.0, %bb32 ], [ %_0.i9.i.i.i, %bb10.i.i.i ], [ %n, %bb20.i.i.i ], [ %wrapped.i.i.i.i, %bb5.i.i.i ]
  %iter2.sroa.11.1 = phi i8 [ %iter2.sroa.11.0, %bb32 ], [ %iter2.sroa.11.0, %bb10.i.i.i ], [ 1, %bb20.i.i.i ], [ 1, %bb5.i.i.i ]
  %_0.sroa.5.1.i.i.i = phi i32 [ undef, %bb32 ], [ %wrapped.i.i.i.i, %bb10.i.i.i ], [ undef, %bb20.i.i.i ], [ %wrapped.i.i.i.i, %bb5.i.i.i ]
  %_0.sroa.0.1.i.i.i = phi i1 [ false, %bb32 ], [ true, %bb10.i.i.i ], [ false, %bb20.i.i.i ], [ true, %bb5.i.i.i ]
  br i1 %_0.sroa.0.1.i.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit", label %bb35

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit": ; preds = %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit"
  %_57 = sext i32 %_0.sroa.5.1.i.i.i to i64
  %len.i10 = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i11 = icmp ugt i64 %len.i10, %_57
  br i1 %_4.i.i11, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit", label %panic.i.i78.invoke

bb35:                                             ; preds = %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit", %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel"
  %sum.sroa.0.0.lcssa112 = phi i32 [ 0, %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit.peel" ], [ %sum.sroa.0.0, %"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE.exit" ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E"(ptr noalias noundef align 8 dereferenceable(24) %C)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %C)
  ret i32 %sum.sroa.0.0.lcssa112

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit"
  %_6.i13 = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i14 = getelementptr inbounds nuw i32, ptr %_6.i13, i64 %_57
  %_53 = load i32, ptr %_0.i.i14, align 4, !noundef !15
  %15 = add i32 %_53, %sum.sroa.0.0
  br label %bb32, !llvm.loop !1687

bb15:                                             ; preds = %bb8, %bb28
  %_0.sroa.3.0.i.i25191 = phi i32 [ 0, %bb8 ], [ %_0.sroa.3.0.i.i25, %bb28 ]
  %iter1.sroa.7.1190 = phi i8 [ %iter1.sroa.7.1188, %bb8 ], [ %iter1.sroa.7.1, %bb28 ]
  %iter1.sroa.0.1189 = phi i32 [ %spec.select84187, %bb8 ], [ %iter1.sroa.0.1, %bb28 ]
  %_21 = icmp eq i32 %_0.sroa.3.0.i.i25191, 0
  %_22 = icmp eq i32 %_0.sroa.3.0.i.i25191, %_0.sroa.3.0.i.i200
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb18, label %bb21

bb18:                                             ; preds = %bb15
  %len.i29 = load i64, ptr %7, align 8, !alias.scope !1689, !noalias !1692, !noundef !15
  %_4.i.i30 = icmp ugt i64 %len.i29, %_26
  br i1 %_4.i.i30, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit", label %panic.i.i78.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit": ; preds = %bb18
  %_6.i32 = load ptr, ptr %8, align 8, !alias.scope !1689, !noalias !1692, !nonnull !15, !noundef !15
  %_0.i.i33 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i32, i64 %_26
  %_27 = sext i32 %_0.sroa.3.0.i.i25191 to i64
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i33, i64 16
  %len.i76 = load i64, ptr %16, align 8, !alias.scope !1694, !noalias !1697, !noundef !15
  %_4.i.i77 = icmp ugt i64 %len.i76, %_27
  br i1 %_4.i.i77, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE.exit82", label %panic.i.i78.invoke

bb21:                                             ; preds = %bb15
  %len.i35 = load i64, ptr %5, align 8, !alias.scope !1699, !noalias !1702, !noundef !15
  %_4.i.i36 = icmp ugt i64 %len.i35, %_32
  br i1 %_4.i.i36, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit41", label %panic.i.i78.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit41": ; preds = %bb21
  %_6.i38 = load ptr, ptr %6, align 8, !alias.scope !1699, !noalias !1702, !nonnull !15, !noundef !15
  %_0.i.i39 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i38, i64 %_32
  %_35 = add i32 %_0.sroa.3.0.i.i25191, -1
  %_34 = sext i32 %_35 to i64
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i39, i64 16
  %len.i42 = load i64, ptr %17, align 8, !alias.scope !1704, !noalias !1707, !noundef !15
  %_4.i.i43 = icmp ugt i64 %len.i42, %_34
  br i1 %_4.i.i43, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit48", label %panic.i.i78.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit48": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit41"
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i39, i64 8
  %_6.i45 = load ptr, ptr %18, align 8, !alias.scope !1704, !noalias !1707, !nonnull !15, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw i32, ptr %_6.i45, i64 %_34
  %_28 = load i32, ptr %_0.i.i46, align 4, !noundef !15
  %_40 = sext i32 %_0.sroa.3.0.i.i25191 to i64
  %_4.i.i57 = icmp ugt i64 %len.i42, %_40
  br i1 %_4.i.i57, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit62", label %panic.i.i78.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit62": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit48"
  %_0.i.i60 = getelementptr inbounds nuw i32, ptr %_6.i45, i64 %_40
  %_36 = load i32, ptr %_0.i.i60, align 4, !noundef !15
  %_4.i.i64 = icmp ugt i64 %len.i35, %_44
  br i1 %_4.i.i64, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit69", label %panic.i.i78.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit69": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit62"
  %_0.i.i67 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i38, i64 %_44
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 16
  %len.i70 = load i64, ptr %19, align 8, !alias.scope !1709, !noalias !1712, !noundef !15
  %_4.i.i71 = icmp ugt i64 %len.i70, %_40
  br i1 %_4.i.i71, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE.exit", label %panic.i.i78.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit69"
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i67, i64 8
  %_6.i73 = load ptr, ptr %20, align 8, !alias.scope !1709, !noalias !1712, !nonnull !15, !noundef !15
  %_0.i.i74 = getelementptr inbounds nuw i32, ptr %_6.i73, i64 %_40
  %21 = add i32 %_36, %_28
  store i32 %21, ptr %_0.i.i74, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE.exit82", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE.exit"
  %_10.i.i16 = trunc nuw i8 %iter1.sroa.7.1190 to i1
  %_0.i.not.i.i21 = icmp sgt i32 %iter1.sroa.0.1189, %x.y.i
  %or.cond88 = select i1 %_10.i.i16, i1 true, i1 %_0.i.not.i.i21
  %_0.i3.i.i23 = icmp slt i32 %iter1.sroa.0.1189, %x.y.i
  %not.or.cond88 = xor i1 %or.cond88, true
  %narrow147 = select i1 %not.or.cond88, i1 %_0.i3.i.i23, i1 false
  %spec.select84 = zext i1 %narrow147 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1189, %spec.select84
  %22 = select i1 %or.cond88, i1 true, i1 %_0.i3.i.i23
  %iter1.sroa.7.1 = select i1 %22, i8 %iter1.sroa.7.1190, i8 1
  %_0.sroa.3.0.i.i25 = select i1 %_10.i.i16, i32 undef, i32 %iter1.sroa.0.1189
  br i1 %or.cond88, label %bb5.loopexit, label %bb15

panic.i.i78.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit69", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit62", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit48", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit41", %bb21, %bb18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit.peel", %bb34.peel
  %23 = phi i64 [ %_5, %bb34.peel ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit.peel" ], [ %_57, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit" ], [ %_27, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit" ], [ %_40, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit69" ], [ %_44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit62" ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit48" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit41" ], [ %_32, %bb21 ], [ %_26, %bb18 ]
  %24 = phi i64 [ %len.i, %bb34.peel ], [ %len.i10.peel, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit.peel" ], [ %len.i10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit" ], [ %len.i76, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit" ], [ %len.i70, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit69" ], [ %len.i35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit62" ], [ %len.i42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit48" ], [ %len.i42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit41" ], [ %len.i35, %bb21 ], [ %len.i29, %bb18 ]
  %25 = phi ptr [ @alloc_349bac9be1a4ded99c3f3efb43fab200, %bb34.peel ], [ @alloc_746f06f793be357c107ca0b7da1726ae, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit.peel" ], [ @alloc_746f06f793be357c107ca0b7da1726ae, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit" ], [ @alloc_0cc6f4aeffdd5879548df92d6df4afe3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit" ], [ @alloc_672fce10a529e373bfa05c708f305f51, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit69" ], [ @alloc_457eff48c84cf978d0fb8e5b25989d9f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit62" ], [ @alloc_ff92b3f7d579ab27636eb091b78e2d74, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE.exit48" ], [ @alloc_dc62ab5f77d3cccb08104bb2e59a0b0d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE.exit41" ], [ @alloc_9de5f56926cab21ad0a3645601351780, %bb21 ], [ @alloc_81debf332604faecc1c2234ac4984530, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %23, i64 noundef range(i64 0, 2305843009213693952) %24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %25) #27
          to label %panic.i.i78.cont unwind label %cleanup

panic.i.i78.cont:                                 ; preds = %panic.i.i78.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE.exit82": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE.exit"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i33, i64 8
  %_6.i79 = load ptr, ptr %26, align 8, !alias.scope !1694, !noalias !1697, !nonnull !15, !noundef !15
  %_0.i.i80 = getelementptr inbounds nuw i32, ptr %_6.i79, i64 %_27
  store i32 1, ptr %_0.i.i80, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb40:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
