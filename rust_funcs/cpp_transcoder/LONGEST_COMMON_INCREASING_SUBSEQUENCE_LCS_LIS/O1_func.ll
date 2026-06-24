define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n, i64 %1, i32 noundef %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  %arr2 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  store i64 %1, ptr %arr2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  %_6 = sext i32 %m to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1032, !noalias !1644, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %table, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %table, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1644
  %6 = getelementptr inbounds nuw i8, ptr %table, i64 16
  store i64 %_6, ptr %6, align 8, !alias.scope !1644
  %_0.i.i.i81 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i81, label %bb9.preheader.lr.ph, label %bb32.preheader

bb9.preheader.lr.ph:                              ; preds = %_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit
  %_0.i.i.i3277 = icmp sgt i32 %m, 0
  %7 = zext i1 %_0.i.i.i3277 to i32
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb9.preheader

cleanup:                                          ; preds = %panic4.invoke, %panic.i.i51.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb43 unwind label %terminate

bb3.loopexit:                                     ; preds = %bb30, %bb9.preheader
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %bb32.preheader, label %bb9.preheader

bb9.preheader:                                    ; preds = %bb9.preheader.lr.ph, %bb3.loopexit
  %indvars.iv96 = phi i64 [ 0, %bb9.preheader.lr.ph ], [ %indvars.iv.next97, %bb3.loopexit ]
  br i1 %_0.i.i.i3277, label %bb11.lr.ph, label %bb3.loopexit

bb11.lr.ph:                                       ; preds = %bb9.preheader
  %_24 = icmp samesign ult i64 %indvars.iv96, 2
  br i1 %_24, label %bb11.lr.ph.split, label %panic4.invoke

bb11.lr.ph.split:                                 ; preds = %bb11.lr.ph
  %9 = getelementptr inbounds nuw i32, ptr %arr1, i64 %indvars.iv96
  %_22 = load i32, ptr %9, align 4, !noundef !37
  br label %bb11

bb32.preheader:                                   ; preds = %bb3.loopexit, %_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit
  %_0.i.i.i1884.not = icmp eq i32 %m, 0
  br i1 %_0.i.i.i1884.not, label %bb35, label %bb34.lr.ph

bb34.lr.ph:                                       ; preds = %bb32.preheader
  %len.i = load i64, ptr %6, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_6.i = load ptr, ptr %5, align 8, !nonnull !37
  %10 = add nsw i64 %_6, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %len.i, i64 %10)
  %.not.not = icmp ugt i64 %len.i, %10
  br label %bb34

bb34:                                             ; preds = %bb34.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit"
  %spec.select6488 = phi i64 [ 1, %bb34.lr.ph ], [ %spec.select64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit" ]
  %result.sroa.0.087 = phi i32 [ 0, %bb34.lr.ph ], [ %spec.select68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit" ]
  %iter2.sroa.0.086 = phi i64 [ 0, %bb34.lr.ph ], [ %spec.select6488, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit" ]
  br i1 %.not.not, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit": ; preds = %bb34
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %iter2.sroa.0.086
  %_54 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %spec.select68 = tail call i32 @llvm.smax.i32(i32 %_54, i32 %result.sroa.0.087)
  %_0.i.i.i18 = icmp ult i64 %spec.select6488, %_6
  %_0.i1.i.i = zext i1 %_0.i.i.i18 to i64
  %spec.select64 = add nuw i64 %spec.select6488, %_0.i1.i.i
  br i1 %_0.i.i.i18, label %bb34, label %bb35

bb35:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit", %bb32.preheader
  %result.sroa.0.0.lcssa = phi i32 [ 0, %bb32.preheader ], [ %spec.select68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit" ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %result.sroa.0.0.lcssa

bb11:                                             ; preds = %bb11.lr.ph.split, %bb30
  %spec.select6680 = phi i32 [ %7, %bb11.lr.ph.split ], [ %spec.select66, %bb30 ]
  %current.sroa.0.079 = phi i32 [ 0, %bb11.lr.ph.split ], [ %current.sroa.0.1, %bb30 ]
  %iter1.sroa.0.078 = phi i32 [ 0, %bb11.lr.ph.split ], [ %spec.select6680, %bb30 ]
  %_26 = zext nneg i32 %iter1.sroa.0.078 to i64
  %_27 = icmp samesign ult i32 %iter1.sroa.0.078, 2
  br i1 %_27, label %bb14, label %panic4.invoke

bb14:                                             ; preds = %bb11
  %11 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_26
  %_25 = load i32, ptr %11, align 4, !noundef !37
  %_21 = icmp eq i32 %_22, %_25
  br i1 %_21, label %bb15, label %bb23

panic4.invoke:                                    ; preds = %bb11.lr.ph, %bb11
  %12 = phi i64 [ %_26, %bb11 ], [ %indvars.iv96, %bb11.lr.ph ]
  %13 = phi ptr [ @alloc_078471357d30bf963784ffc15c482f58, %bb11 ], [ @alloc_007194f7371b59395179ea9cdd103097, %bb11.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #26
          to label %panic4.cont unwind label %cleanup

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb15:                                             ; preds = %bb14
  %_29 = add nuw i32 %current.sroa.0.079, 1
  %len.i36 = load i64, ptr %6, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i37 = icmp ugt i64 %len.i36, %_26
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit42", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit42": ; preds = %bb15
  %_6.i39 = load ptr, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i39, i64 %_26
  %_31 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %_28 = icmp sgt i32 %_29, %_31
  br i1 %_28, label %bb17, label %bb23

bb17:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit42"
  store i32 %_29, ptr %_0.i.i40, align 4
  br label %bb23

bb23:                                             ; preds = %bb17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit42", %bb14
  %_37 = icmp sgt i32 %_22, %_25
  br i1 %_37, label %bb24, label %bb30

bb30:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit55", %bb23
  %current.sroa.0.1 = phi i32 [ %current.sroa.0.079, %bb23 ], [ %spec.select69, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit55" ]
  %_0.i.i.i32 = icmp slt i32 %spec.select6680, %m
  %14 = zext i1 %_0.i.i.i32 to i32
  %spec.select66 = add nuw nsw i32 %spec.select6680, %14
  br i1 %_0.i.i.i32, label %bb11, label %bb3.loopexit

bb24:                                             ; preds = %bb23
  %len.i49 = load i64, ptr %6, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i50 = icmp ugt i64 %len.i49, %_26
  br i1 %_4.i.i50, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit55", label %panic.i.i51.invoke

panic.i.i51.invoke:                               ; preds = %bb24, %bb15, %bb34
  %15 = phi i64 [ %umin, %bb34 ], [ %_26, %bb15 ], [ %_26, %bb24 ]
  %16 = phi i64 [ %len.i, %bb34 ], [ %len.i49, %bb24 ], [ %len.i36, %bb15 ]
  %17 = phi ptr [ @alloc_07c8cd8b7ef752a57c7fc5d68e6b7f3b, %bb34 ], [ @alloc_89d220ce47c0fa2c92e5094d41708517, %bb24 ], [ @alloc_48083201ebfb0e4c449855ea29a674af, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %15, i64 noundef range(i64 0, 2305843009213693952) %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #25
          to label %panic.i.i51.cont unwind label %cleanup

panic.i.i51.cont:                                 ; preds = %panic.i.i51.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit55": ; preds = %bb24
  %_6.i52 = load ptr, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i53 = getelementptr inbounds nuw i32, ptr %_6.i52, i64 %_26
  %_39 = load i32, ptr %_0.i.i53, align 4, !noundef !37
  %spec.select69 = tail call i32 @llvm.smax.i32(i32 %_39, i32 %current.sroa.0.079)
  br label %bb30

terminate:                                        ; preds = %cleanup
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb43:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
