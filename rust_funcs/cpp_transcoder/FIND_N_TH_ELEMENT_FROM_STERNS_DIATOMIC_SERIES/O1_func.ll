define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
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
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %2, align 4
  store i64 2, ptr %dp, align 8, !alias.scope !1631, !noalias !1636
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %0, ptr %3, align 8, !alias.scope !1631, !noalias !1636
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 2, ptr %4, align 8
  %_0.i.not.i.i41 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i41, label %bb9, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.147 = zext i1 %.not to i8
  %_0.i3.i.i42.not = icmp eq i32 %n, 2
  %iter.sroa.0.146 = select i1 %_0.i3.i.i42.not, i32 2, i32 3
  br label %bb8

cleanup.loopexit:                                 ; preds = %bb1.i.i, %bb1.i.i30
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb21 unwind label %terminate

bb8:                                              ; preds = %bb8.lr.ph, %bb17
  %_0.sroa.3.0.i.i50 = phi i32 [ 2, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb17 ]
  %iter.sroa.7.149 = phi i8 [ %iter.sroa.7.147, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb17 ]
  %iter.sroa.0.148 = phi i32 [ %iter.sroa.0.146, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb17 ]
  %5 = and i32 %_0.sroa.3.0.i.i50, 1
  %_13 = icmp eq i32 %5, 0
  %_22 = sitofp i32 %_0.sroa.3.0.i.i50 to float
  %_21 = fmul float %_22, 5.000000e-01
  br i1 %_13, label %bb10, label %bb13

bb9:                                              ; preds = %bb17, %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit
  %_40 = sext i32 %n to i64
  %len.i = load i64, ptr %4, align 8, !alias.scope !1638, !noalias !1641, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_40
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit8", %bb10, %bb13, %bb9
  %6 = phi i64 [ %_40, %bb9 ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit8" ], [ %_20, %bb10 ], [ %_29, %bb13 ]
  %7 = phi i64 [ %len.i, %bb9 ], [ %len.i2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit8" ], [ %len.i9, %bb10 ], [ %len.i2, %bb13 ]
  %8 = phi ptr [ @alloc_2f41ec99b906a95f9058e1b844b8e870, %bb9 ], [ @alloc_71493d6e530f88bf9949cac6ee384d8c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit8" ], [ @alloc_2382a59604f45caf8e93f98b255a9ee0, %bb10 ], [ @alloc_c301f9b6f03be3d4ffeb15e607c0fb6e, %bb13 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i.cont unwind label %cleanup.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit": ; preds = %bb9
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1638, !noalias !1641, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_40
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb13:                                             ; preds = %bb8
  %_30 = fadd float %_21, -1.000000e+00
  %_29 = call i64 @llvm.fptoui.sat.i64.f32(float %_30)
  %len.i2 = load i64, ptr %4, align 8, !alias.scope !1643, !noalias !1646, !noundef !37
  %_4.i.i3 = icmp ult i64 %_29, %len.i2
  br i1 %_4.i.i3, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit8", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit8": ; preds = %bb13
  %_37 = fadd float %_21, 1.000000e+00
  %_36 = call i64 @llvm.fptoui.sat.i64.f32(float %_37)
  %_4.i.i17 = icmp ult i64 %_36, %len.i2
  br i1 %_4.i.i17, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit22", label %panic.i.i.invoke

bb10:                                             ; preds = %bb8
  %_20 = call i64 @llvm.fptoui.sat.i64.f32(float %_21)
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1648, !noalias !1651, !noundef !37
  %_4.i.i10 = icmp ult i64 %_20, %len.i9
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit15", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit15": ; preds = %bb10
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1648, !noalias !1651, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_20
  %_17 = load i32, ptr %_0.i.i13, align 4, !noundef !37
  %self1.i.i26 = load i64, ptr %dp, align 8, !range !1624, !alias.scope !1653, !noundef !37
  %_4.i.i27 = icmp eq i64 %len.i9, %self1.i.i26
  br i1 %_4.i.i27, label %bb1.i.i30, label %bb17

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit22": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit8"
  %_6.i5 = load ptr, ptr %3, align 8, !alias.scope !1643, !noalias !1646, !nonnull !37, !noundef !37
  %_0.i.i6 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_29
  %_26 = load i32, ptr %_0.i.i6, align 4, !noundef !37
  %_0.i.i20 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_36
  %_33 = load i32, ptr %_0.i.i20, align 4, !noundef !37
  %_25 = add i32 %_33, %_26
  %self1.i.i = load i64, ptr %dp, align 8, !range !1624, !alias.scope !1658, !noundef !37
  %_4.i.i23 = icmp eq i64 %len.i2, %self1.i.i
  br i1 %_4.i.i23, label %bb1.i.i, label %bb17

bb1.i.i:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit22"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h08ced0ac2cad1f44E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %bb17 unwind label %cleanup.loopexit

bb17:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit22", %bb1.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit15", %bb1.i.i30
  %len.i9.sink = phi i64 [ %len.i9, %bb1.i.i30 ], [ %len.i9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit15" ], [ %len.i2, %bb1.i.i ], [ %len.i2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit22" ]
  %_17.sink = phi i32 [ %_17, %bb1.i.i30 ], [ %_17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit15" ], [ %_25, %bb1.i.i ], [ %_25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit22" ]
  %_15.i.i28 = load ptr, ptr %3, align 8, !nonnull !37, !noundef !37
  %end.i.i29 = getelementptr inbounds nuw i32, ptr %_15.i.i28, i64 %len.i9.sink
  store i32 %_17.sink, ptr %end.i.i29, align 4
  %storemerge = add i64 %len.i9.sink, 1
  store i64 %storemerge, ptr %4, align 8
  %_10.i.i = trunc nuw i8 %iter.sroa.7.149 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.148, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.148, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.148, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.149, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.148
  br i1 %or.cond, label %bb9, label %bb8

bb1.i.i30:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE.exit15"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h08ced0ac2cad1f44E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %bb17 unwind label %cleanup.loopexit

terminate:                                        ; preds = %cleanup
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb21:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
