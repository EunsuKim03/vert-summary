define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  %_21.0.i.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc7a0eea60fff1794E.exit", label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0498f470b0d93ce4E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0498f470b0d93ce4E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 0
  br i1 %_2415.i.not.i, label %bb4.i.i, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0498f470b0d93ce4E.exit.i.i"
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb3.i3.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %_4, -8
  %2 = shl nsw i64 %n.vec, 2
  %3 = getelementptr i8, ptr %0, i64 %2
  %4 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %5 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1037
  store <4 x i32> splat (i32 1), ptr %5, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %_4
  br i1 %cmp.n, label %bb4.i.i, label %bb3.i3.i.preheader42

bb3.i3.i.preheader42:                             ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i3.i.preheader ], [ %3, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %4, %middle.block ]
  br label %bb3.i3.i

bb4.i.i:                                          ; preds = %bb3.i3.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0498f470b0d93ce4E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i12.i = phi ptr [ %0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0498f470b0d93ce4E.exit.i.i" ], [ %3, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i12.i, align 4, !noalias !1037
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc7a0eea60fff1794E.exit"

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader42, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader42 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader42 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.017.i.i, %_4
  br i1 %exitcond.not.i.i, label %bb4.i.i, label %bb3.i3.i, !llvm.loop !1041

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc7a0eea60fff1794E.exit": ; preds = %bb17.i.i.i, %bb4.i.i
  %7 = phi ptr [ %0, %bb4.i.i ], [ inttoptr (i64 4 to ptr), %bb17.i.i.i ]
  %_0.i.not.i25 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i25, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc7a0eea60fff1794E.exit", %bb13
  %iter.sroa.0.026 = phi i32 [ %spec.select, %bb13 ], [ 2, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc7a0eea60fff1794E.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.026, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %8 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.026, %8
  %_15 = add nsw i32 %iter.sroa.0.026, -1
  %_14 = sext i32 %_15 to i64
  %_27 = icmp ugt i64 %_3, %_14
  br i1 %_27, label %bb10, label %panic3.invoke

cleanup:                                          ; preds = %panic3.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i = icmp eq i64 %_3, 0
  br i1 %_6.i.i.i.i2.i, label %bb7, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %10 = shl nuw nsw i64 %_3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1042
  br label %bb7

bb4:                                              ; preds = %bb13, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc7a0eea60fff1794E.exit"
  %_32.not = icmp eq i32 %n, -1
  br i1 %_32.not, label %panic3.invoke, label %bb11

bb11:                                             ; preds = %bb4
  %_22 = getelementptr inbounds nuw i32, ptr %7, i64 %_4
  %_0 = load i32, ptr %_22, align 4, !noundef !23
  %_6.i.i.i.i2.i8 = icmp eq i64 %_3, 0
  br i1 %_6.i.i.i.i2.i8, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h229c238cb28a4ff4E.exit11", label %bb2.i.i.i3.i9

bb2.i.i.i3.i9:                                    ; preds = %bb11
  %11 = shl nuw nsw i64 %_3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %11, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1051
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h229c238cb28a4ff4E.exit11"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h229c238cb28a4ff4E.exit11": ; preds = %bb11, %bb2.i.i.i3.i9
  ret i32 %_0

bb10:                                             ; preds = %bb2.i
  %_19 = add nsw i32 %iter.sroa.0.026, -2
  %_18 = sext i32 %_19 to i64
  %_37 = icmp ugt i64 %_3, %_18
  br i1 %_37, label %bb12, label %panic3.invoke

bb12:                                             ; preds = %bb10
  %_21 = zext nneg i32 %iter.sroa.0.026 to i64
  %_43 = icmp ugt i64 %_3, %_21
  br i1 %_43, label %bb13, label %panic3.invoke

bb13:                                             ; preds = %bb12
  %_13 = getelementptr inbounds nuw i32, ptr %7, i64 %_14
  %_12 = load i32, ptr %_13, align 4, !noundef !23
  %_17 = getelementptr inbounds nuw i32, ptr %7, i64 %_18
  %_16 = load i32, ptr %_17, align 4, !noundef !23
  %_20 = getelementptr inbounds nuw i32, ptr %7, i64 %_21
  %_11 = add i32 %_12, 1
  %12 = add i32 %_11, %_16
  store i32 %12, ptr %_20, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic3.invoke:                                    ; preds = %bb12, %bb10, %bb2.i, %bb4
  %13 = phi i64 [ %_4, %bb4 ], [ %_14, %bb2.i ], [ %_18, %bb10 ], [ %_21, %bb12 ]
  %14 = phi ptr [ @alloc_14eaec5d391f111a239c9c48914d7ab0, %bb4 ], [ @alloc_831c3e2b73ced7094fc4e5b18a788af0, %bb2.i ], [ @alloc_74dcb3c0e909c0559a597b01e4a90e09, %bb10 ], [ @alloc_a7c15957f75e3e05971d4fa4272f1067, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #20
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb7:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %9
}
