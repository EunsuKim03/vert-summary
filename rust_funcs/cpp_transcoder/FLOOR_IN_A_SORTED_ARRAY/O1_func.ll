define noundef i32 @f_gold(i64 %0, float noundef %n, float noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = tail call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_6 = add i64 %_7, -1
  %_8 = icmp ult i64 %_6, 2
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw float, ptr %arr, i64 %_6
  %_5 = load float, ptr %1, align 4, !noundef !37
  %_4 = fcmp ult float %x, %_5
  br i1 %_4, label %bb3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_6, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ddddc5236d579213af3d11c3e4609488) #24
  unreachable

bb3:                                              ; preds = %bb1
  %_11 = load float, ptr %arr, align 8, !noundef !37
  %_10 = fcmp olt float %x, %_11
  br i1 %_10, label %bb15, label %bb7

bb2:                                              ; preds = %bb1
  %_9 = fadd float %n, -1.000000e+00
  %2 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_9)
  br label %bb15

bb7:                                              ; preds = %bb3, %bb12
  %iter.sroa.0.0 = phi i64 [ %spec.select, %bb12 ], [ 1, %bb3 ]
  %_0.i.i.i = icmp ult i64 %iter.sroa.0.0, %_7
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb10, label %bb15

bb10:                                             ; preds = %bb7
  %_21 = icmp ult i64 %iter.sroa.0.0, 2
  br i1 %_21, label %bb12, label %panic1

bb15:                                             ; preds = %bb7, %bb3, %bb2, %bb13
  %_0.sroa.0.0 = phi i32 [ %2, %bb2 ], [ %5, %bb13 ], [ -1, %bb3 ], [ -1, %bb7 ]
  ret i32 %_0.sroa.0.0

bb12:                                             ; preds = %bb10
  %3 = getelementptr inbounds nuw float, ptr %arr, i64 %iter.sroa.0.0
  %_20 = load float, ptr %3, align 4, !noundef !37
  %_19 = fcmp ogt float %_20, %x
  br i1 %_19, label %bb13, label %bb7

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_29d946bca06e18c6f1736af1a776722b) #24
  unreachable

bb13:                                             ; preds = %bb12
  %4 = trunc nuw i64 %iter.sroa.0.0 to i32
  %5 = add nsw i32 %4, -1
  br label %bb15
}
