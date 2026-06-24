define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter3 = sext i32 %n to i64
  %_3419.not = icmp eq i32 %n, 0
  br i1 %_3419.not, label %bb14, label %bb9.preheader

bb9.preheader:                                    ; preds = %start
  %1 = add nsw i64 %iter3, -3
  %.not = icmp ult i64 %1, -2
  br i1 %.not, label %panic8, label %bb9.preheader49

bb9.preheader49:                                  ; preds = %bb9.preheader
  %2 = add nsw i64 %iter3, -1
  %3 = icmp ult i32 %n, 4
  br i1 %3, label %bb9.epil.preheader, label %bb9.preheader49.new

bb9.preheader49.new:                              ; preds = %bb9.preheader49
  %invariant.gep71 = getelementptr inbounds i8, ptr %arr, i64 4
  %invariant.gep73 = getelementptr inbounds i8, ptr %arr, i64 8
  %invariant.gep75 = getelementptr inbounds i8, ptr %arr, i64 12
  br label %bb9

bb9:                                              ; preds = %bb9, %bb9.preheader49.new
  %cum_sum.sroa.0.021 = phi float [ 0.000000e+00, %bb9.preheader49.new ], [ %9, %bb9 ]
  %iter.sroa.0.020 = phi i64 [ 0, %bb9.preheader49.new ], [ %8, %bb9 ]
  %niter = phi i64 [ 0, %bb9.preheader49.new ], [ %niter.next.3, %bb9 ]
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.020
  %_8 = load i32, ptr %4, align 8, !noundef !23
  %_7 = sitofp i32 %_8 to float
  %5 = fadd float %cum_sum.sroa.0.021, %_7
  %gep72 = getelementptr inbounds i32, ptr %invariant.gep71, i64 %iter.sroa.0.020
  %_8.1 = load i32, ptr %gep72, align 4, !noundef !23
  %_7.1 = sitofp i32 %_8.1 to float
  %6 = fadd float %5, %_7.1
  %gep74 = getelementptr inbounds i32, ptr %invariant.gep73, i64 %iter.sroa.0.020
  %_8.2 = load i32, ptr %gep74, align 8, !noundef !23
  %_7.2 = sitofp i32 %_8.2 to float
  %7 = fadd float %6, %_7.2
  %8 = add nuw nsw i64 %iter.sroa.0.020, 4
  %gep76 = getelementptr inbounds i32, ptr %invariant.gep75, i64 %iter.sroa.0.020
  %_8.3 = load i32, ptr %gep76, align 4, !noundef !23
  %_7.3 = sitofp i32 %_8.3 to float
  %9 = fadd float %7, %_7.3
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %bb9.epil.preheader, label %bb9

bb9.epil.preheader:                               ; preds = %bb9.preheader49, %bb9
  %cum_sum.sroa.0.021.unr = phi float [ 0.000000e+00, %bb9.preheader49 ], [ %9, %bb9 ]
  %iter.sroa.0.020.unr = phi i64 [ 0, %bb9.preheader49 ], [ %8, %bb9 ]
  br label %bb9.epil

bb9.epil:                                         ; preds = %bb9.epil, %bb9.epil.preheader
  %cum_sum.sroa.0.021.epil = phi float [ %12, %bb9.epil ], [ %cum_sum.sroa.0.021.unr, %bb9.epil.preheader ]
  %iter.sroa.0.020.epil = phi i64 [ %10, %bb9.epil ], [ %iter.sroa.0.020.unr, %bb9.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb9.epil ], [ 0, %bb9.epil.preheader ]
  %10 = add nuw nsw i64 %iter.sroa.0.020.epil, 1
  %11 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.020.epil
  %_8.epil = load i32, ptr %11, align 4, !noundef !23
  %_7.epil = sitofp i32 %_8.epil to float
  %12 = fadd float %cum_sum.sroa.0.021.epil, %_7.epil
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %iter3
  br i1 %epil.iter.cmp.not, label %bb11.preheader, label %bb9.epil, !llvm.loop !1031

bb11.preheader:                                   ; preds = %bb9.epil
  %13 = icmp ult i32 %n, 4
  br i1 %13, label %bb11.epil.preheader, label %bb11

bb11.epil.preheader:                              ; preds = %bb11.preheader, %bb11
  %iter1.sroa.0.024.unr = phi i64 [ 0, %bb11.preheader ], [ %29, %bb11 ]
  %curr_val.sroa.0.023.unr = phi float [ 0.000000e+00, %bb11.preheader ], [ %31, %bb11 ]
  br label %bb11.epil

bb11.epil:                                        ; preds = %bb11.epil, %bb11.epil.preheader
  %iter1.sroa.0.024.epil = phi i64 [ %14, %bb11.epil ], [ %iter1.sroa.0.024.unr, %bb11.epil.preheader ]
  %curr_val.sroa.0.023.epil = phi float [ %16, %bb11.epil ], [ %curr_val.sroa.0.023.unr, %bb11.epil.preheader ]
  %epil.iter53 = phi i64 [ %epil.iter53.next, %bb11.epil ], [ 0, %bb11.epil.preheader ]
  %_14.epil = uitofp nneg i64 %iter1.sroa.0.024.epil to float
  %14 = add nuw nsw i64 %iter1.sroa.0.024.epil, 1
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter1.sroa.0.024.epil
  %_16.epil = load i32, ptr %15, align 4, !noundef !23
  %_15.epil = sitofp i32 %_16.epil to float
  %_13.epil = fmul float %_14.epil, %_15.epil
  %16 = fadd float %curr_val.sroa.0.023.epil, %_13.epil
  %epil.iter53.next = add i64 %epil.iter53, 1
  %epil.iter53.cmp.not = icmp eq i64 %epil.iter53.next, %iter3
  br i1 %epil.iter53.cmp.not, label %bb12, label %bb11.epil, !llvm.loop !1033

bb12:                                             ; preds = %bb11.epil
  %17 = tail call i32 @llvm.fptosi.sat.i32.f32(float %16)
  %_4226.not = icmp eq i32 %n, 1
  br i1 %_4226.not, label %bb14, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %bb12
  %_31 = add i32 %n, -1
  %_30 = sitofp i32 %_31 to float
  %18 = and i32 %n, -2
  %.not40.not = icmp eq i32 %18, 2
  br i1 %.not40.not, label %bb13.lr.ph.split, label %panic

bb13.lr.ph.split:                                 ; preds = %bb13.lr.ph
  %invariant.gep = getelementptr i8, ptr %arr, i64 -4
  %xtraiter58 = and i64 %2, 1
  %19 = icmp eq i32 %n, 2
  br i1 %19, label %bb14.loopexit.unr-lcssa, label %bb13.lr.ph.split.new

bb13.lr.ph.split.new:                             ; preds = %bb13.lr.ph.split
  %unroll_iter62 = and i64 %2, 2
  br label %bb13

bb11:                                             ; preds = %bb11.preheader, %bb11
  %iter1.sroa.0.024 = phi i64 [ %29, %bb11 ], [ 0, %bb11.preheader ]
  %curr_val.sroa.0.023 = phi float [ %31, %bb11 ], [ 0.000000e+00, %bb11.preheader ]
  %niter57 = phi i64 [ %niter57.next.3, %bb11 ], [ 0, %bb11.preheader ]
  %_14 = uitofp nneg i64 %iter1.sroa.0.024 to float
  %20 = or disjoint i64 %iter1.sroa.0.024, 1
  %21 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter1.sroa.0.024
  %_16 = load i32, ptr %21, align 8, !noundef !23
  %_15 = sitofp i32 %_16 to float
  %_13 = fmul float %_14, %_15
  %22 = fadd float %curr_val.sroa.0.023, %_13
  %_14.1 = uitofp nneg i64 %20 to float
  %23 = or disjoint i64 %iter1.sroa.0.024, 2
  %24 = getelementptr inbounds nuw i32, ptr %arr, i64 %20
  %_16.1 = load i32, ptr %24, align 4, !noundef !23
  %_15.1 = sitofp i32 %_16.1 to float
  %_13.1 = fmul float %_14.1, %_15.1
  %25 = fadd float %22, %_13.1
  %_14.2 = uitofp nneg i64 %23 to float
  %26 = or disjoint i64 %iter1.sroa.0.024, 3
  %27 = getelementptr inbounds nuw i32, ptr %arr, i64 %23
  %_16.2 = load i32, ptr %27, align 8, !noundef !23
  %_15.2 = sitofp i32 %_16.2 to float
  %_13.2 = fmul float %_14.2, %_15.2
  %28 = fadd float %25, %_13.2
  %_14.3 = uitofp nneg i64 %26 to float
  %29 = add nuw nsw i64 %iter1.sroa.0.024, 4
  %30 = getelementptr inbounds nuw i32, ptr %arr, i64 %26
  %_16.3 = load i32, ptr %30, align 4, !noundef !23
  %_15.3 = sitofp i32 %_16.3 to float
  %_13.3 = fmul float %_14.3, %_15.3
  %31 = fadd float %28, %_13.3
  %niter57.next.3 = add i64 %niter57, 4
  %niter57.ncmp.3 = icmp eq i64 %niter57.next.3, 0
  br i1 %niter57.ncmp.3, label %bb11.epil.preheader, label %bb11

bb14.loopexit.unr-lcssa:                          ; preds = %bb13, %bb13.lr.ph.split
  %_0.sroa.0.0.i.lcssa.ph = phi i32 [ poison, %bb13.lr.ph.split ], [ %_0.sroa.0.0.i.1, %bb13 ]
  %iter2.sroa.0.029.unr = phi i64 [ 1, %bb13.lr.ph.split ], [ %32, %bb13 ]
  %res.sroa.0.028.unr = phi i32 [ %17, %bb13.lr.ph.split ], [ %_0.sroa.0.0.i.1, %bb13 ]
  %curr_val.sroa.0.127.unr = phi float [ %16, %bb13.lr.ph.split ], [ %next_val.1, %bb13 ]
  %lcmp.mod60.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod60.not, label %bb14, label %bb13.epil

bb13.epil:                                        ; preds = %bb14.loopexit.unr-lcssa
  %gep.epil = getelementptr i32, ptr %invariant.gep, i64 %iter2.sroa.0.029.unr
  %_26.epil = load i32, ptr %gep.epil, align 4, !noundef !23
  %_25.epil = sitofp i32 %_26.epil to float
  %_23.epil = fsub float %12, %_25.epil
  %_22.epil = fsub float %curr_val.sroa.0.127.unr, %_23.epil
  %_29.epil = fmul float %_30, %_25.epil
  %next_val.epil = fadd float %_29.epil, %_22.epil
  %_33.epil = tail call i32 @llvm.fptosi.sat.i32.f32(float %next_val.epil)
  %_0.sroa.0.0.i.epil = tail call noundef i32 @llvm.smax.i32(i32 %_33.epil, i32 %res.sroa.0.028.unr)
  br label %bb14

bb14:                                             ; preds = %bb13.epil, %bb14.loopexit.unr-lcssa, %start, %bb12
  %res.sroa.0.0.lcssa = phi i32 [ %17, %bb12 ], [ 0, %start ], [ %_0.sroa.0.0.i.lcssa.ph, %bb14.loopexit.unr-lcssa ], [ %_0.sroa.0.0.i.epil, %bb13.epil ]
  ret i32 %res.sroa.0.0.lcssa

bb13:                                             ; preds = %bb13, %bb13.lr.ph.split.new
  %iter2.sroa.0.029 = phi i64 [ 1, %bb13.lr.ph.split.new ], [ %32, %bb13 ]
  %res.sroa.0.028 = phi i32 [ %17, %bb13.lr.ph.split.new ], [ %_0.sroa.0.0.i.1, %bb13 ]
  %curr_val.sroa.0.127 = phi float [ %16, %bb13.lr.ph.split.new ], [ %next_val.1, %bb13 ]
  %niter63 = phi i64 [ 0, %bb13.lr.ph.split.new ], [ %niter63.next.1, %bb13 ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter2.sroa.0.029
  %_26 = load i32, ptr %gep, align 4, !noundef !23
  %_25 = sitofp i32 %_26 to float
  %_23 = fsub float %12, %_25
  %_22 = fsub float %curr_val.sroa.0.127, %_23
  %_29 = fmul float %_30, %_25
  %next_val = fadd float %_29, %_22
  %_33 = tail call i32 @llvm.fptosi.sat.i32.f32(float %next_val)
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_33, i32 %res.sroa.0.028)
  %32 = add nuw nsw i64 %iter2.sroa.0.029, 2
  %gep.1 = getelementptr i32, ptr %arr, i64 %iter2.sroa.0.029
  %_26.1 = load i32, ptr %gep.1, align 4, !noundef !23
  %_25.1 = sitofp i32 %_26.1 to float
  %_23.1 = fsub float %12, %_25.1
  %_22.1 = fsub float %next_val, %_23.1
  %_29.1 = fmul float %_30, %_25.1
  %next_val.1 = fadd float %_29.1, %_22.1
  %_33.1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %next_val.1)
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %_33.1, i32 %_0.sroa.0.0.i)
  %niter63.next.1 = add i64 %niter63, 2
  %niter63.ncmp.1 = icmp eq i64 %niter63.next.1, %unroll_iter62
  br i1 %niter63.ncmp.1, label %bb14.loopexit.unr-lcssa, label %bb13

panic:                                            ; preds = %bb13.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ac209229c66f1d4bfa4fddbc0efc049c) #18
  unreachable

panic8:                                           ; preds = %bb9.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a8bd7a4db8d8d7ab6837f5987b8faee3) #18
  unreachable
}
