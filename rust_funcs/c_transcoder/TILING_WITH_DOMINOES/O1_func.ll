define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %B = alloca [24 x i8], align 8
  %A = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %A)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #29
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb2.i, label %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit, !prof !1033

bb2.i:                                            ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #26
  unreachable

_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit: ; preds = %start
  store i32 1, ptr %0, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %2, align 4
  store i64 2, ptr %A, align 8, !alias.scope !1631, !noalias !1636
  %3 = getelementptr inbounds nuw i8, ptr %A, i64 8
  store ptr %0, ptr %3, align 8, !alias.scope !1631, !noalias !1636
  %4 = getelementptr inbounds nuw i8, ptr %A, i64 16
  store i64 2, ptr %4, align 8, !alias.scope !1631, !noalias !1636
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %B)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
; call __rustc::__rust_alloc
  %5 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb2.i4, label %bb3, !prof !1033

bb2.i4:                                           ; preds = %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #26
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i4
  unreachable

bb22:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %7, %cleanup ], [ %lpad.phi, %cleanup1 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %A, i64 noundef 4, i64 noundef 4)
          to label %bb23 unwind label %terminate

cleanup:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit16", %bb2.i4
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb22

bb3:                                              ; preds = %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit
  store i32 0, ptr %5, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %8, align 4
  store i64 2, ptr %B, align 8, !alias.scope !1638, !noalias !1643
  %9 = getelementptr inbounds nuw i8, ptr %B, i64 8
  store ptr %5, ptr %9, align 8, !alias.scope !1638, !noalias !1643
  %10 = getelementptr inbounds nuw i8, ptr %B, i64 16
  store i64 2, ptr %10, align 8, !alias.scope !1638, !noalias !1643
  %_12 = sext i32 %n to i64
  %_0.i.not.i.i96 = icmp ult i32 %n, 2
  br i1 %_0.i.not.i.i96, label %bb11, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %bb3
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.1102 = zext i1 %.not to i8
  %_0.i3.i.i97.not = icmp eq i32 %n, 2
  %iter.sroa.0.1101 = select i1 %_0.i3.i.i97.not, i64 2, i64 3
  br label %bb10

cleanup1.loopexit:                                ; preds = %bb1.i.i, %bb1.i.i47
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %B, i64 noundef 4, i64 noundef 4)
          to label %bb22 unwind label %terminate

bb10:                                             ; preds = %bb10.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49"
  %_0.sroa.3.0.i.i105 = phi i64 [ 2, %bb10.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49" ]
  %iter.sroa.7.1104 = phi i8 [ %iter.sroa.7.1102, %bb10.lr.ph ], [ %iter.sroa.7.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49" ]
  %iter.sroa.0.1103 = phi i64 [ %iter.sroa.0.1101, %bb10.lr.ph ], [ %iter.sroa.0.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49" ]
  %_24 = add i64 %_0.sroa.3.0.i.i105, -2
  %len.i = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ult i64 %_24, %len.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit34", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit", %bb10, %bb11
  %11 = phi i64 [ %_12, %bb11 ], [ %_24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit34" ], [ %_29, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit" ], [ %_29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit" ], [ %_24, %bb10 ]
  %12 = phi i64 [ %len.i10, %bb11 ], [ %len.i35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit34" ], [ %14, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit" ], [ %len.i19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit" ], [ %len.i, %bb10 ]
  %13 = phi ptr [ @alloc_3b2adde7ba7c927fedf44ad2772e2806, %bb11 ], [ @alloc_4912eabb5c77cbcee982caf5685e3fb1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit34" ], [ @alloc_84f267ff97c4de85f1cb3249b3557348, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit" ], [ @alloc_ff77d958a88ca136ed2d9d1df5b7ab4d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit" ], [ @alloc_5c563d70d9c334b0b632db6864d95601, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %11, i64 noundef range(i64 0, 2305843009213693952) %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %panic.i.i.cont unwind label %cleanup1.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit": ; preds = %bb10
  %_29 = add i64 %_0.sroa.3.0.i.i105, -1
  %len.i19 = load i64, ptr %10, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i20 = icmp ult i64 %_29, %len.i19
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit25", label %panic.i.i.invoke

bb11:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49", %bb3
  %len.i10 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i11 = icmp ugt i64 %len.i10, %_12
  br i1 %_4.i.i11, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit16", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit16": ; preds = %bb11
  %_6.i13 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i14 = getelementptr inbounds nuw i32, ptr %_6.i13, i64 %_12
  %_0 = load i32, ptr %_0.i.i14, align 4, !noundef !37
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %B, i64 noundef 4, i64 noundef 4)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit16"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %B)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %A, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %A)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit25": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit"
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_24
  %_21 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_6.i22 = load ptr, ptr %9, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i22, i64 %_29
  %_26 = load i32, ptr %_0.i.i23, align 4, !noundef !37
  %_25 = shl i32 %_26, 1
  %_20 = add i32 %_25, %_21
  %self1.i.i = load i64, ptr %A, align 8, !range !1624, !alias.scope !1660, !noundef !37
  %_4.i.i26 = icmp eq i64 %len.i, %self1.i.i
  br i1 %_4.i.i26, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit"

bb1.i.i:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit25"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbb69aa6c0e64d68fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %A)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit": ; preds = %bb1.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit25"
  %_15.i.i = load ptr, ptr %3, align 8, !alias.scope !1660, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw i32, ptr %_15.i.i, i64 %len.i
  store i32 %_20, ptr %end.i.i, align 4
  %14 = add i64 %len.i, 1
  store i64 %14, ptr %4, align 8, !alias.scope !1660
  %_4.i.i29 = icmp ult i64 %_29, %14
  br i1 %_4.i.i29, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit34", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit34": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit"
  %len.i35 = load i64, ptr %10, align 8, !alias.scope !1665, !noalias !1668, !noundef !37
  %_4.i.i36 = icmp ult i64 %_24, %len.i35
  br i1 %_4.i.i36, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit41", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit41": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit34"
  %_6.i31 = load ptr, ptr %3, align 8, !alias.scope !1670, !noalias !1673, !nonnull !37, !noundef !37
  %_0.i.i32 = getelementptr inbounds nuw i32, ptr %_6.i31, i64 %_29
  %_33 = load i32, ptr %_0.i.i32, align 4, !noundef !37
  %_6.i38 = load ptr, ptr %9, align 8, !alias.scope !1665, !noalias !1668, !nonnull !37, !noundef !37
  %_0.i.i39 = getelementptr inbounds nuw i32, ptr %_6.i38, i64 %_24
  %_36 = load i32, ptr %_0.i.i39, align 4, !noundef !37
  %_32 = add i32 %_36, %_33
  %self1.i.i43 = load i64, ptr %B, align 8, !range !1624, !alias.scope !1675, !noundef !37
  %_4.i.i44 = icmp eq i64 %len.i35, %self1.i.i43
  br i1 %_4.i.i44, label %bb1.i.i47, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49"

bb1.i.i47:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit41"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbb69aa6c0e64d68fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %B)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E.exit49": ; preds = %bb1.i.i47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E.exit41"
  %_15.i.i45 = load ptr, ptr %9, align 8, !alias.scope !1675, !nonnull !37, !noundef !37
  %end.i.i46 = getelementptr inbounds nuw i32, ptr %_15.i.i45, i64 %len.i35
  store i32 %_32, ptr %end.i.i46, align 4
  %15 = add i64 %len.i35, 1
  store i64 %15, ptr %10, align 8, !alias.scope !1675
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1104 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1103, %_12
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1103, %_12
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1103, %spec.select
  %16 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %16, i8 %iter.sroa.7.1104, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1103
  br i1 %or.cond, label %bb11, label %bb10

terminate:                                        ; preds = %cleanup1, %bb22
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb23:                                             ; preds = %bb22
  resume { ptr, i32 } %.pn
}
