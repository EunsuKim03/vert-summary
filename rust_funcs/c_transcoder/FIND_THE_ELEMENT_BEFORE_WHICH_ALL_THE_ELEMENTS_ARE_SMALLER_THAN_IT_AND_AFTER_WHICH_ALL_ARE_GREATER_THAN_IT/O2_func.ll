define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %1 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %1, 2
  %_21.1.i.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %panic, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_alloc
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %bb18.thread, label %bb3.i4.i.preheader

bb3.i4.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i"
  %4 = add nsw i64 %1, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i4.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %bb3.i4.i.preheader
  %n.vec = and i64 %4, -8
  %5 = shl nsw i64 %n.vec, 2
  %6 = getelementptr i8, ptr %2, i64 %5
  %7 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx
  %8 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 0x7FF0000000000000), ptr %next.gep, align 4, !noalias !1037
  store <4 x float> splat (float 0x7FF0000000000000), ptr %8, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %bb21, label %bb3.i4.i.preheader64

bb3.i4.i.preheader64:                             ; preds = %bb3.i4.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %2, %bb3.i4.i.preheader ], [ %6, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i4.i.preheader ], [ %7, %middle.block ]
  br label %bb3.i4.i

bb18.thread:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i"
  store float 0x7FF0000000000000, ptr %2, align 4
  br label %bb3.preheader

bb3.i4.i:                                         ; preds = %bb3.i4.i.preheader64, %bb3.i4.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i4.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i4.i.preheader64 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i4.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i4.i.preheader64 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store float 0x7FF0000000000000, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %1
  br i1 %exitcond.not.i.i, label %bb21, label %bb3.i4.i, !llvm.loop !1041

panic:                                            ; preds = %bb17.i.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_be1e2a62c724524594da0e416e75e3c6) #20
  unreachable

cleanup:                                          ; preds = %panic8.invoke
  %10 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1042
  resume { ptr, i32 } %10

bb3.preheader:                                    ; preds = %bb21, %bb21.1, %bb18.thread
  %_24.first_iter = icmp samesign ult i32 %n, 3
  br label %bb26

bb14:                                             ; preds = %bb11, %bb7
  %_0.sroa.0.0 = phi i32 [ %12, %bb7 ], [ -1, %bb11 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !23
  ret i32 %_0.sroa.0.0

bb26:                                             ; preds = %bb11, %bb3.preheader
  %iter.sroa.0.045 = phi i64 [ %1, %bb3.preheader ], [ %_50, %bb11 ]
  %right_min.sroa.0.044 = phi float [ 0x7FF0000000000000, %bb3.preheader ], [ %13, %bb11 ]
  %_50 = add nsw i64 %iter.sroa.0.045, -1
  br i1 %_24.first_iter, label %bb4, label %panic8.invoke

bb4:                                              ; preds = %bb26
  %_21 = getelementptr inbounds nuw float, ptr %2, i64 %_50
  %_20 = load float, ptr %_21, align 4, !noundef !23
  %11 = getelementptr inbounds nuw i32, ptr %arr, i64 %_50
  %_23 = load i32, ptr %11, align 4, !noundef !23
  %_22 = sitofp i32 %_23 to float
  %_19 = fcmp olt float %_20, %_22
  %_25 = fcmp ogt float %right_min.sroa.0.044, %_22
  %or.cond = select i1 %_19, i1 %_25, i1 false
  br i1 %or.cond, label %bb7, label %bb11

bb7:                                              ; preds = %bb4
  %12 = trunc nuw nsw i64 %_50 to i32
  br label %bb14

bb11:                                             ; preds = %bb4
  %13 = tail call float @llvm.minnum.f32(float %right_min.sroa.0.044, float %_22)
  %_49.not = icmp eq i64 %_50, 0
  br i1 %_49.not, label %bb14, label %bb26

bb21:                                             ; preds = %bb3.i4.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %6, %middle.block ], [ %_15.i.i, %bb3.i4.i ]
  store float 0x7FF0000000000000, ptr %_15.i.i.lcssa, align 4, !noalias !1037
  store float 0x7FF0000000000000, ptr %2, align 4
  %14 = add nuw nsw i64 %1, 1
  %_15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float 0x7FF0000000000000, ptr %_15, align 4
  %exitcond52.not = icmp samesign ult i32 %n, 3
  br i1 %exitcond52.not, label %bb3.preheader, label %bb19.1

panic8.invoke:                                    ; preds = %bb26, %bb19.2, %bb19.1
  %15 = phi i64 [ 1, %bb19.1 ], [ 2, %bb19.2 ], [ %_50, %bb26 ]
  %16 = phi i64 [ %1, %bb19.1 ], [ %spec.select, %bb19.2 ], [ 2, %bb26 ]
  %17 = phi ptr [ @alloc_41df549983361f78ff3e0173138d3135, %bb19.1 ], [ %spec.select58, %bb19.2 ], [ @alloc_364c74a4dfd1ffb8fd695b07409dc25a, %bb26 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %15, i64 noundef %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #20
          to label %panic8.cont unwind label %cleanup

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable

bb19.1:                                           ; preds = %bb21
  %exitcond.1.not = icmp eq i64 %14, 2
  br i1 %exitcond.1.not, label %panic8.invoke, label %bb21.1

bb21.1:                                           ; preds = %bb19.1
  %_15.1 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0x7FF0000000000000, ptr %_15.1, align 4
  %exitcond52.1.not = icmp eq i32 %n, 3
  br i1 %exitcond52.1.not, label %bb3.preheader, label %bb19.2

bb19.2:                                           ; preds = %bb21.1
  %exitcond.2.not = icmp eq i64 %14, 3
  %spec.select = select i1 %exitcond.2.not, i64 %1, i64 2
  %spec.select58 = select i1 %exitcond.2.not, ptr @alloc_41df549983361f78ff3e0173138d3135, ptr @alloc_f73299564b4bdfa3d285c01b50503340
  br label %panic8.invoke
}
