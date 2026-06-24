define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter2 = sext i32 %n to i64
  %_1913.not = icmp eq i32 %n, 0
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %_1913.not, label %bb8, label %bb9.preheader

bb9.preheader:                                    ; preds = %start
  %4 = add nsw i64 %iter2, -3
  %.not = icmp ult i64 %4, -2
  br i1 %.not, label %panic5, label %bb9.preheader27

bb9.preheader27:                                  ; preds = %bb9.preheader
  %5 = icmp ult i32 %n, 4
  br i1 %5, label %bb9.epil.preheader, label %bb9.preheader27.new

bb9.preheader27.new:                              ; preds = %bb9.preheader27
  %invariant.gep = getelementptr inbounds i8, ptr %arr, i64 4
  %invariant.gep32 = getelementptr inbounds i8, ptr %arr, i64 8
  %invariant.gep34 = getelementptr inbounds i8, ptr %arr, i64 12
  br label %bb9

bb9.epil.preheader:                               ; preds = %bb9.preheader27, %bb9
  %sum.sroa.0.015.unr = phi float [ 0.000000e+00, %bb9.preheader27 ], [ %15, %bb9 ]
  %iter.sroa.0.014.unr = phi i64 [ 0, %bb9.preheader27 ], [ %14, %bb9 ]
  br label %bb9.epil

bb9.epil:                                         ; preds = %bb9.epil, %bb9.epil.preheader
  %sum.sroa.0.015.epil = phi float [ %8, %bb9.epil ], [ %sum.sroa.0.015.unr, %bb9.epil.preheader ]
  %iter.sroa.0.014.epil = phi i64 [ %6, %bb9.epil ], [ %iter.sroa.0.014.unr, %bb9.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb9.epil ], [ 0, %bb9.epil.preheader ]
  %6 = add nuw nsw i64 %iter.sroa.0.014.epil, 1
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.014.epil
  %_9.epil = load i32, ptr %7, align 4, !noundef !23
  %_8.epil = sitofp i32 %_9.epil to float
  %8 = fadd float %sum.sroa.0.015.epil, %_8.epil
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %iter2
  br i1 %epil.iter.cmp.not, label %bb11.preheader, label %bb9.epil, !llvm.loop !1031

bb11.preheader:                                   ; preds = %bb9.epil
  %_13 = sitofp i32 %1 to float
  %9 = fsub float %8, %_13
  %_16 = fcmp oeq float %9, 0.000000e+00
  br i1 %_16, label %bb8, label %bb7

bb9:                                              ; preds = %bb9, %bb9.preheader27.new
  %sum.sroa.0.015 = phi float [ 0.000000e+00, %bb9.preheader27.new ], [ %15, %bb9 ]
  %iter.sroa.0.014 = phi i64 [ 0, %bb9.preheader27.new ], [ %14, %bb9 ]
  %niter = phi i64 [ 0, %bb9.preheader27.new ], [ %niter.next.3, %bb9 ]
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.014
  %_9 = load i32, ptr %10, align 8, !noundef !23
  %_8 = sitofp i32 %_9 to float
  %11 = fadd float %sum.sroa.0.015, %_8
  %gep = getelementptr inbounds i32, ptr %invariant.gep, i64 %iter.sroa.0.014
  %_9.1 = load i32, ptr %gep, align 4, !noundef !23
  %_8.1 = sitofp i32 %_9.1 to float
  %12 = fadd float %11, %_8.1
  %gep33 = getelementptr inbounds i32, ptr %invariant.gep32, i64 %iter.sroa.0.014
  %_9.2 = load i32, ptr %gep33, align 8, !noundef !23
  %_8.2 = sitofp i32 %_9.2 to float
  %13 = fadd float %12, %_8.2
  %14 = add nuw nsw i64 %iter.sroa.0.014, 4
  %gep35 = getelementptr inbounds i32, ptr %invariant.gep34, i64 %iter.sroa.0.014
  %_9.3 = load i32, ptr %gep35, align 4, !noundef !23
  %_8.3 = sitofp i32 %_9.3 to float
  %15 = fadd float %13, %_8.3
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %bb9.epil.preheader, label %bb9

bb8:                                              ; preds = %start, %bb11.preheader, %bb11.1, %bb7, %bb7.1
  %_0.sroa.0.0 = phi i32 [ -1, %bb7.1 ], [ -1, %bb7 ], [ 0, %bb11.preheader ], [ 1, %bb11.1 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb7.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6d9cd720c19f4d06f46392d83bdc7107) #18
  unreachable

bb7:                                              ; preds = %bb11.preheader
  %exitcond24.not = icmp eq i32 %n, 1
  br i1 %exitcond24.not, label %bb8, label %bb11.1

bb11.1:                                           ; preds = %bb7
  %_13.1 = sitofp i32 %3 to float
  %16 = fsub float %9, %_13.1
  %_16.1 = fcmp oeq float %16, %_13
  br i1 %_16.1, label %bb8, label %bb7.1

bb7.1:                                            ; preds = %bb11.1
  %exitcond24.1.not = icmp eq i32 %n, 2
  br i1 %exitcond24.1.not, label %bb8, label %panic

panic5:                                           ; preds = %bb9.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f68701667313bd84a0056563a6532cb9) #18
  unreachable
}
