define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_6 = sext i32 %n to i64
  %_0.i.i.i41.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i41.not, label %bb9.preheader, label %bb7

bb9.preheader:                                    ; preds = %bb7, %bb7.1, %bb7.2, %start
  %cum_sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %_12, %bb7 ], [ %9, %bb7.1 ], [ %11, %bb7.2 ]
  %_0.i.i.i1846.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i1846.not, label %bb12, label %bb13

bb12:                                             ; preds = %bb13, %bb13.1, %bb13.2, %bb9.preheader
  %curr_val.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb9.preheader ], [ %3, %bb13 ], [ %5, %bb13.1 ], [ %7, %bb13.2 ]
  %1 = tail call i32 @llvm.fptosi.sat.i32.f32(float %curr_val.sroa.0.0.lcssa)
  %_0.i.i.i2652 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i2652, label %bb17.lr.ph, label %bb18

bb17.lr.ph:                                       ; preds = %bb12
  %_45 = add i32 %n, -1
  %_44 = sitofp i32 %_45 to float
  %2 = and i32 %n, -2
  %.not.not = icmp eq i32 %2, 2
  %invariant.gep = getelementptr i8, ptr %arr, i64 -4
  br label %bb17

bb17:                                             ; preds = %bb17.lr.ph, %bb19
  %spec.select3458 = phi i64 [ 2, %bb17.lr.ph ], [ %spec.select34, %bb19 ]
  %curr_val.sroa.0.157 = phi float [ %curr_val.sroa.0.0.lcssa, %bb17.lr.ph ], [ %next_val, %bb19 ]
  %res.sroa.0.056 = phi i32 [ %1, %bb17.lr.ph ], [ %_0.sroa.0.0.i, %bb19 ]
  %iter2.sroa.0.055 = phi i64 [ 1, %bb17.lr.ph ], [ %spec.select3458, %bb19 ]
  br i1 %.not.not, label %bb19, label %panic

bb18:                                             ; preds = %bb19, %bb12
  %res.sroa.0.0.lcssa = phi i32 [ %1, %bb12 ], [ %_0.sroa.0.0.i, %bb19 ]
  ret i32 %res.sroa.0.0.lcssa

bb19:                                             ; preds = %bb17
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter2.sroa.0.055
  %_40 = load i32, ptr %gep, align 4, !noundef !37
  %_39 = sitofp i32 %_40 to float
  %_37 = fsub float %cum_sum.sroa.0.0.lcssa, %_39
  %_36 = fsub float %curr_val.sroa.0.157, %_37
  %_43 = fmul float %_44, %_39
  %next_val = fadd float %_43, %_36
  %_47 = tail call i32 @llvm.fptosi.sat.i32.f32(float %next_val)
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_47, i32 %res.sroa.0.056)
  %_0.i.i.i26 = icmp ult i64 %spec.select3458, %_6
  %_0.i1.i.i29 = zext i1 %_0.i.i.i26 to i64
  %spec.select34 = add nuw i64 %spec.select3458, %_0.i1.i.i29
  br i1 %_0.i.i.i26, label %bb17, label %bb18

panic:                                            ; preds = %bb17
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ac209229c66f1d4bfa4fddbc0efc049c) #24
  unreachable

bb13:                                             ; preds = %bb9.preheader
  %_25 = load i32, ptr %arr, align 8, !noundef !37
  %_24 = sitofp i32 %_25 to float
  %_22 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %_24)
  %3 = fadd float %_22, 0.000000e+00
  %_0.i.i.i18.not = icmp eq i32 %n, 1
  %spec.select32 = select i1 %_0.i.i.i18.not, i64 1, i64 2
  br i1 %_0.i.i.i18.not, label %bb12, label %bb13.1

bb13.1:                                           ; preds = %bb13
  %4 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_25.1 = load i32, ptr %4, align 4, !noundef !37
  %_24.1 = sitofp i32 %_25.1 to float
  %5 = fadd float %3, %_24.1
  %_0.i.i.i18.1 = icmp ult i64 %spec.select32, %_6
  br i1 %_0.i.i.i18.1, label %bb11.2, label %bb12

bb11.2:                                           ; preds = %bb13.1
  br i1 %_0.i.i.i18.not, label %bb13.2, label %panic5

bb13.2:                                           ; preds = %bb11.2
  %_23.2 = uitofp nneg i64 %spec.select32 to float
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select32
  %_25.2 = load i32, ptr %6, align 4, !noundef !37
  %_24.2 = sitofp i32 %_25.2 to float
  %_22.2 = fmul float %_23.2, %_24.2
  %7 = fadd float %5, %_22.2
  br label %bb12

panic5:                                           ; preds = %bb11.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %spec.select32, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ebec3a18beefcc612c5d4862f64e0756) #24
  unreachable

bb7:                                              ; preds = %start
  %_13 = load i32, ptr %arr, align 8, !noundef !37
  %_12 = sitofp i32 %_13 to float
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i64 1, i64 2
  br i1 %_0.i.i.i.not, label %bb9.preheader, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %8 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13.1 = load i32, ptr %8, align 4, !noundef !37
  %_12.1 = sitofp i32 %_13.1 to float
  %9 = fadd float %_12, %_12.1
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_6
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb9.preheader

bb5.2:                                            ; preds = %bb7.1
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic7

bb7.2:                                            ; preds = %bb5.2
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select
  %_13.2 = load i32, ptr %10, align 4, !noundef !37
  %_12.2 = sitofp i32 %_13.2 to float
  %11 = fadd float %9, %_12.2
  br label %bb9.preheader

panic7:                                           ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %spec.select, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a8bd7a4db8d8d7ab6837f5987b8faee3) #24
  unreachable
}
