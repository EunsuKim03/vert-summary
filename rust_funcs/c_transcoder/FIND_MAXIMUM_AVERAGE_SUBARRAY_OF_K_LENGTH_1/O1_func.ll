define noundef i32 @f_gold(i64 %0, float noundef %n, float noundef %k) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = fcmp ogt float %k, %n
  br i1 %_4, label %bb20, label %bb2

bb2:                                              ; preds = %start
  %1 = load float, ptr %arr, align 8, !noundef !37
  %_8 = tail call i64 @llvm.fptoui.sat.i64.f32(float %k)
  %_0.i.i.i30 = icmp ugt i64 %_8, 1
  br i1 %_0.i.i.i30, label %bb9, label %bb8

bb8:                                              ; preds = %bb9, %bb2
  %sum.sroa.0.0.lcssa = phi float [ %1, %bb2 ], [ %16, %bb9 ]
  %2 = fadd float %k, -1.000000e+00
  %_19 = tail call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_0.i.i.i1636 = icmp ult i64 %_8, %_19
  br i1 %_0.i.i.i1636, label %bb13.preheader, label %bb14

bb13.preheader:                                   ; preds = %bb8
  %spec.select2238 = add nuw i64 %_8, 1
  %_27 = icmp ult i64 %_8, 2
  br i1 %_27, label %bb16, label %panic

bb14:                                             ; preds = %bb16, %bb16.1, %bb16.2, %bb8
  %max_end.sroa.0.0.lcssa = phi float [ %2, %bb8 ], [ %max_end.sroa.0.1, %bb16 ], [ %max_end.sroa.0.1.1, %bb16.1 ], [ %max_end.sroa.0.1.2, %bb16.2 ]
  %_36 = fsub float %max_end.sroa.0.0.lcssa, %k
  %_35 = fadd float %_36, 1.000000e+00
  %3 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_35)
  br label %bb20

bb20:                                             ; preds = %start, %bb14
  %_0.sroa.0.0 = phi i32 [ %3, %bb14 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb13.2, %bb13.1, %bb13.preheader
  %iter1.sroa.0.039.lcssa = phi i64 [ %_8, %bb13.preheader ], [ %spec.select2238, %bb13.1 ], [ %spec.select22, %bb13.2 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter1.sroa.0.039.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bc65ba668fd32d4f15fd875045799a2b) #24
  unreachable

bb16:                                             ; preds = %bb13.preheader
  %4 = getelementptr inbounds nuw float, ptr %arr, i64 %_8
  %_26 = load float, ptr %4, align 4, !noundef !37
  %_25 = fadd float %sum.sroa.0.0.lcssa, %_26
  %_28 = load float, ptr %arr, align 8, !noundef !37
  %5 = fsub float %_25, %_28
  %_31 = fcmp ogt float %5, %sum.sroa.0.0.lcssa
  %6 = uitofp nneg i64 %_8 to float
  %max_end.sroa.0.1 = select i1 %_31, float %6, float %2
  %max_sum.sroa.0.1 = select i1 %_31, float %5, float %sum.sroa.0.0.lcssa
  %_0.i.i.i16 = icmp ult i64 %spec.select2238, %_19
  %_0.i1.i.i19 = zext i1 %_0.i.i.i16 to i64
  %spec.select22 = add nuw nsw i64 %spec.select2238, %_0.i1.i.i19
  br i1 %_0.i.i.i16, label %bb13.1, label %bb14

bb13.1:                                           ; preds = %bb16
  %_27.1 = icmp eq i64 %_8, 0
  br i1 %_27.1, label %bb16.1, label %panic

bb16.1:                                           ; preds = %bb13.1
  %7 = getelementptr inbounds nuw float, ptr %arr, i64 %spec.select2238
  %_26.1 = load float, ptr %7, align 4, !noundef !37
  %_25.1 = fadd float %5, %_26.1
  %8 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_28.1 = load float, ptr %8, align 4, !noundef !37
  %9 = fsub float %_25.1, %_28.1
  %_31.1 = fcmp ogt float %9, %max_sum.sroa.0.1
  %10 = uitofp nneg i64 %spec.select2238 to float
  %max_end.sroa.0.1.1 = select i1 %_31.1, float %10, float %max_end.sroa.0.1
  %max_sum.sroa.0.1.1 = select i1 %_31.1, float %9, float %max_sum.sroa.0.1
  %_0.i.i.i16.1 = icmp ult i64 %spec.select22, %_19
  br i1 %_0.i.i.i16.1, label %bb13.2, label %bb14

bb13.2:                                           ; preds = %bb16.1
  %_27.2 = icmp ult i64 %spec.select22, 2
  br i1 %_27.2, label %bb15.2, label %panic

bb15.2:                                           ; preds = %bb13.2
  %_29.2 = sub nuw nsw i64 %spec.select22, %_8
  %_30.2 = icmp ult i64 %_29.2, 2
  br i1 %_30.2, label %bb16.2, label %panic2

bb16.2:                                           ; preds = %bb15.2
  %11 = getelementptr inbounds nuw float, ptr %arr, i64 %spec.select22
  %_26.2 = load float, ptr %11, align 4, !noundef !37
  %_25.2 = fadd float %9, %_26.2
  %12 = getelementptr inbounds nuw float, ptr %arr, i64 %_29.2
  %_28.2 = load float, ptr %12, align 4, !noundef !37
  %13 = fsub float %_25.2, %_28.2
  %_31.2 = fcmp ogt float %13, %max_sum.sroa.0.1.1
  %14 = uitofp nneg i64 %spec.select22 to float
  %max_end.sroa.0.1.2 = select i1 %_31.2, float %14, float %max_end.sroa.0.1.1
  br label %bb14

panic2:                                           ; preds = %bb15.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_29.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f437c56f4cd97df68b372f933baadfde) #24
  unreachable

bb9:                                              ; preds = %bb2
  %15 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_14 = load float, ptr %15, align 4, !noundef !37
  %16 = fadd float %1, %_14
  %_0.i.i.i.not = icmp eq i64 %_8, 2
  br i1 %_0.i.i.i.not, label %bb8, label %panic4

panic4:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_abe69480fd7519f318a641c4aa7acf10) #24
  unreachable
}
