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
  %_0.i.i.i37 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i37, label %bb11.preheader, label %bb7

cleanup:                                          ; preds = %panic.i.i17.invoke, %panic
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb24 unwind label %terminate

bb3.loopexit:                                     ; preds = %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f0a2b622678510E.exit"
  %_0.i.i.i = icmp slt i32 %spec.select39, %n
  %8 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select39, %8
  br i1 %_0.i.i.i, label %bb11.preheader, label %bb7

bb11.preheader:                                   ; preds = %_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit, %bb3.loopexit
  %spec.select39 = phi i32 [ %spec.select, %bb3.loopexit ], [ 1, %_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit ]
  %iter.sroa.0.038 = phi i32 [ %spec.select39, %bb3.loopexit ], [ 0, %_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit ]
  %_30 = zext nneg i32 %iter.sroa.0.038 to i64
  %_31 = icmp samesign ult i32 %iter.sroa.0.038, 2
  %9 = getelementptr inbounds nuw i32, ptr %wt, i64 %_30
  %10 = getelementptr inbounds nuw i32, ptr %val, i64 %_30
  br label %bb11

bb7:                                              ; preds = %bb3.loopexit, %_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E.exit
  %len.i = load i64, ptr %6, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i7 = icmp ugt i64 %len.i, %_7
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit", label %panic.i.i17.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_7
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb11:                                             ; preds = %bb11.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21"
  %iter1.sroa.4.0 = phi i32 [ %iter1.sroa.4.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21" ], [ %W, %bb11.preheader ]
  %iter1.sroa.7.0 = phi i8 [ %iter1.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21" ], [ 0, %bb11.preheader ]
  %_10.i.i.i = trunc nuw i8 %iter1.sroa.7.0 to i1
  %_0.i.not.i.i.i = icmp slt i32 %iter1.sroa.4.0, 0
  %or.cond = select i1 %_10.i.i.i, i1 true, i1 %_0.i.not.i.i.i
  br i1 %or.cond, label %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f0a2b622678510E.exit", label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb11
  %_0.i3.i.i.i.not = icmp eq i32 %iter1.sroa.4.0, 0
  %spec.select30 = tail call i32 @llvm.usub.sat.i32(i32 %iter1.sroa.4.0, i32 1)
  %spec.select31 = select i1 %_0.i3.i.i.i.not, i8 1, i8 %iter1.sroa.7.0
  br label %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f0a2b622678510E.exit"

"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f0a2b622678510E.exit": ; preds = %bb2.i.i.i, %bb11
  %iter1.sroa.4.1 = phi i32 [ %iter1.sroa.4.0, %bb11 ], [ %spec.select30, %bb2.i.i.i ]
  %iter1.sroa.7.1 = phi i8 [ %iter1.sroa.7.0, %bb11 ], [ %spec.select31, %bb2.i.i.i ]
  %_0.sroa.3.0.i.i.i = phi i32 [ undef, %bb11 ], [ %iter1.sroa.4.0, %bb2.i.i.i ]
  br i1 %or.cond, label %bb3.loopexit, label %bb13

bb13:                                             ; preds = %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f0a2b622678510E.exit"
  %_27 = sext i32 %_0.sroa.3.0.i.i.i to i64
  %len.i8 = load i64, ptr %6, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i9 = icmp ugt i64 %len.i8, %_27
  br i1 %_4.i.i9, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit14", label %panic.i.i17.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit14": ; preds = %bb13
  %_6.i11 = load ptr, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i12 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_27
  %_24 = load i32, ptr %_0.i.i12, align 4, !noundef !37
  br i1 %_31, label %bb16, label %panic

bb16:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit14"
  %_37 = load i32, ptr %9, align 4, !noundef !37
  %_36 = sub i32 %_0.sroa.3.0.i.i.i, %_37
  %_35 = sext i32 %_36 to i64
  %_4.i.i16 = icmp ugt i64 %len.i8, %_35
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21", label %panic.i.i17.invoke

panic.i.i17.invoke:                               ; preds = %bb16, %bb13, %bb7
  %11 = phi i64 [ %_7, %bb7 ], [ %_35, %bb16 ], [ %_27, %bb13 ]
  %12 = phi i64 [ %len.i, %bb7 ], [ %len.i8, %bb13 ], [ %len.i8, %bb16 ]
  %13 = phi ptr [ @alloc_b99b913ed02dc500fd5777c192fdb56e, %bb7 ], [ @alloc_e15b6233bf0b434cad09b21fff085c7c, %bb16 ], [ @alloc_8b8181c69e903ca20614752db504a40b, %bb13 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %11, i64 noundef range(i64 0, 2305843009213693952) %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %panic.i.i17.cont unwind label %cleanup

panic.i.i17.cont:                                 ; preds = %panic.i.i17.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit21": ; preds = %bb16
  %_29 = load i32, ptr %10, align 4, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_35
  %_32 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  %_28 = add i32 %_32, %_29
  %_0.sroa.0.0.i.i22 = tail call noundef i32 @llvm.smax.i32(i32 %_28, i32 %_24)
  store i32 %_0.sroa.0.0.i.i22, ptr %_0.i.i12, align 4
  br label %bb11

panic:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE.exit14"
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_30, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a2d00eee1a837ad5dc0935e5f40c6d0) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

terminate:                                        ; preds = %cleanup
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb24:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
