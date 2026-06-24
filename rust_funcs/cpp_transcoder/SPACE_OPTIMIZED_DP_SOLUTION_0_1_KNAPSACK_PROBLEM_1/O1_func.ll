define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n, i32 noundef %W) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %wt = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 8
  store i64 %0, ptr %val, align 8
  store i64 %1, ptr %wt, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_7 = sext i32 %W to i64
  %_6 = add nsw i64 %_7, 1
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
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1644
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_6, ptr %6, align 8, !alias.scope !1644
  %_10 = sext i32 %n to i64
  %_0.i.i.i47.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i47.not, label %bb7, label %bb6.preheader

bb6.preheader:                                    ; preds = %_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit
  %7 = zext i32 %W to i64
  %8 = add nuw nsw i64 %7, 1
  br label %bb6

cleanup:                                          ; preds = %panic.i.i24.invoke, %panic
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb23 unwind label %terminate

bb3.loopexit:                                     ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit28", %bb8
  %_0.i.i.i = icmp ult i64 %spec.select50, %_10
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select50, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb6:                                              ; preds = %bb6.preheader, %bb3.loopexit
  %spec.select50 = phi i64 [ %spec.select, %bb3.loopexit ], [ 1, %bb6.preheader ]
  %iter.sroa.0.049 = phi i64 [ %spec.select50, %bb3.loopexit ], [ 0, %bb6.preheader ]
  %_19 = icmp ult i64 %iter.sroa.0.049, 2
  br i1 %_19, label %bb8, label %panic

bb7:                                              ; preds = %bb3.loopexit, %_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit
  %len.i = load i64, ptr %6, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i8 = icmp ugt i64 %len.i, %_7
  br i1 %_4.i.i8, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit", label %panic.i.i24.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_7
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %10 = getelementptr inbounds nuw i32, ptr %wt, i64 %iter.sroa.0.049
  %_18 = load i32, ptr %10, align 4, !noundef !37
  %_0.i.i.i1243 = icmp slt i32 %W, %_18
  br i1 %_0.i.i.i1243, label %bb12.lr.ph, label %bb3.loopexit

bb12.lr.ph:                                       ; preds = %bb8
  %11 = getelementptr inbounds nuw i32, ptr %val, i64 %iter.sroa.0.049
  %12 = add i32 %_18, 1
  br label %bb12

panic:                                            ; preds = %bb6
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.049, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_dfef050c8d8a9c0d11faf6997d41f563) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb12:                                             ; preds = %bb12.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit28"
  %indvars.iv = phi i64 [ %8, %bb12.lr.ph ], [ %indvars.iv.next, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit28" ]
  %iter1.sroa.0.045 = phi i32 [ %W, %bb12.lr.ph ], [ %16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit28" ]
  %_29 = sext i32 %iter1.sroa.0.045 to i64
  %len.i15 = load i64, ptr %6, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i16 = icmp ugt i64 %len.i15, %_29
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21", label %panic.i.i24.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21": ; preds = %bb12
  %_36 = sub i32 %iter1.sroa.0.045, %_18
  %_35 = sext i32 %_36 to i64
  %_4.i.i23 = icmp ugt i64 %len.i15, %_35
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit28", label %panic.i.i24.invoke

panic.i.i24.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21", %bb12, %bb7
  %13 = phi i64 [ %_7, %bb7 ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21" ], [ %_29, %bb12 ]
  %14 = phi i64 [ %len.i, %bb7 ], [ %len.i15, %bb12 ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21" ]
  %15 = phi ptr [ @alloc_14575f03b3f5bb9ec325ea7c37c719ad, %bb7 ], [ @alloc_bd4d7725266ceaad623f5114d068d38d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21" ], [ @alloc_15d611e86a8a3ec04b4b85fa4a700ae1, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %13, i64 noundef range(i64 0, 2305843009213693952) %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #25
          to label %panic.i.i24.cont unwind label %cleanup

panic.i.i24.cont:                                 ; preds = %panic.i.i24.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit28": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21"
  %_31 = load i32, ptr %11, align 4, !noundef !37
  %_6.i18 = load ptr, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_29
  %_26 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_35
  %_32 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %_30 = add i32 %_32, %_31
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_26, i32 %_30)
  store i32 %x.y.i, ptr %_0.i.i19, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = trunc i64 %indvars.iv to i32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %12, %lftr.wideiv
  br i1 %exitcond.not, label %bb3.loopexit, label %bb12

terminate:                                        ; preds = %cleanup
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb23:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
