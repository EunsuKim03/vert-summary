define noundef i32 @f_gold(i64 %0, i32 noundef %n, float noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_6 = add i32 %n, -1
  %_4.not6 = icmp slt i32 %_6, 0
  br i1 %_4.not6, label %bb9, label %bb2

bb2:                                              ; preds = %start, %bb6
  %i.sroa.0.07 = phi i32 [ %3, %bb6 ], [ 0, %start ]
  %_9 = sext i32 %i.sroa.0.07 to i64
  %_11 = icmp ult i32 %i.sroa.0.07, 2
  br i1 %_11, label %bb3, label %panic

bb9:                                              ; preds = %bb3, %bb6, %start
  %i.sroa.0.1 = phi i32 [ -1, %start ], [ %i.sroa.0.07, %bb3 ], [ -1, %bb6 ]
  ret i32 %i.sroa.0.1

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw float, ptr %arr, i64 %_9
  %_8 = load float, ptr %1, align 4, !noundef !37
  %_7 = fcmp oeq float %_8, %x
  br i1 %_7, label %bb9, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_9, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_908328f7c513484253731713cced1acb) #24
  unreachable

bb6:                                              ; preds = %bb3
  %_14 = fsub float %_8, %x
  %2 = tail call noundef float @llvm.fabs.f32(float %_14)
  %_12 = tail call i32 @llvm.fptosi.sat.i32.f32(float %2)
  %3 = add i32 %_12, %i.sroa.0.07
  %_4.not = icmp sgt i32 %3, %_6
  br i1 %_4.not, label %bb9, label %bb2
}
