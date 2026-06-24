define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %iter1 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %iter1, 2
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
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %bb3.i.i.i17, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i"
  %2 = add nsw i64 %iter1, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %2, -8
  %3 = shl nsw i64 %n.vec, 2
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %6 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1037
  store <4 x i32> splat (i32 1), ptr %6, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %bb3.i.i.i17, label %bb3.i3.i.preheader112

bb3.i3.i.preheader112:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i3.i.preheader ], [ %4, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %5, %middle.block ]
  br label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader112, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader112 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader112 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %iter1
  br i1 %exitcond.not.i.i, label %bb3.i.i.i17, label %bb3.i3.i, !llvm.loop !1041

bb3.i.i.i17:                                      ; preds = %bb3.i3.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i12.i = phi ptr [ %0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i" ], [ %4, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i12.i, align 4, !noalias !1037
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1042
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1042
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i33, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i18"

bb3.i.i33:                                        ; preds = %bb3.i.i.i17
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i.i) #20
          to label %.noexc unwind label %bb5.thread

.noexc:                                           ; preds = %bb3.i.i33
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i18": ; preds = %bb3.i.i.i17
  br i1 %_2415.i.not.i, label %bb10.thread88, label %bb3.i3.i20.preheader

bb3.i3.i20.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i18"
  %10 = add nsw i64 %iter1, -1
  %min.iters.check95 = icmp ult i32 %n, 9
  br i1 %min.iters.check95, label %bb3.i3.i20.preheader110, label %vector.ph96

vector.ph96:                                      ; preds = %bb3.i3.i20.preheader
  %n.vec98 = and i64 %10, -8
  %11 = shl nsw i64 %n.vec98, 2
  %12 = getelementptr i8, ptr %8, i64 %11
  %13 = or disjoint i64 %n.vec98, 1
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next103, %vector.body99 ]
  %offset.idx101 = shl i64 %index100, 2
  %next.gep102 = getelementptr i8, ptr %8, i64 %offset.idx101
  %14 = getelementptr i8, ptr %next.gep102, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep102, align 4, !noalias !1047
  store <4 x i32> splat (i32 1), ptr %14, align 4, !noalias !1047
  %index.next103 = add nuw i64 %index100, 8
  %15 = icmp eq i64 %index.next103, %n.vec98
  br i1 %15, label %middle.block104, label %vector.body99, !llvm.loop !1050

middle.block104:                                  ; preds = %vector.body99
  %cmp.n105 = icmp eq i64 %10, %n.vec98
  br i1 %cmp.n105, label %bb9.preheader, label %bb3.i3.i20.preheader110

bb3.i3.i20.preheader110:                          ; preds = %bb3.i3.i20.preheader, %middle.block104
  %ptr.sroa.0.018.i.i21.ph = phi ptr [ %8, %bb3.i3.i20.preheader ], [ %12, %middle.block104 ]
  %iter.sroa.0.017.i.i22.ph = phi i64 [ 1, %bb3.i3.i20.preheader ], [ %13, %middle.block104 ]
  br label %bb3.i3.i20

bb3.i3.i20:                                       ; preds = %bb3.i3.i20.preheader110, %bb3.i3.i20
  %ptr.sroa.0.018.i.i21 = phi ptr [ %_15.i.i24, %bb3.i3.i20 ], [ %ptr.sroa.0.018.i.i21.ph, %bb3.i3.i20.preheader110 ]
  %iter.sroa.0.017.i.i22 = phi i64 [ %_28.i.i23, %bb3.i3.i20 ], [ %iter.sroa.0.017.i.i22.ph, %bb3.i3.i20.preheader110 ]
  %_28.i.i23 = add nuw i64 %iter.sroa.0.017.i.i22, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i21, align 4, !noalias !1047
  %_15.i.i24 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i21, i64 4
  %exitcond.not.i.i25 = icmp eq i64 %_28.i.i23, %iter1
  br i1 %exitcond.not.i.i25, label %bb9.preheader, label %bb3.i3.i20, !llvm.loop !1051

bb10.thread88:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h869ef1880d3b8e22E.exit.i.i18"
  store i32 1, ptr %8, align 4, !noalias !1047
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hfc119e9e2c3931b3E.exit50"

bb9.preheader:                                    ; preds = %bb3.i3.i20, %middle.block104
  %_15.i.i24.lcssa = phi ptr [ %12, %middle.block104 ], [ %_15.i.i24, %bb3.i3.i20 ]
  store i32 1, ptr %_15.i.i24.lcssa, align 4, !noalias !1047
  %load_initial = load i32, ptr %8, align 4
  %load_initial108 = load i32, ptr %0, align 4
  %16 = add nsw i64 %iter1, -2
  %xtraiter = and i64 %10, 3
  %17 = icmp ult i64 %16, 3
  br i1 %17, label %bb10.unr-lcssa, label %bb9.preheader.new

bb9.preheader.new:                                ; preds = %bb9.preheader
  %unroll_iter = and i64 %10, -4
  br label %bb15

bb5.thread:                                       ; preds = %bb3.i.i33
  %18 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1052
  resume { ptr, i32 } %18

bb10.unr-lcssa:                                   ; preds = %bb15, %bb9.preheader
  %store_forwarded109.unr = phi i32 [ %load_initial108, %bb9.preheader ], [ %29, %bb15 ]
  %store_forwarded.unr = phi i32 [ %load_initial, %bb9.preheader ], [ %27, %bb15 ]
  %iter.sroa.0.073.unr = phi i64 [ 1, %bb9.preheader ], [ %28, %bb15 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb10, label %bb15.epil

bb15.epil:                                        ; preds = %bb10.unr-lcssa, %bb15.epil
  %store_forwarded109.epil = phi i32 [ %20, %bb15.epil ], [ %store_forwarded109.unr, %bb10.unr-lcssa ]
  %store_forwarded.epil = phi i32 [ %store_forwarded109.epil, %bb15.epil ], [ %store_forwarded.unr, %bb10.unr-lcssa ]
  %iter.sroa.0.073.epil = phi i64 [ %19, %bb15.epil ], [ %iter.sroa.0.073.unr, %bb10.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb15.epil ], [ 0, %bb10.unr-lcssa ]
  %19 = add nuw i64 %iter.sroa.0.073.epil, 1
  %_12.epil = getelementptr inbounds nuw i32, ptr %0, i64 %iter.sroa.0.073.epil
  %20 = add i32 %store_forwarded.epil, %store_forwarded109.epil
  store i32 %20, ptr %_12.epil, align 4
  %_15.epil = getelementptr inbounds nuw i32, ptr %8, i64 %iter.sroa.0.073.epil
  store i32 %store_forwarded109.epil, ptr %_15.epil, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb10, label %bb15.epil, !llvm.loop !1061

bb10:                                             ; preds = %bb15.epil, %bb10.unr-lcssa
  %_18 = add nsw i64 %iter1, -1
  %21 = shl nuw nsw i64 %iter1, 2
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hfc119e9e2c3931b3E.exit50"

panic:                                            ; preds = %bb17.i.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef -1, i64 noundef %iter1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ee050228a30a0445f82832821672d805) #20
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hfc119e9e2c3931b3E.exit50": ; preds = %bb10, %bb10.thread88
  %_1892 = phi i64 [ 0, %bb10.thread88 ], [ %_18, %bb10 ]
  %_4.sroa.4.0.i18.i598091 = phi i64 [ 4, %bb10.thread88 ], [ %21, %bb10 ]
  %_17 = getelementptr inbounds nuw i32, ptr %0, i64 %_1892
  %_16 = load i32, ptr %_17, align 4, !noundef !23
  %_20 = getelementptr inbounds nuw i32, ptr %8, i64 %_1892
  %_19 = load i32, ptr %_20, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %8, i64 noundef %_4.sroa.4.0.i18.i598091, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1063
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_4.sroa.4.0.i18.i598091, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1072
  %_0 = add i32 %_19, %_16
  ret i32 %_0

bb15:                                             ; preds = %bb15, %bb9.preheader.new
  %store_forwarded109 = phi i32 [ %load_initial108, %bb9.preheader.new ], [ %29, %bb15 ]
  %store_forwarded = phi i32 [ %load_initial, %bb9.preheader.new ], [ %27, %bb15 ]
  %iter.sroa.0.073 = phi i64 [ 1, %bb9.preheader.new ], [ %28, %bb15 ]
  %niter = phi i64 [ 0, %bb9.preheader.new ], [ %niter.next.3, %bb15 ]
  %22 = add nuw nsw i64 %iter.sroa.0.073, 1
  %_12 = getelementptr inbounds nuw i32, ptr %0, i64 %iter.sroa.0.073
  %23 = add i32 %store_forwarded, %store_forwarded109
  store i32 %23, ptr %_12, align 4
  %_15 = getelementptr inbounds nuw i32, ptr %8, i64 %iter.sroa.0.073
  store i32 %store_forwarded109, ptr %_15, align 4
  %24 = add nuw nsw i64 %iter.sroa.0.073, 2
  %_12.1 = getelementptr inbounds nuw i32, ptr %0, i64 %22
  %25 = add i32 %store_forwarded109, %23
  store i32 %25, ptr %_12.1, align 4
  %_15.1 = getelementptr inbounds nuw i32, ptr %8, i64 %22
  store i32 %23, ptr %_15.1, align 4
  %26 = add nuw i64 %iter.sroa.0.073, 3
  %_12.2 = getelementptr inbounds nuw i32, ptr %0, i64 %24
  %27 = add i32 %23, %25
  store i32 %27, ptr %_12.2, align 4
  %_15.2 = getelementptr inbounds nuw i32, ptr %8, i64 %24
  store i32 %25, ptr %_15.2, align 4
  %28 = add nuw i64 %iter.sroa.0.073, 4
  %_12.3 = getelementptr inbounds nuw i32, ptr %0, i64 %26
  %29 = add i32 %25, %27
  store i32 %29, ptr %_12.3, align 4
  %_15.3 = getelementptr inbounds nuw i32, ptr %8, i64 %26
  store i32 %27, ptr %_15.3, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb10.unr-lcssa, label %bb15
}
