define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n1, i32 noundef %n2) unnamed_addr #1 {
start:
  %arr2 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  store i64 %1, ptr %arr2, align 8
  %2 = trunc i64 %0 to i32
  %3 = trunc i64 %1 to i32
  %_8 = sitofp i32 %n1 to float
  %_11 = sitofp i32 %n2 to float
  %_623 = icmp sgt i32 %n1, 1
  %_924 = icmp sgt i32 %n2, 1
  %or.cond25 = and i1 %_623, %_924
  br i1 %or.cond25, label %bb3.preheader, label %bb17.preheader

bb3.preheader:                                    ; preds = %start
  %_6 = icmp samesign ugt i32 %n1, 2
  %_9 = icmp samesign ugt i32 %n2, 2
  %or.cond = and i1 %_6, %_9
  br i1 %or.cond, label %panic4, label %bb17.preheader.loopexit

bb17.preheader.loopexit:                          ; preds = %bb3.preheader
  %4 = lshr i64 %1, 32
  %5 = trunc nuw i64 %4 to i32
  %min.sroa.0.3 = tail call i32 @llvm.smin.i32(i32 %5, i32 %3)
  %6 = lshr i64 %0, 32
  %7 = trunc nuw i64 %6 to i32
  %max.sroa.0.3 = tail call i32 @llvm.smax.i32(i32 %7, i32 %2)
  br label %bb17.preheader

bb17.preheader:                                   ; preds = %bb17.preheader.loopexit, %start
  %i.sroa.0.0.lcssa = phi float [ 1.000000e+00, %start ], [ 2.000000e+00, %bb17.preheader.loopexit ]
  %max.sroa.0.0.lcssa = phi i32 [ %2, %start ], [ %max.sroa.0.3, %bb17.preheader.loopexit ]
  %min.sroa.0.0.lcssa = phi i32 [ %3, %start ], [ %min.sroa.0.3, %bb17.preheader.loopexit ]
  %_3033 = fcmp olt float %i.sroa.0.0.lcssa, %_8
  br i1 %_3033, label %bb18, label %bb25.preheader

bb25.preheader:                                   ; preds = %bb19, %bb17.preheader
  %i.sroa.0.1.lcssa = phi float [ %i.sroa.0.0.lcssa, %bb17.preheader ], [ %11, %bb19 ]
  %max.sroa.0.1.lcssa = phi i32 [ %max.sroa.0.0.lcssa, %bb17.preheader ], [ %max.sroa.0.2, %bb19 ]
  %_4238 = fcmp olt float %i.sroa.0.1.lcssa, %_11
  br i1 %_4238, label %bb26, label %bb32

bb18:                                             ; preds = %bb17.preheader, %bb19
  %max.sroa.0.135 = phi i32 [ %max.sroa.0.2, %bb19 ], [ %max.sroa.0.0.lcssa, %bb17.preheader ]
  %i.sroa.0.134 = phi float [ %11, %bb19 ], [ %i.sroa.0.0.lcssa, %bb17.preheader ]
  %_34 = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.sroa.0.134)
  %_36 = icmp ult i64 %_34, 2
  br i1 %_36, label %bb19, label %panic2

bb32:                                             ; preds = %bb27, %bb25.preheader
  %min.sroa.0.1.lcssa = phi i32 [ %min.sroa.0.0.lcssa, %bb25.preheader ], [ %min.sroa.0.2, %bb27 ]
  %_0 = mul i32 %min.sroa.0.1.lcssa, %max.sroa.0.1.lcssa
  ret i32 %_0

bb26:                                             ; preds = %bb25.preheader, %bb27
  %min.sroa.0.140 = phi i32 [ %min.sroa.0.2, %bb27 ], [ %min.sroa.0.0.lcssa, %bb25.preheader ]
  %i.sroa.0.239 = phi float [ %9, %bb27 ], [ %i.sroa.0.1.lcssa, %bb25.preheader ]
  %_47 = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.sroa.0.239)
  %_49 = icmp ult i64 %_47, 2
  br i1 %_49, label %bb27, label %panic

bb27:                                             ; preds = %bb26
  %8 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_47
  %_46 = load i32, ptr %8, align 4, !noundef !23
  %min.sroa.0.2 = tail call i32 @llvm.smin.i32(i32 %_46, i32 %min.sroa.0.140)
  %9 = fadd float %i.sroa.0.239, 1.000000e+00
  %_42 = fcmp olt float %9, %_11
  br i1 %_42, label %bb26, label %bb32

panic:                                            ; preds = %bb26
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_47, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f915f4c3cc7fcee1820958dd08eef377) #18
  unreachable

bb19:                                             ; preds = %bb18
  %10 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_34
  %_33 = load i32, ptr %10, align 4, !noundef !23
  %max.sroa.0.2 = tail call i32 @llvm.smax.i32(i32 %_33, i32 %max.sroa.0.135)
  %11 = fadd float %i.sroa.0.134, 1.000000e+00
  %_30 = fcmp olt float %11, %_8
  br i1 %_30, label %bb18, label %bb25.preheader

panic2:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_34, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_06d13958b4bfed0a0f933deb020bccba) #18
  unreachable

panic4:                                           ; preds = %bb3.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fca4eea08d7f81f30300d74c1fcb7c3f) #18
  unreachable
}
