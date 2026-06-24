define noundef i32 @f_gold(i64 %0, float noundef %n, float noundef %k) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = fcmp ogt float %k, %n
  %1 = trunc i64 %0 to i32
  %2 = bitcast i32 %1 to float
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = bitcast i32 %4 to float
  br i1 %_4, label %bb11, label %bb2

bb2:                                              ; preds = %start
  %iter2 = tail call i64 @llvm.fptoui.sat.i64.f32(float %k)
  %_2718 = icmp ugt i64 %iter2, 1
  br i1 %_2718, label %bb12.preheader, label %bb13

bb12.preheader:                                   ; preds = %bb2
  %.not = icmp eq i64 %iter2, 2
  br i1 %.not, label %bb13.thread, label %panic6

bb13:                                             ; preds = %bb2
  %6 = fadd float %k, -1.000000e+00
  %iter3 = tail call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_3121 = icmp ult i64 %iter2, %iter3
  br i1 %_3121, label %bb6, label %bb15

bb13.thread:                                      ; preds = %bb12.preheader
  %7 = fadd float %k, -1.000000e+00
  %iter333 = tail call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_312134 = icmp ult i64 %iter2, %iter333
  br i1 %_312134, label %panic, label %bb15

bb15:                                             ; preds = %bb6, %bb6.1, %bb13.thread, %bb13
  %max_end.sroa.0.0.lcssa = phi float [ %6, %bb13 ], [ %7, %bb13.thread ], [ %max_end.sroa.0.1, %bb6 ], [ %max_end.sroa.0.1.1, %bb6.1 ]
  %_26 = fsub float %max_end.sroa.0.0.lcssa, %k
  %_25 = fadd float %_26, 1.000000e+00
  %8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  br label %bb11

bb11:                                             ; preds = %start, %bb15
  %_0.sroa.0.0 = phi i32 [ %8, %bb15 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0

bb6:                                              ; preds = %bb13
  %9 = add nuw nsw i64 %iter2, 1
  %10 = getelementptr inbounds nuw float, ptr %arr, i64 %iter2
  %_16 = load float, ptr %10, align 4, !noundef !23
  %_15 = fadd float %_16, %2
  %11 = fsub float %_15, %2
  %_21 = fcmp ogt float %11, %2
  %12 = uitofp nneg i64 %iter2 to float
  %max_end.sroa.0.1 = select i1 %_21, float %12, float %6
  %max_sum.sroa.0.1 = select i1 %_21, float %11, float %2
  %exitcond31.not = icmp eq i64 %9, %iter3
  br i1 %exitcond31.not, label %bb15, label %bb14.1

panic:                                            ; preds = %bb13.thread, %bb6.1, %bb14.1
  %iter1.sroa.0.025.lcssa = phi i64 [ %9, %bb14.1 ], [ 2, %bb6.1 ], [ 2, %bb13.thread ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter1.sroa.0.025.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bc65ba668fd32d4f15fd875045799a2b) #18
  unreachable

bb14.1:                                           ; preds = %bb6
  %_17.1 = icmp eq i64 %iter2, 0
  br i1 %_17.1, label %bb6.1, label %panic

bb6.1:                                            ; preds = %bb14.1
  %13 = getelementptr inbounds nuw float, ptr %arr, i64 %9
  %_16.1 = load float, ptr %13, align 4, !noundef !23
  %_15.1 = fadd float %11, %_16.1
  %14 = fsub float %_15.1, %5
  %_21.1 = fcmp ogt float %14, %max_sum.sroa.0.1
  %15 = uitofp nneg i64 %9 to float
  %max_end.sroa.0.1.1 = select i1 %_21.1, float %15, float %max_end.sroa.0.1
  %exitcond31.1.not = icmp eq i64 %iter3, 2
  br i1 %exitcond31.1.not, label %bb15, label %panic

panic6:                                           ; preds = %bb12.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_abe69480fd7519f318a641c4aa7acf10) #18
  unreachable
}
