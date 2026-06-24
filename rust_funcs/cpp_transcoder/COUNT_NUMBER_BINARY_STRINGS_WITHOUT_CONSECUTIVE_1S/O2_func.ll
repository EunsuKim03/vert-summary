define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_3 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %_3, 2
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
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %bb3.i.i.i16, label %bb3.i4.i.preheader

bb3.i4.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i"
  %2 = add nsw i64 %_3, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i4.i.preheader123, label %vector.ph

vector.ph:                                        ; preds = %bb3.i4.i.preheader
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
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !noalias !1037
  store <4 x float> splat (float 1.000000e+00), ptr %6, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %bb3.i.i.i16, label %bb3.i4.i.preheader123

bb3.i4.i.preheader123:                            ; preds = %bb3.i4.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i4.i.preheader ], [ %4, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i4.i.preheader ], [ %5, %middle.block ]
  br label %bb3.i4.i

bb3.i4.i:                                         ; preds = %bb3.i4.i.preheader123, %bb3.i4.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i4.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i4.i.preheader123 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i4.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i4.i.preheader123 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_3
  br i1 %exitcond.not.i.i, label %bb3.i.i.i16, label %bb3.i4.i, !llvm.loop !1041

bb3.i.i.i16:                                      ; preds = %bb3.i4.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i13.i = phi ptr [ %0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i" ], [ %4, %middle.block ], [ %_15.i.i, %bb3.i4.i ]
  store float 1.000000e+00, ptr %ptr.sroa.0.0.lcssa.i13.i, align 4, !noalias !1037
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1042
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1042
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i32, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i17"

bb3.i.i32:                                        ; preds = %bb3.i.i.i16
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i.i) #20
          to label %.noexc unwind label %bb5.thread

.noexc:                                           ; preds = %bb3.i.i32
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i17": ; preds = %bb3.i.i.i16
  br i1 %_2415.i.not.i, label %bb20.thread, label %bb3.i4.i19.preheader

bb3.i4.i19.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i17"
  %10 = add nsw i64 %_3, -1
  %min.iters.check106 = icmp ult i32 %n, 9
  br i1 %min.iters.check106, label %bb3.i4.i19.preheader121, label %vector.ph107

vector.ph107:                                     ; preds = %bb3.i4.i19.preheader
  %n.vec109 = and i64 %10, -8
  %11 = shl nsw i64 %n.vec109, 2
  %12 = getelementptr i8, ptr %8, i64 %11
  %13 = or disjoint i64 %n.vec109, 1
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ]
  %offset.idx112 = shl i64 %index111, 2
  %next.gep113 = getelementptr i8, ptr %8, i64 %offset.idx112
  %14 = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep113, align 4, !noalias !1047
  store <4 x float> splat (float 1.000000e+00), ptr %14, align 4, !noalias !1047
  %index.next114 = add nuw i64 %index111, 8
  %15 = icmp eq i64 %index.next114, %n.vec109
  br i1 %15, label %middle.block115, label %vector.body110, !llvm.loop !1050

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %10, %n.vec109
  br i1 %cmp.n116, label %bb9.preheader, label %bb3.i4.i19.preheader121

bb3.i4.i19.preheader121:                          ; preds = %bb3.i4.i19.preheader, %middle.block115
  %ptr.sroa.0.018.i.i20.ph = phi ptr [ %8, %bb3.i4.i19.preheader ], [ %12, %middle.block115 ]
  %iter.sroa.0.017.i.i21.ph = phi i64 [ 1, %bb3.i4.i19.preheader ], [ %13, %middle.block115 ]
  br label %bb3.i4.i19

bb3.i4.i19:                                       ; preds = %bb3.i4.i19.preheader121, %bb3.i4.i19
  %ptr.sroa.0.018.i.i20 = phi ptr [ %_15.i.i23, %bb3.i4.i19 ], [ %ptr.sroa.0.018.i.i20.ph, %bb3.i4.i19.preheader121 ]
  %iter.sroa.0.017.i.i21 = phi i64 [ %_28.i.i22, %bb3.i4.i19 ], [ %iter.sroa.0.017.i.i21.ph, %bb3.i4.i19.preheader121 ]
  %_28.i.i22 = add nuw i64 %iter.sroa.0.017.i.i21, 1
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i20, align 4, !noalias !1047
  %_15.i.i23 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i20, i64 4
  %exitcond.not.i.i24 = icmp eq i64 %_28.i.i22, %_3
  br i1 %exitcond.not.i.i24, label %bb9.preheader, label %bb3.i4.i19, !llvm.loop !1051

bb20.thread:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb38b5d8d5742616E.exit.i.i17"
  store float 1.000000e+00, ptr %8, align 4, !noalias !1047
  %_2287 = add nsw i32 %n, -1
  %_2188 = zext nneg i32 %_2287 to i64
  br label %bb2.i.i.i3.i42

bb9.preheader:                                    ; preds = %bb3.i4.i19, %middle.block115
  %_15.i.i23.lcssa = phi ptr [ %12, %middle.block115 ], [ %_15.i.i23, %bb3.i4.i19 ]
  store float 1.000000e+00, ptr %_15.i.i23.lcssa, align 4, !noalias !1047
  %wide.trip.count = zext nneg i32 %n to i64
  %load_initial = load float, ptr %8, align 4
  %load_initial119 = load float, ptr %0, align 4
  %16 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %16, 3
  %17 = add nsw i32 %n, -2
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %bb20.unr-lcssa, label %bb9.preheader.new

bb9.preheader.new:                                ; preds = %bb9.preheader
  %unroll_iter = and i64 %16, -4
  br label %bb14

bb5.thread:                                       ; preds = %bb3.i.i32
  %19 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1052
  resume { ptr, i32 } %19

panic:                                            ; preds = %bb17.i.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef -1, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e669bf91d659b90e1c89102d6c888526) #20
  unreachable

bb20.unr-lcssa:                                   ; preds = %bb14, %bb9.preheader
  %store_forwarded120.unr = phi float [ %load_initial119, %bb9.preheader ], [ %26, %bb14 ]
  %store_forwarded.unr = phi float [ %load_initial, %bb9.preheader ], [ %25, %bb14 ]
  %indvars.iv.unr = phi i64 [ 1, %bb9.preheader ], [ %indvars.iv.next.3, %bb14 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb20, label %bb14.epil

bb14.epil:                                        ; preds = %bb20.unr-lcssa, %bb14.epil
  %store_forwarded120.epil = phi float [ %20, %bb14.epil ], [ %store_forwarded120.unr, %bb20.unr-lcssa ]
  %store_forwarded.epil = phi float [ %store_forwarded120.epil, %bb14.epil ], [ %store_forwarded.unr, %bb20.unr-lcssa ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb14.epil ], [ %indvars.iv.unr, %bb20.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb14.epil ], [ 0, %bb20.unr-lcssa ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %_13.epil = getelementptr inbounds nuw float, ptr %0, i64 %indvars.iv.epil
  %20 = fadd float %store_forwarded120.epil, %store_forwarded.epil
  store float %20, ptr %_13.epil, align 4
  %_17.epil = getelementptr inbounds nuw float, ptr %8, i64 %indvars.iv.epil
  store float %store_forwarded120.epil, ptr %_17.epil, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb20, label %bb14.epil, !llvm.loop !1061

bb20:                                             ; preds = %bb14.epil, %bb20.unr-lcssa
  %_22 = add nsw i32 %n, -1
  %_21 = sext i32 %_22 to i64
  %21 = shl nuw nsw i64 %_3, 2
  br label %bb2.i.i.i3.i42

bb2.i.i.i3.i42:                                   ; preds = %bb20, %bb20.thread
  %_2188.pn = phi i64 [ %_2188, %bb20.thread ], [ %_21, %bb20 ]
  %_4.sroa.4.0.i19.i58768998 = phi i64 [ 4, %bb20.thread ], [ %21, %bb20 ]
  %_1999.in = getelementptr inbounds nuw float, ptr %0, i64 %_2188.pn
  %_1999 = load float, ptr %_1999.in, align 4, !noundef !23
  %_23101.in = getelementptr inbounds nuw float, ptr %8, i64 %_2188.pn
  %_23101 = load float, ptr %_23101.in, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %8, i64 noundef %_4.sroa.4.0.i19.i58768998, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1063
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_4.sroa.4.0.i19.i58768998, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1072
  %22 = fadd float %_1999, %_23101
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %22)
  ret i32 %_0

bb14:                                             ; preds = %bb14, %bb9.preheader.new
  %store_forwarded120 = phi float [ %load_initial119, %bb9.preheader.new ], [ %26, %bb14 ]
  %store_forwarded = phi float [ %load_initial, %bb9.preheader.new ], [ %25, %bb14 ]
  %indvars.iv = phi i64 [ 1, %bb9.preheader.new ], [ %indvars.iv.next.3, %bb14 ]
  %niter = phi i64 [ 0, %bb9.preheader.new ], [ %niter.next.3, %bb14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_13 = getelementptr inbounds nuw float, ptr %0, i64 %indvars.iv
  %23 = fadd float %store_forwarded120, %store_forwarded
  store float %23, ptr %_13, align 4
  %_17 = getelementptr inbounds nuw float, ptr %8, i64 %indvars.iv
  store float %store_forwarded120, ptr %_17, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %_13.1 = getelementptr inbounds nuw float, ptr %0, i64 %indvars.iv.next
  %24 = fadd float %23, %store_forwarded120
  store float %24, ptr %_13.1, align 4
  %_17.1 = getelementptr inbounds nuw float, ptr %8, i64 %indvars.iv.next
  store float %23, ptr %_17.1, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %_13.2 = getelementptr inbounds nuw float, ptr %0, i64 %indvars.iv.next.1
  %25 = fadd float %24, %23
  store float %25, ptr %_13.2, align 4
  %_17.2 = getelementptr inbounds nuw float, ptr %8, i64 %indvars.iv.next.1
  store float %24, ptr %_17.2, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %_13.3 = getelementptr inbounds nuw float, ptr %0, i64 %indvars.iv.next.2
  %26 = fadd float %25, %24
  store float %26, ptr %_13.3, align 4
  %_17.3 = getelementptr inbounds nuw float, ptr %8, i64 %indvars.iv.next.2
  store float %25, ptr %_17.3, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb20.unr-lcssa, label %bb14
}
