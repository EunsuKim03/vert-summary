define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %1 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %1, 2
  %_21.1.i.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  %2 = trunc i64 %0 to i32
  %3 = bitcast i32 %2 to float
  %4 = lshr i64 %0, 32
  %5 = trunc nuw i64 %4 to i32
  %6 = bitcast i32 %5 to float
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %panic, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_alloc
  %7 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %bb18.thread, label %bb3.i4.i.preheader

bb3.i4.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i"
  %9 = add nsw i64 %1, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i4.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %bb3.i4.i.preheader
  %n.vec = and i64 %9, -8
  %10 = shl nsw i64 %n.vec, 2
  %11 = getelementptr i8, ptr %7, i64 %10
  %12 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %7, i64 %offset.idx
  %13 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 0xFFF0000000000000), ptr %next.gep, align 4, !noalias !1037
  store <4 x float> splat (float 0xFFF0000000000000), ptr %13, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %14 = icmp eq i64 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %bb21, label %bb3.i4.i.preheader64

bb3.i4.i.preheader64:                             ; preds = %bb3.i4.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %7, %bb3.i4.i.preheader ], [ %11, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i4.i.preheader ], [ %12, %middle.block ]
  br label %bb3.i4.i

bb18.thread:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5d9e421750769017E.exit.i.i"
  store float 0xFFF0000000000000, ptr %7, align 4
  br label %bb3.preheader

bb3.i4.i:                                         ; preds = %bb3.i4.i.preheader64, %bb3.i4.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i4.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i4.i.preheader64 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i4.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i4.i.preheader64 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store float 0xFFF0000000000000, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %1
  br i1 %exitcond.not.i.i, label %bb21, label %bb3.i4.i, !llvm.loop !1041

panic:                                            ; preds = %bb17.i.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_822c4954dac60677c699dc5283eb2b3f) #20
  unreachable

cleanup:                                          ; preds = %panic8.invoke
  %15 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1042
  resume { ptr, i32 } %15

bb3.preheader:                                    ; preds = %bb21, %bb21.1, %bb18.thread
  %_22.first_iter = icmp samesign ult i32 %n, 3
  br label %bb26

bb14:                                             ; preds = %bb11, %bb7
  %_0.sroa.0.0 = phi i32 [ %17, %bb7 ], [ -1, %bb11 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !23
  ret i32 %_0.sroa.0.0

bb26:                                             ; preds = %bb11, %bb3.preheader
  %iter.sroa.0.045 = phi i64 [ %1, %bb3.preheader ], [ %_48, %bb11 ]
  %right_min.sroa.0.044 = phi float [ 0x7FF0000000000000, %bb3.preheader ], [ %18, %bb11 ]
  %_48 = add nsw i64 %iter.sroa.0.045, -1
  br i1 %_22.first_iter, label %bb4, label %panic8.invoke

bb4:                                              ; preds = %bb26
  %_20 = getelementptr inbounds nuw float, ptr %7, i64 %_48
  %_19 = load float, ptr %_20, align 4, !noundef !23
  %16 = getelementptr inbounds nuw float, ptr %arr, i64 %_48
  %_21 = load float, ptr %16, align 4, !noundef !23
  %_18 = fcmp olt float %_19, %_21
  %_23 = fcmp ogt float %right_min.sroa.0.044, %_21
  %or.cond = select i1 %_18, i1 %_23, i1 false
  br i1 %or.cond, label %bb7, label %bb11

bb7:                                              ; preds = %bb4
  %17 = trunc nuw nsw i64 %_48 to i32
  br label %bb14

bb11:                                             ; preds = %bb4
  %18 = tail call float @llvm.minnum.f32(float %right_min.sroa.0.044, float %_21)
  %_47.not = icmp eq i64 %_48, 0
  br i1 %_47.not, label %bb14, label %bb26

bb21:                                             ; preds = %bb3.i4.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %11, %middle.block ], [ %_15.i.i, %bb3.i4.i ]
  store float 0xFFF0000000000000, ptr %_15.i.i.lcssa, align 4, !noalias !1037
  store float 0xFFF0000000000000, ptr %7, align 4
  %19 = add nuw nsw i64 %1, 1
  %20 = tail call float @llvm.maxnum.f32(float %3, float 0xFFF0000000000000)
  %_14 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %20, ptr %_14, align 4
  %exitcond52.not = icmp samesign ult i32 %n, 3
  br i1 %exitcond52.not, label %bb3.preheader, label %bb19.1

panic8.invoke:                                    ; preds = %bb26, %bb19.2, %bb19.1
  %21 = phi i64 [ 1, %bb19.1 ], [ 2, %bb19.2 ], [ %_48, %bb26 ]
  %22 = phi i64 [ %1, %bb19.1 ], [ %spec.select, %bb19.2 ], [ 2, %bb26 ]
  %23 = phi ptr [ @alloc_0b0704c3bc488019155f8d77b7c87926, %bb19.1 ], [ %spec.select58, %bb19.2 ], [ @alloc_efa843d99df38c63bfb47e755c6f9188, %bb26 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %21, i64 noundef %22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %23) #20
          to label %panic8.cont unwind label %cleanup

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable

bb19.1:                                           ; preds = %bb21
  %exitcond.1.not = icmp eq i64 %19, 2
  br i1 %exitcond.1.not, label %panic8.invoke, label %bb21.1

bb21.1:                                           ; preds = %bb19.1
  %24 = tail call float @llvm.maxnum.f32(float %20, float %6)
  %_14.1 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %24, ptr %_14.1, align 4
  %exitcond52.1.not = icmp eq i32 %n, 3
  br i1 %exitcond52.1.not, label %bb3.preheader, label %bb19.2

bb19.2:                                           ; preds = %bb21.1
  %exitcond.2.not = icmp eq i64 %19, 3
  %spec.select = select i1 %exitcond.2.not, i64 %1, i64 2
  %spec.select58 = select i1 %exitcond.2.not, ptr @alloc_0b0704c3bc488019155f8d77b7c87926, ptr @alloc_850ec370f711d9882b0898269a510218
  br label %panic8.invoke
}
