define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %k) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_8 = sitofp i32 %n to float
  %_67 = icmp sgt i32 %n, 0
  br i1 %_67, label %bb2.lr.ph, label %bb7

bb2.lr.ph:                                        ; preds = %start
  %_22 = sitofp i32 %k to float
  br label %bb2

bb7:                                              ; preds = %bb6, %start
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_3cc4ab2e96aee8eb167dc6f61e3ddf68, ptr noundef nonnull inttoptr (i64 47 to ptr))
  br label %bb9

bb2:                                              ; preds = %bb2.lr.ph, %bb6
  %i.sroa.0.08 = phi float [ 0.000000e+00, %bb2.lr.ph ], [ %4, %bb6 ]
  %_11 = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.sroa.0.08)
  %_13 = icmp ult i64 %_11, 2
  br i1 %_13, label %bb3, label %panic

bb9:                                              ; preds = %bb4, %bb7
  %_0.sroa.0.0 = phi i32 [ %2, %bb4 ], [ -1, %bb7 ]
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_11
  %_10 = load i32, ptr %1, align 4, !noundef !23
  %_9 = icmp eq i32 %_10, %x
  br i1 %_9, label %bb4, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1be1fcf56e1c79dc8aee773458df9870) #18
  unreachable

bb4:                                              ; preds = %bb3
  %2 = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.sroa.0.08)
  br label %bb9

bb6:                                              ; preds = %bb3
  %_18 = sub i32 %_10, %x
  %_17 = sitofp i32 %_18 to float
  %_16 = fdiv float %_17, %_22
  %3 = tail call float @llvm.maxnum.f32(float %_16, float 1.000000e+00)
  %4 = fadd float %i.sroa.0.08, %3
  %_6 = fcmp olt float %4, %_8
  br i1 %_6, label %bb2, label %bb7
}
