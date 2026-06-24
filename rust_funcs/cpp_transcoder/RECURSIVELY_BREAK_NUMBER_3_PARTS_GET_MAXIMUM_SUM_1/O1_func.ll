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
  store float 0.000000e+00, ptr %0, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 1.000000e+00, ptr %2, align 4
  store i64 2, ptr %dp, align 8, !alias.scope !1631, !noalias !1636
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %0, ptr %3, align 8, !alias.scope !1631, !noalias !1636
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  br label %bb7

cleanup.loopexit:                                 ; preds = %bb1.i.i
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
          to label %bb23 unwind label %terminate

bb7:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E.exit", %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit
  %storemerge = phi i64 [ 2, %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit ], [ %14, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E.exit" ]
  %iter.sroa.0.0 = phi i32 [ 2, %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit ], [ %iter.sroa.0.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E.exit" ]
  %iter.sroa.7.0 = phi i8 [ 0, %_ZN5alloc5alloc15exchange_malloc17h0e4f24dd894b0768E.exit ], [ %iter.sroa.7.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E.exit" ]
  store i64 %storemerge, ptr %4, align 8
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb0cfa241faee38abE.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb7
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %5 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %5
  %spec.select25 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %6 = sitofp i32 %iter.sroa.0.0 to float
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb0cfa241faee38abE.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb0cfa241faee38abE.exit": ; preds = %bb2.i.i, %bb7
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb7 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb7 ], [ %spec.select25, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi float [ 0.000000e+00, %bb7 ], [ %6, %bb2.i.i ]
  br i1 %or.cond, label %bb11, label %bb10

bb10:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb0cfa241faee38abE.exit"
  %_24 = fmul float %_0.sroa.3.0.i.i, 5.000000e-01
  %7 = call noundef float @llvm.floor.f32(float %_24)
  %_22 = call i64 @llvm.fptoui.sat.i64.f32(float %7)
  %len.i2 = load i64, ptr %4, align 8, !alias.scope !1638, !noalias !1641, !noundef !37
  %_4.i.i3 = icmp ult i64 %_22, %len.i2
  br i1 %_4.i.i3, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit8", label %panic.i.i.invoke

bb11:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb0cfa241faee38abE.exit"
  %_42 = sext i32 %n to i64
  %len.i = load i64, ptr %4, align 8, !alias.scope !1643, !noalias !1646, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_42
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit15", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit8", %bb10, %bb11
  %8 = phi i64 [ %_42, %bb11 ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit15" ], [ %_29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit8" ], [ %_22, %bb10 ]
  %9 = phi i64 [ %len.i, %bb11 ], [ %len.i2, %bb10 ], [ %len.i2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit8" ], [ %len.i2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit15" ]
  %10 = phi ptr [ @alloc_626fdc5c4c8d27a3ca377302f8847dbe, %bb11 ], [ @alloc_d241ec6b437c7a259dabe209df6e203c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit15" ], [ @alloc_a313795edd89d24c5704cd5708731bbb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit8" ], [ @alloc_1bb020318762953f473ae120b591a00f, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.i.i.cont unwind label %cleanup.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit": ; preds = %bb11
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1643, !noalias !1646, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw float, ptr %_6.i, i64 %_42
  %_39 = load float, ptr %_0.i.i, align 4, !noundef !37
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_39)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit8": ; preds = %bb10
  %_6.i5 = load ptr, ptr %3, align 8, !alias.scope !1638, !noalias !1641, !nonnull !37, !noundef !37
  %_31 = fdiv float %_0.sroa.3.0.i.i, 3.000000e+00
  %11 = call noundef float @llvm.floor.f32(float %_31)
  %_29 = call i64 @llvm.fptoui.sat.i64.f32(float %11)
  %_4.i.i10 = icmp ult i64 %_29, %len.i2
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit15", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit15": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit8"
  %_38 = fmul float %_0.sroa.3.0.i.i, 2.500000e-01
  %12 = call noundef float @llvm.floor.f32(float %_38)
  %_36 = call i64 @llvm.fptoui.sat.i64.f32(float %12)
  %_4.i.i17 = icmp ult i64 %_36, %len.i2
  br i1 %_4.i.i17, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit22", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit22": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit15"
  %_0.i.i6 = getelementptr inbounds nuw float, ptr %_6.i5, i64 %_22
  %_19 = load float, ptr %_0.i.i6, align 4, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw float, ptr %_6.i5, i64 %_29
  %_26 = load float, ptr %_0.i.i13, align 4, !noundef !37
  %_18 = fadd float %_19, %_26
  %_0.i.i20 = getelementptr inbounds nuw float, ptr %_6.i5, i64 %_36
  %_33 = load float, ptr %_0.i.i20, align 4, !noundef !37
  %13 = call noundef float @llvm.maxnum.f32(float %_33, float %_0.sroa.3.0.i.i)
  %_17 = fadd float %_18, %13
  %self1.i.i = load i64, ptr %dp, align 8, !range !1624, !alias.scope !1648, !noundef !37
  %_4.i.i23 = icmp eq i64 %len.i2, %self1.i.i
  br i1 %_4.i.i23, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E.exit"

bb1.i.i:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit22"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h168f96f4e2ae8849E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E.exit" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E.exit": ; preds = %bb1.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E.exit22"
  %_15.i.i = load ptr, ptr %3, align 8, !alias.scope !1648, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw float, ptr %_15.i.i, i64 %len.i2
  store float %_17, ptr %end.i.i, align 4
  %14 = add i64 %len.i2, 1
  br label %bb7

terminate:                                        ; preds = %cleanup
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb23:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
